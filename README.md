# Pediatric Urology Book

This is the git repository page for ongoing development of a completely revamped, new version of [PediatricUrologyBook.com](https://pediatricurologybook.com). Currently a work in progress...

## Local production release

The production release script requires Ruby from `.ruby-version` through `rbenv` and clean, current checkouts of both repositories:

- Source: `kylerove/pediatricurologybook`, branch `master`
- Generated site: `kylerove/pediatricurologybook-site`, branch `main`, at `/Users/kylerove/Documents/pub-all/pediatricurologybook-site`

Run `scripts/release-local.sh` after the source commit has been pushed. The script builds and validates in a temporary directory, synchronizes the generated output into the site checkout, commits and pushes it, updates the production checkout with a fast-forward-only pull, and checks each language on the public site.

Use `scripts/release-local.sh --yes` for an unattended release after reviewing the source commit. By default, deployment uses the local SSH config alias `pediatricurologybook-production`; keep its hostname and user in `~/.ssh/config`, outside this public repository. Deployment settings can be overridden with `SITE_DIR`, `DEPLOY_HOST`, `REMOTE_SITE_DIR`, and `SITE_URL`.
