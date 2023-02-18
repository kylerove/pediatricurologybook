---
layout: contributors
title: Contributors
description: List of all worldwide contributors to Pediatric Urology Book.
thumbnail: contributors.png
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
{% assign the_sections = site.data.sections | sort: "number" %}
{% for section in the_sections %}
  {% assign the_title = section.titles | where: "language",site.active_lang | first %}
  {% if section.number != 0 %}

### {{ translation.section }} {{ section.number }}: {{ the_title.title }}

  {% endif %}
{% assign the_contributors = site.data.contributors | where: "section",section.number | sort: "last" %}
{% include contributors-list.html contributors=the_contributors %}

{% endfor %}