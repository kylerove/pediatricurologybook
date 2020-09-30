---
layout: home
title: Home
permalink: /
js: /assets/vendor/rs-plugin/js/jquery.themepunch.tools.min.js
js2: /assets/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js
lang: en
breadcrumbs: 
  - 
    title: Home
    permalink: /
toc: false
---

{% assign the_highlights = site.data.home-highlights | where: "language",site.active_lang | first %}
{% include home-highlights.html highlights=the_highlights %}

{% assign the_intro = site.data.home-intro | where: "language",site.active_lang | first %}
{% include home-intro.html intro=the_intro %}

{% assign the_reasons = site.data.home-reasons_to_read | where: "language",site.active_lang | first %}
{% include home-reasons_to_read.html reasons=the_reasons %}

* * *

# Sponsors
This work is sponsored by unrestricted educational grants from [Yale University](https://www.yale.edu), [Children’s Hospital Colorado](https://www.childrenshospitalcolorado.org), & [The University of Chicago Medical Center](https://www.uchicago.edu). [Editors](/editors/) and [contributors](/contributors/) have sole authority over content and editorial decisions. Review the [conflict of interest](/conflict-of-interest/ "Conflict of interest statement") statement.

![Yale University Logo](/assets/site-img/yale-university-logo.svg "Yale University Logo")

![Children’s Hospital Colorado Logo](/assets/site-img/childrens-hospital-colorado-logo.svg "Children’s Hospital Colorado Logo")

![University of Chicago Logo"](/assets/site-img/university-of-chicago-logo.svg "University of Chicago Logo")