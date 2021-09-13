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

{% assign the_lang = site.active_lang %}
{% assign translation = site.data.translations | first %}
{% assign the_sections = site.data.sections | sort: "number" %}
{% for section in the_sections.sections %}

### wtf

### {{ translation.section }} {{ section.number }}: {{ section.the_lang }}

{% assign the_contributors = site.data.contributors | where: "section",section.number | sort: "last" %}
{% include contributors-list.html contributors=the_contributors %}

{% endfor %}