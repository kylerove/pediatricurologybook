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

## Geographic Representation

<img src="/assets/site-img/contributor-map.svg" class="img-fluid" style="width:100%" alt="Geographic representation of Pediatric Urology Book contributors">

We feel incredibly lucky to have worked with over 130 contributors from around the world, sharing their expertise through their contributions to the book. Some numbers to share with our readers:

- {{ site.data.contributors.size }} contributors
- Authors are from 23 different countries, spanning 6 continents
- 63 chapters _(5 coming soon)_
- 370 figures
- 82 tables
- 2,699 references (!)

## Contributors By Section

{% assign the_translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sections = site.data.sections | sort: "number" %}
{% for section in the_sections %}
    {% assign the_title = section.titles | where: "language",site.active_lang | first %}
    {% assign the_section_number = section.number | floor %}
    {% if the_section_number != 0 %}

### <span>{{ the_section_number }}</span> {{ the_title.title }}
---------------

    {% assign section_chapters = site.chapters | where: "section", forloop.index0 | sort: "sort-key" %}
    {% include contributors-list.html chapters=section_chapters translation=the_translation %}
    
    {% endif %}
{% endfor %}