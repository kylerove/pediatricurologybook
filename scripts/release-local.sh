#!/usr/bin/env bash

set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
SITE_DIR="${SITE_DIR:-/Users/kylerove/Documents/pub-all/pediatricurologybook-site}"
DEPLOY_HOST="${DEPLOY_HOST:-pediatricurologybook-production}"
REMOTE_SITE_DIR="${REMOTE_SITE_DIR:-/var/www/pediatricurologybook.com}"
SITE_URL="${SITE_URL:-https://pediatricurologybook.com}"
ASSUME_YES=0
SKIP_DEPLOY=0

usage() {
  sed -n '2,34p' "$0" | sed -n 's/^# //p'
}

# Build, validate, publish, and deploy PediatricUrologyBook.com.
#
# Usage:
#   scripts/release-local.sh [--yes] [--skip-deploy]
#
# Options:
#   --yes          Skip the interactive publish confirmation.
#   --skip-deploy  Build and push the site repository without updating production.
#   --help         Show this help text.
#
# Environment overrides:
#   SITE_DIR         Local checkout of kylerove/pediatricurologybook-site.
#   DEPLOY_HOST      SSH destination for the production server.
#   REMOTE_SITE_DIR  Production checkout path.
#   SITE_URL         Public URL used for health checks.

while [[ $# -gt 0 ]]; do
  case "$1" in
    --yes)
      ASSUME_YES=1
      ;;
    --skip-deploy)
      SKIP_DEPLOY=1
      ;;
    --help|-h)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

die() {
  echo "release-local: $*" >&2
  exit 1
}

require_command() {
  command -v "$1" >/dev/null 2>&1 || die "required command not found: $1"
}

canonical_dir() {
  (cd "$1" 2>/dev/null && pwd -P) || return 1
}

require_origin() {
  local repo_dir="$1"
  local expected_repo="$2"
  local origin_url
  origin_url="$(git -C "$repo_dir" remote get-url origin)"
  case "$origin_url" in
    "git@github.com:${expected_repo}.git"|"https://github.com/${expected_repo}.git"|"https://github.com/${expected_repo}")
      ;;
    *)
      die "unexpected origin for ${repo_dir}: ${origin_url}"
      ;;
  esac
}

require_clean_branch() {
  local repo_dir="$1"
  local branch="$2"
  local current_branch
  current_branch="$(git -C "$repo_dir" branch --show-current)"
  [[ "$current_branch" == "$branch" ]] || die "${repo_dir} must be on ${branch}, not ${current_branch}"
  [[ -z "$(git -C "$repo_dir" status --porcelain)" ]] || die "${repo_dir} has uncommitted or untracked files"
}

require_command git
require_command rbenv
require_command rsync
require_command curl
require_command ssh
require_command find
require_command grep

[[ -f "$SOURCE_DIR/.ruby-version" ]] || die "missing ${SOURCE_DIR}/.ruby-version"
RUBY_VERSION="$(tr -d '[:space:]' < "$SOURCE_DIR/.ruby-version")"
[[ -n "$RUBY_VERSION" ]] || die ".ruby-version is empty"

