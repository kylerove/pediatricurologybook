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

### <span>{{ section.number }}</span> {{ the_title.title }}


    {% endif %}
  
    {% assign section_chapters = site.chapters | where: "section", i | sort: "sort-key" %}
    <ul class="simple-post-list m-0 no_toc_section contributors">
    {% for chapter in section_chapters %}
        {% if chapter.chapter != 0 %}
            {% for author in chapter.authors %}
                {% assign the_contributor = site.data.contributors | where: "author-id",author.author-id | first %}
                {% include contributors-list-item.html contributor=the_contributor %}
            {% endfor %}
        {% endif %}
    {% endfor %}
    </ul>
{% endfor %}