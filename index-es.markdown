---
layout: home
title: Inicio
description: Este libro gratuito en línea de Urología pediátrica, Edición 2.0, presenta temas que se actualizan con frecuencia, como el manejo de la hidronefrosis, técnicas de hipospadias, enfoques para la infección del tracto urinario, información sobre disfunción intestinal y vesical, vejiga neurogénica, oncología urológica pediátrica y mucho más.
thumbnail: home.png
permalink: /
js: /assets/vendor/owl.carousel/owl.carousel.min.js
lang: en
breadcrumbs: 
  - 
    title: Inicio
    permalink: /
toc: false
---

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_highlights = site.data.home-highlights | where: "language",site.active_lang | first %}
{% include home-highlights.html highlights=the_highlights %}

{% assign the_intro = site.data.home-intro | where: "language",site.active_lang | first %}
{% include home-intro.html intro=the_intro %}

{% assign the_reasons = site.data.home-reasons_to_read | where: "language",site.active_lang | first %}
{% include home-reasons_to_read.html reasons=the_reasons %}

{% include home-about_us.html %}

{% assign the_sponsors = site.data.sponsors %}
{% include home-sponsors.html sponsors=the_sponsors %}