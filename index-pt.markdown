---
layout: home
title: Pagina inicial
description: Este livro on-line gratuito de Urologia Pediátrica, Edição 2.0, apresenta tópicos atualizados com frequência, como manejo de hidronefrose, técnicas de hipospádia, abordagens para infecção do trato urinário, informações sobre disfunção intestinal e da bexiga, bexiga neurogênica, oncologia urológica pediátrica e muito mais.
thumbnail: home.png
permalink: /
js: /assets/vendor/owl.carousel/owl.carousel.min.js
lang: en
breadcrumbs: 
  - 
    title: Pagina inicial
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