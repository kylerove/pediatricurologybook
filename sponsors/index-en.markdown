---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: sponsors
title: Sponsors
permalink: /sponsors/
lang: en
breadcrumbs:
  - 
    title: Home
    permalink: /
  - 
    title: Sponsors
    permalink: /sponsors/
toc: false
---

# Sponsors

This work is sponsored by unrestricted educational grants from [Yale University School of Medicine](https://medicine.yale.edu), [Children’s Hospital Colorado](https://www.childrencolorado.org), & [The University of Chicago Medicine](https://www.uchicagomedicine.org). [Editors](/editors/) and [contributors](/contributors/) have sole authority over content and editorial decisions. Review the [conflict of interest](/conflict-of-interest/ "Conflict of interest statement") statement for details.

# About the Sponsors

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sponsors = site.data.sponsors %}
{% include sponsors-list.html sponsors=the_sponsors %}