---
layout: contributors
title: Contributeurs
description: Liste de tous les contributeurs du monde entier au Pediatric Urology Book.
thumbnail: contributors-fr.png
permalink: /contributors/
lang: fr
breadcrumbs:
  - 
    title: Accueil
    permalink: /
  - 
    title: Contributeurs
    permalink: /contributors/
toc: true
---

# Contributeurs

## Représentation géographique

<img src="/assets/site-img/contributor-map.svg" class="img-fluid" style="width:100%" alt="Geographic representation of Pediatric Urology Book contributors">

Nous nous sentons incroyablement chanceux d'avoir travaillé avec plus de 140 contributeurs du monde entier, qui ont partagé leur expertise à travers leurs contributions au livre. Quelques chiffres à partager avec nos lecteurs :

- {{ site.data.contributors.size }} contributeurs
- Les auteurs proviennent de 23 pays différents, répartis sur 6 continents
- 67 chapitres _(1 à venir)_
- 392 figures
- 84 tableaux
- 2,988 références (!)

## Contributeurs par section

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