SITE_DIR="$(canonical_dir "$SITE_DIR")" || die "site checkout does not exist: $SITE_DIR"
[[ "$SOURCE_DIR" != "$SITE_DIR" ]] || die "source and site directories must differ"
[[ "$(basename "$SITE_DIR")" == "pediatricurologybook-site" ]] || die "refusing unexpected site directory: $SITE_DIR"
[[ "$REMOTE_SITE_DIR" == /* && "$REMOTE_SITE_DIR" != "/" ]] || die "REMOTE_SITE_DIR must be a non-root absolute path"

[[ "$(git -C "$SOURCE_DIR" rev-parse --show-toplevel)" == "$SOURCE_DIR" ]] || die "source is not a Git toplevel"
[[ "$(git -C "$SITE_DIR" rev-parse --show-toplevel)" == "$SITE_DIR" ]] || die "site is not a Git toplevel"
require_origin "$SOURCE_DIR" "kylerove/pediatricurologybook"
require_origin "$SITE_DIR" "kylerove/pediatricurologybook-site"
require_clean_branch "$SOURCE_DIR" master
require_clean_branch "$SITE_DIR" main
cd "$SOURCE_DIR"

git -C "$SOURCE_DIR" fetch origin --prune
git -C "$SITE_DIR" fetch origin --prune
[[ "$(git -C "$SOURCE_DIR" rev-parse HEAD)" == "$(git -C "$SOURCE_DIR" rev-parse origin/master)" ]] || die "source HEAD is not current origin/master"
[[ "$(git -C "$SITE_DIR" rev-parse HEAD)" == "$(git -C "$SITE_DIR" rev-parse origin/main)" ]] || die "site HEAD is not current origin/main"

[[ -n "$(git -C "$SITE_DIR" config user.name || true)" ]] || die "site repository has no git user.name"
[[ -n "$(git -C "$SITE_DIR" config user.email || true)" ]] || die "site repository has no git user.email"

RBENV_VERSION="$RUBY_VERSION" rbenv exec ruby -e 'abort "Ruby version mismatch" unless RUBY_VERSION == ENV.fetch("RBENV_VERSION")'
RBENV_VERSION="$RUBY_VERSION" rbenv exec bundle _2.3.19_ check

while IFS= read -r localized_page; do
  page_stem="${localized_page%.markdown}"
  expected_language="${page_stem##*-}"
  case "$expected_language" in
    en|es|fr|pt|zh)
      page_language="$(awk -F: '$1 == "lang" { gsub(/[[:space:]"\047]/, "", $2); print $2; exit }' "$localized_page")"
      [[ "$page_language" == "$expected_language" ]] || die "language metadata mismatch in ${localized_page}: expected=${expected_language}, actual=${page_language:-missing}"
      ;;
  esac
done < <(find "$SOURCE_DIR" -type f -name '*-??.markdown' -not -path '*/.git/*' -print)

for language in en es fr pt zh; do
  while IFS= read -r chapter_file; do
    chapter_language="$(awk -F: '$1 == "lang" { gsub(/[[:space:]"\047]/, "", $2); print $2; exit }' "$chapter_file")"
    [[ "$chapter_language" == "$language" ]] || die "language metadata mismatch in ${chapter_file}: expected=${language}, actual=${chapter_language:-missing}"
  done < <(find "$SOURCE_DIR/_chapters/$language" -type f -name '*.md' -print)
done

BUILD_DIR="$(mktemp -d "${TMPDIR:-/tmp}/pediatricurologybook-build.XXXXXX")"
cleanup() {
  rm -rf -- "$BUILD_DIR"
}
trap cleanup EXIT

SOURCE_SHA="$(git -C "$SOURCE_DIR" rev-parse HEAD)"
SOURCE_SHORT="$(git -C "$SOURCE_DIR" rev-parse --short=12 HEAD)"
PREVIOUS_SITE_SHA="$(git -C "$SITE_DIR" rev-parse HEAD)"

echo "Building source ${SOURCE_SHA} into temporary directory ${BUILD_DIR}"
JEKYLL_ENV=production RBENV_VERSION="$RUBY_VERSION" \
  rbenv exec bundle _2.3.19_ exec jekyll build \
  --config "$SOURCE_DIR/_config.yml" \
  --destination "$BUILD_DIR" \
  --strict_front_matter \
  --trace

RBENV_VERSION="$RUBY_VERSION" rbenv exec bundle _2.3.19_ exec htmlproofer "$BUILD_DIR" \
  --checks Images,Scripts \
  --disable-external=true

for required_file in index.html sitemap.xml robots.txt; do
  [[ -s "$BUILD_DIR/$required_file" ]] || die "missing generated file: $required_file"
done

for language in es fr pt zh; do
  [[ -s "$BUILD_DIR/$language/index.html" ]] || die "missing generated language homepage: $language/index.html"
done

for language in en es fr pt zh; do
  homepage="$BUILD_DIR/$language/index.html"
  [[ "$language" == "en" ]] && homepage="$BUILD_DIR/index.html"
  grep -Eq "<html[^>]*lang=['\"]${language}['\"]" "$homepage" || die "incorrect HTML language on ${language} homepage"
done

for language in en es fr pt zh; do
  language_dir="$BUILD_DIR/$language"
  [[ "$language" == "en" ]] && language_dir="$BUILD_DIR"
  source_chapter_count="$(find "$SOURCE_DIR/_chapters/$language" -type f -name '*.md' | wc -l | tr -d '[:space:]')"
  built_chapter_count="$(find "$language_dir/book/chapters" -type f -name index.html | wc -l | tr -d '[:space:]')"
  [[ "$source_chapter_count" -ge 60 ]] || die "too few source chapters for ${language}: ${source_chapter_count}"
  [[ "$built_chapter_count" == "$source_chapter_count" ]] || die "chapter count mismatch for ${language}: source=${source_chapter_count}, built=${built_chapter_count}"
done

[[ ! -d "$BUILD_DIR/en" ]] || die "unexpected default-language directory: en"
for outer_language in es fr pt zh; do
  for inner_language in en es fr pt zh; do
    [[ ! -d "$BUILD_DIR/$outer_language/$inner_language" ]] || die "unexpected nested locale: ${outer_language}/${inner_language}"
  done
done

[[ -z "$(find "$BUILD_DIR" \( -name .git -o -name Gemfile -o -name Gemfile.lock -o -name .DS_Store -o -name '*.sh' \) -print -quit)" ]] || die "source-control or build files leaked into generated output"
printf '%s\n' "$SOURCE_SHA" > "$BUILD_DIR/source-revision.txt"

require_clean_branch "$SOURCE_DIR" master
require_clean_branch "$SITE_DIR" main
[[ "$(git -C "$SOURCE_DIR" rev-parse HEAD)" == "$SOURCE_SHA" ]] || die "source HEAD changed during the build"
[[ "$(git -C "$SITE_DIR" rev-parse HEAD)" == "$PREVIOUS_SITE_SHA" ]] || die "site HEAD changed during the build"
git -C "$SOURCE_DIR" fetch origin master
git -C "$SITE_DIR" fetch origin main
[[ "$SOURCE_SHA" == "$(git -C "$SOURCE_DIR" rev-parse origin/master)" ]] || die "origin/master changed during the build"
[[ "$PREVIOUS_SITE_SHA" == "$(git -C "$SITE_DIR" rev-parse origin/main)" ]] || die "origin/main changed during the build"

echo "Generated changes (first 200 entries):"
rsync -ani --delete --exclude='.git/' "$BUILD_DIR/" "$SITE_DIR/" | sed -n '1,200p'

if [[ "$ASSUME_YES" -ne 1 ]]; then
  read -r -p "Publish this build to the site repository and production? [y/N] " reply
  case "$reply" in
    y|Y|yes|YES)
      ;;
    *)
      die "release cancelled"
      ;;
  esac
fi

require_clean_branch "$SOURCE_DIR" master
require_clean_branch "$SITE_DIR" main
[[ "$(git -C "$SOURCE_DIR" rev-parse HEAD)" == "$SOURCE_SHA" ]] || die "source HEAD changed before publish"
[[ "$(git -C "$SITE_DIR" rev-parse HEAD)" == "$PREVIOUS_SITE_SHA" ]] || die "site HEAD changed before publish"
git -C "$SOURCE_DIR" fetch origin master
git -C "$SITE_DIR" fetch origin main
[[ "$SOURCE_SHA" == "$(git -C "$SOURCE_DIR" rev-parse origin/master)" ]] || die "origin/master changed before publish"
[[ "$PREVIOUS_SITE_SHA" == "$(git -C "$SITE_DIR" rev-parse origin/main)" ]] || die "origin/main changed before publish"

rsync -a --delete --stats --exclude='.git/' "$BUILD_DIR/" "$SITE_DIR/"
[[ -d "$SITE_DIR/.git" ]] || die "site .git directory was not preserved"

git -C "$SITE_DIR" diff --check
git -C "$SITE_DIR" add -A
if git -C "$SITE_DIR" diff --cached --quiet; then
  echo "Generated site is already current; no site commit required."
else
  git -C "$SITE_DIR" diff --cached --stat
  git -C "$SITE_DIR" commit \
    -m "Build site from pediatricurologybook@${SOURCE_SHORT}" \
    -m "Source: https://github.com/kylerove/pediatricurologybook/commit/${SOURCE_SHA}"
  git -C "$SITE_DIR" push origin main
fi

SITE_SHA="$(git -C "$SITE_DIR" rev-parse HEAD)"
REMOTE_SITE_SHA="$(git -C "$SITE_DIR" ls-remote origin refs/heads/main | awk '{print $1}')"
[[ "$SITE_SHA" == "$REMOTE_SITE_SHA" ]] || die "pushed site SHA verification failed"

if [[ "$SKIP_DEPLOY" -eq 1 ]]; then
  echo "Site repository published at ${SITE_SHA}; production deployment skipped."
  exit 0
fi

echo "Previous site rollback target: ${PREVIOUS_SITE_SHA}"
ssh -o BatchMode=yes -o ConnectTimeout=10 -o ServerAliveInterval=15 -o ServerAliveCountMax=3 \
  "$DEPLOY_HOST" bash -s -- "$REMOTE_SITE_DIR" "$SITE_SHA" "$SOURCE_SHA" <<'REMOTE_SCRIPT'
set -euo pipefail
remote_dir="$1"
expected_site_sha="$2"
expected_source_sha="$3"

[[ "$(git -C "$remote_dir" rev-parse --show-toplevel)" == "$remote_dir" ]]
[[ "$(git -C "$remote_dir" branch --show-current)" == "main" ]]
[[ -z "$(git -C "$remote_dir" status --porcelain)" ]]
case "$(git -C "$remote_dir" remote get-url origin)" in
  git@github.com:kylerove/pediatricurologybook-site.git|https://github.com/kylerove/pediatricurologybook-site.git)
    ;;
  *)
    echo "Unexpected production origin" >&2
    exit 1
    ;;
esac

git -C "$remote_dir" fetch origin main
git -C "$remote_dir" pull --ff-only origin main
[[ "$(git -C "$remote_dir" rev-parse HEAD)" == "$expected_site_sha" ]]
[[ "$(tr -d '[:space:]' < "$remote_dir/source-revision.txt")" == "$expected_source_sha" ]]
REMOTE_SCRIPT

for health_path in / /es/ /fr/ /pt/ /zh/; do
  health_ok=0
  for attempt in 1 2 3 4 5; do
    if curl -fsS --connect-timeout 10 --max-time 30 -H 'Cache-Control: no-cache' -o /dev/null "${SITE_URL}${health_path}?release=${SOURCE_SHA}"; then
      health_ok=1
      break
    fi
    sleep 3
  done
  [[ "$health_ok" -eq 1 ]] || die "health check failed: ${SITE_URL}${health_path}"
done

DEPLOYED_SOURCE_SHA="$(curl -fsS --connect-timeout 10 --max-time 30 -H 'Cache-Control: no-cache' "${SITE_URL}/source-revision.txt?release=${SOURCE_SHA}" | tr -d '[:space:]')"
[[ "$DEPLOYED_SOURCE_SHA" == "$SOURCE_SHA" ]] || die "production source revision mismatch"

echo "Release complete."
echo "Source: ${SOURCE_SHA}"
echo "Site:   ${SITE_SHA}"
echo "Previous site rollback target: ${PREVIOUS_SITE_SHA}"
