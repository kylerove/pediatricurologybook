---
layout: contributors
title: Contributors
permalink: /contributors/
lang: en
breadcrumbs:
  - 
    title: Home
    permalink: /
  - 
    title: Contributors
    permalink: /contributors/
toc: true
---

# Contributors

## Geographic representation

<img src="/assets/site-img/contributor-map.svg" class="img-fluid" alt="Geographic representation of Pediatric Urology Book contributors">

## Contributors By Section

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_list = site.data.sections | where: "language",site.active_lang | first %}
{% for section in the_list.sections %}

### {{ translation.section }} {{section.number}}: {{ section.name }}

{% assign the_contributors = site.data.contributors | where: "section",section.number | sort: "last" %}
{% include contributors-list.html contributors=the_contributors %}

{% endfor %}