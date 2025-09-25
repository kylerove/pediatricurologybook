---
layout: about-us
title: À propos de nous
description: Tout sur le livre d'urologie pédiatrique, son histoire, son évolution et sa mission continue.
thumbnail: about-us-fr.png
permalink: /about-us/
lang: fr
breadcrumbs:
  - 
    title: Accueil
    permalink: /
  - 
    title: À propos de nous
    permalink: /about-us/
toc: false
---
# À propos de **nous**

## Notre **Histoire**

{% assign the_timeline = site.data.about-us-timeline | where: "language",site.active_lang | first %}
{% include about-us-history.html timeline=the_timeline %}

L'urologie pédiatrique est une spécialité couvrant un spectre extrêmement varié de pathologies congénitales et acquises, allant du phimosis, de l'hydrocèle, du testicule non descendu palpable, en passant par des affections fréquentes telles que les infections urinaires et la dysfonction vésicale, l'hydronéphrose et l'hypospadias, jusqu'aux tumeurs rares, aux valves urétrales postérieures, aux troubles du développement sexuel, à l'exstrophie-épispadias et aux anomalies cloaquales.
{: .lead .drop-caps}

L'étendue et la complexité de la pratique spécialisée de l'urologie pédiatrique ne cessent d'augmenter, avec des progrès en imagerie, le traitement endoscopique du reflux vésico-urétéral et l'essor de l'urologie pédiatrique laparoscopique et assistée par robot, à titre d'exemples récents.

Il existe un certain nombre de cours et d’événements disponibles pour les résidents/spécialistes en urologie pédiatrique et pour d’autres spécialités liées à l’urologie pédiatrique afin d’actualiser leurs connaissances et de rester à jour des évolutions. Cela est également possible via des abonnements à des revues, personnels ou institutionnels, et des manuels d’urologie pédiatrique, qui sont mis à jour tous les quelques ans.

Malheureusement, nous ne disposons pas tous des infrastructures ni du temps requis pour suivre de près les évolutions du domaine de l’urologie pédiatrique en temps opportun. En outre, dans de nombreuses régions du monde, les coûts financiers nécessaires pour y parvenir peuvent être prohibitifs.

Quelle meilleure manière d’atteindre tous ces objectifs qu’avec une ressource en ligne d’urologie pédiatrique, gratuite et en libre accès, où tous les chapitres et sous-sections sont rédigés par des leaders dans ce domaine particulier. De plus, les chapitres seront mis à jour plusieurs fois par an, permettant aux lecteurs de rester à jour depuis le confort de leur propre ordinateur, smartphone ou tablette.

Le [Livre d'urologie pédiatrique](/) a été divisé en plusieurs sections. Dans chaque section, le chapitre a été divisé en sous-sections, chaque sous-section étant rédigée par un spécialiste. Par exemple, le chapitre sur l'urolithiase peut comporter une section rédigée par un néphrologue, un radiologue interventionnel et un urologue pédiatrique, fournissant ainsi les détails les plus complets pour cette section particulière. En outre, lorsque cela est pertinent, des photographies et des clips vidéo seront intégrés dans le chapitre pour visualisation via les moyens standard.

## Comment nous sommes-nous **autoédités** ?

L’auto-édition n’est pas pour les âmes sensibles. Il vous faut _quelqu’un_ ayant des connaissances de l’Internet (serveurs web, [services d’hébergement](https://digitalocean.com), [noms de domaine](https://cloudflare.com), HTML, CSS, Javascript) et des frameworks pour relier l’ensemble ([Git](https://git-scm.com), [GitHub](https://github.com), [Bootstrap](https://getbootstrap.com), [JQuery](https://jquery.com), [Ruby](https://www.ruby-lang.org/en/), [PanDoc](https://pandoc.org), [CSL](https://citationstyles.org/), et une pincée de [Perl](https://www.perl.org) et de [Python](https://www.python.org)).

Quelques projets open source clés nous ont aidés à mener ce projet à son terme :
- [AnyStyle.io](https://anystyle.io) (a analysé les références brutes issues des soumissions originales des auteurs)
- [doi4bib](https://github.com/sharkovsky/doi4bib) (nous a permis de trouver et de localiser les liens DOI et PubMed pour les références)
- [CiteProc-Ruby](https://github.com/inukshuk/citeproc-ruby) (nous a permis d'afficher les références dans un format agréable)
- [Porto Website Template](https://themeforest.net/item/porto-responsive-html5-template/4106987) (donne la structure visuelle du site Web)
- [Jekyll](https://jekyllrb.com) (véritablement la colle du projet, rassemblant tout le contenu dans le site Web final)

Autres outils utilisés dans la réalisation de ce livre :
- [Sketch](https://www.sketch.com)
- [Police Poppins](https://fonts.adobe.com/fonts/poppins)
- [Nova](https://nova.app)

## Qui **nous sommes**

Nous, les [rédacteurs]({{ site.url }}{{ site.baseurl }}/editors/), sommes tous des urologues pédiatriques expérimentés, avec à notre actif de nombreuses publications évaluées par les pairs, des chapitres de manuels et des responsabilités éditoriales pour des manuels et des revues. La conviction selon laquelle “Le savoir devrait être libre” nous est commune à tous et, dans cet esprit, nous visons, avec nos contributeurs, à diffuser ce savoir en urologie pédiatrique dans un format en ligne ouvert, enthousiasmant et (toujours) révolutionnaire depuis la sortie de la version 1 en 2010. Bien sûr, l’amélioration continue est la clé d’un succès durable et nous vous serions donc reconnaissants de vos retours. Nous n’aurions certainement pas pu réaliser cela sans le soutien et les conseils de nos familles.

Bien que toutes les informations de ce site Web soient gratuitement disponibles et en accès libre, les [éditeurs]({{ site.url }}{{ site.baseurl }}/editors/) demandent que les personnes fassent preuve de courtoisie envers les [contributeurs]({{ site.url }}{{ site.baseurl }}/contributors/) en obtenant les autorisations nécessaires pour utiliser toute image ou tout matériel numérique provenant de cet ouvrage.

Bien à vous,  
Angela Arlen, PJ López, Mohan Gundeti, & Kyle Rove
