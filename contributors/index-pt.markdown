---
layout: contributors
title: Contribuidores
description: Lista de todos os colaboradores mundiais do Pediatric Urology Book.
thumbnail: contributors.png
permalink: /contributors/
lang: pt
breadcrumbs:
  - 
    title: Página Inicial
    permalink: /
  - 
    title: Contribuidores
    permalink: /contributors/
toc: true
---

# Contribuidores

## Geographic Representation

<img src="/assets/site-img/contributor-map.svg" class="img-fluid" style="width:100%" alt="Representação geográfica dos colaboradores do Livro de Urologia Pediátrica">

Sentimo-nos incrivelmente sortudos por ter trabalhado com mais de 130 colaboradores de todo o mundo, compartilhando seus conhecimentos por meio de suas contribuições para o livro. Alguns números para compartilhar com nossos leitores:

- {{ site.data.contributors.size }} contribuidores
- Os autores são de 23 países diferentes, abrangendo 6 continentes
- 63 capítulos _(5 em breve)_
- 369 figuras
- 82 tabelas
- 2,842 referências (!)

## Colaboradores por Seção

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