---
layout: home
title: Home
description: This free, online book of Pediatric Urology, Edition 2.0, features frequently-updated topics such as management of hydronephrosis, hypospadias techniques, approaches to urinary tract infection, information about bowel and bladder dysfunction, neurogenic bladder, pediatric urologic oncology, and much more.
thumbnail: home.png
permalink: /
js: /assets/vendor/owl.carousel/owl.carousel.min.js
lang: en
breadcrumbs: 
  - 
    title: Home
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