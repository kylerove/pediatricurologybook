---
layout: home
title: Accueil
description: Ce livre d'urologie pédiatrique gratuit et en ligne, édition 2.0, propose des sujets fréquemment mis à jour tels que la prise en charge de l'hydronéphrose, les techniques chirurgicales de l'hypospadias, les approches de l'infection des voies urinaires, des informations sur la dysfonction intestino-vésicale, la vessie neurologique, l'oncologie urologique pédiatrique, et bien plus encore.
thumbnail: home-fr.png
permalink: /
js: /assets/vendor/owl.carousel/owl.carousel.min.js
lang: fr
breadcrumbs: 
  - 
    title: Accueil
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
