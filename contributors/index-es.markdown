---
layout: contributors
title: Colaboradores
description: Lista de todos los contribuyentes mundiales al Libro de Urología Pediátrica.
thumbnail: contributors.png
permalink: /contributors/
lang: es
breadcrumbs:
  - 
    title: Inicio
    permalink: /
  - 
    title: Colaboradores
    permalink: /contributors/
toc: true
---

# Colaboradores

## Representación Geográfica

<img src="/assets/site-img/contributor-map.svg" class="img-fluid" style="width:100%" alt="Representación geográfica de los colaboradores del Libro de Urología Pediátrica">

Nos sentimos increíblemente afortunados de haber trabajado con más de 140 colaboradores de todo el mundo, compartiendo su experiencia a través de sus contribuciones al libro. Algunos números para compartir con nuestros lectores:

- {{ site.data.contributors.size }} colaboradores
- Los autores son de 23 países diferentes, que abarcan 6 continentes.
- 67 capítulos _(1 muy pronto)_
- 392 cifras
- 84 mesas
- 2,988 referencias (!)

## Colaboradores por Sección

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