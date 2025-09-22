---
layout: sponsors
title: Sponsors
description: Liste des sponsors pour le livre d'urologie pédiatrique.
thumbnail: sponsors-fr.png
permalink: /sponsors/
lang: fr
breadcrumbs:
  - 
    title: Accueil
    permalink: /
  - 
    title: Sponsors
    permalink: /sponsors/
toc: false
---

# Sponsors

Ce travail est soutenu par des subventions éducatives sans restriction accordées par [Yale University School of Medicine](https://medicine.yale.edu), [Children’s Hospital Colorado](https://www.childrenscolorado.org), & [The University of Chicago Medicine](https://www.uchicagomedicine.org). [Rédacteurs](/editors/) et [contributeurs](/contributors/) ont autorité exclusive sur le contenu et les décisions éditoriales. Consultez la [déclaration de conflit d'intérêts](/conflict-of-interest/) pour plus de détails.

# À propos des sponsors

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sponsors = site.data.sponsors %}
{% include sponsors-list.html sponsors=the_sponsors %}
