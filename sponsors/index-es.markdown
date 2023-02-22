---
layout: sponsors
title: Patrocinadores
description: Listado de patrocinadores del Libro de Urología Pediátrica.
thumbnail: sponsors.png
permalink: /sponsors/
lang: es
breadcrumbs:
  - 
    title: Inicio
    permalink: /
  - 
    title: Patrocinadores
    permalink: /sponsors/
toc: false
---

# Patrocinadores

Este trabajo está patrocinado por subvenciones educativas sin restricciones de [Escuela de Medicina de la Universidad de Yale](https://medicine.yale.edu), [Children's Hospital Colorado](https://www.childrenscolorado.org) y [The University of Medicina de Chicago](https://www.uchicagomedicine.org). [Editores](/editors/) y [colaboradores](/contributors/) tienen autoridad exclusiva sobre el contenido y las decisiones editoriales. Revise la declaración de [conflicto de intereses](/conflict-of-interest/) para obtener más detalles.

# Sobre los Patrocinadores

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sponsors = site.data.sponsors %}
{% include sponsors-list.html sponsors=the_sponsors %}