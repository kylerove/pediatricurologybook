---
layout: sponsors
title: Patrocinadores
description: Lista de patrocinadores para o Livro de Urologia Pediátrica.
thumbnail: sponsors.png
permalink: /sponsors/
lang: pt
breadcrumbs:
  - 
    title: Página Inicial
    permalink: /
  - 
    title: Patrocinadores
    permalink: /sponsors/
toc: false
---

# Patrocinadores

Este trabalho é patrocinado por bolsas educacionais irrestritas da [Yale University School of Medicine](https://medicine.yale.edu), [Children's Hospital Colorado](https://www.childrenscolorado.org) e [The University of Chicago Medicine](https://www.uchicagomedicine.org). [Editores](/editors/) e [contribuidores](/contributors/) têm autoridade exclusiva sobre o conteúdo e as decisões editoriais. Revise a declaração de [conflito de interesses](/conflict-of-interest/) para obter detalhes.

# Sobre os Patrocinadores

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sponsors = site.data.sponsors %}
{% include sponsors-list.html sponsors=the_sponsors %}