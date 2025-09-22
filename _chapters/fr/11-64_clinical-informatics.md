---
section: 11
chapter: 64
sort-key: 11-64
title: Informatique clinique
description: Le chapitre 64 explore un concept d’informatique clinique de plus en plus important, ainsi que la manière de s’y engager et de l’appliquer en urologie pédiatrique.
thumbnail: 11-64_clinical-informatics-fr.png
authors:
  -
    author-id: 4
  -
    author-id: 9
layout: chapter
lang: fr
breadcrumbs:
  - 
    title: Accueil
    permalink: /
  - 
    title: Livre
    permalink: /book/
toc: true
js: /assets/js/pages/chapter.js
review-formatting-complete: 2025-09-21 KR
page_id: 11-64_clinical-informatics
---

## Introduction

De plus en plus, il est largement reconnu que l'expertise clinique et l'expertise en technologies de l'information ne se recoupent pas toujours, surtout à mesure que ces domaines distincts ont emprunté la voie de la sous-spécialisation. Avez-vous déjà eu du mal à expliquer au service d'assistance ce qui ne fonctionne pas dans le dossier médical électronique (EMR) ? Une "mise à niveau" de l'EMR vous a-t-elle déjà donné l'impression d'une "dégradation?" du flux de travail clinique ? Il s'agit d'un écart vécu par la plupart des organisations de soins de santé, et de plus en plus d'organisations mettent en place des programmes d'informatique clinique pour combler cet écart.
{:.drop-caps}

**Un informaticien clinique (parfois appelé « informaticien »), est un professionnel de santé doté de connaissances et d’une formation spécialisées en systèmes d’information cliniques, généralement centrées sur le DME.** L’informatique clinique s’est, au cours de la dernière décennie, développée en une spécialité à part entière, avec formation et certification par un conseil de spécialité. Certaines spécialités s’appuient sur de tels spécialistes depuis bien plus longtemps que l’urologie ou la chirurgie, notamment l’anatomopathologie (interfaces des systèmes de laboratoire) et la radiologie (interfaces PACS). Mais à mesure que les DME évoluent et que davantage de nos flux de travail sont numérisés, même les chirurgiens sont affectés par l’écart susmentionné, et il devient de plus en plus impératif que des praticiens chirurgicaux formés au DME soient présents à la table pour les décisions qui affectent notre pratique.

L’informatique clinique peut aussi être définie par ce qu’elle n’est pas : des médecins utilisant un ordinateur, des médecins qui utilisent des logiciels cliniques (à tout niveau d’expertise), ou des médecins effectuant des analyses de données ou de la recherche. Historiquement, le jeune domaine de l’informatique clinique a eu du mal à faire comprendre ce que nous faisons, et énoncer ce que nous ne sommes pas est un exercice utile pour souligner la définition. [Figure 1](#figure-1){:.figure-link} illustre certains des chevauchements et des fonctions de l’informatique clinique avec le domaine de l’analytique. De même, [Figure 2](#figure-2){:.figure-link} montre comment le chevauchement entre le système de santé, les soins cliniques, et les technologies de l’information et les systèmes conduit à différents domaines d’expertise, l’informatique clinique se trouvant au centre.

![Figure 1]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-1.svg){:.float-start .img-fluid}  
**Figure 1**{:#figure-1}{:.figure-number} L'informatique clinique, en tant que domaine, présente un certain chevauchement et des liens avec l'analytique (qui, dans de nombreux systèmes de santé, est naissante), mais chacune comporte des éléments propres qui la distinguent de l'autre.

**Figure 2**{:#figure-2}{:.figure-number} Les domaines qui se recoupent dans et autour des soins cliniques différencient l'informatique clinique
![Figure 2]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-2.svg){:.float-start .img-fluid}   des domaines tels que l'amélioration de la qualité et la sécurité des patients, ainsi que le service d'assistance informatique. L'informatique clinique se situe à l'intersection des trois grands domaines, les soins cliniques, le système de santé et les technologies de l'information et de la communication.

## Définition de l’EMR---Ce que c’est

Il existe différents termes pour désigner les dossiers médicaux informatisés, y compris le titre de cette revue, dossier médical électronique (EMR). Mais qu’est-ce qui constitue un EMR ? Les EMR peuvent consister en une application unique et de grande taille (p. ex., Epic ou Cerner ou AllScripts) concédée sous licence et maintenue par une organisation de prestation de soins comme un hôpital ou ou une clinique privée, ou ils peuvent également être constitués de plusieurs applications distinctes. Le terme dossier de santé électronique (EHR) est parfois utilisé comme synonyme d’EMR, mais il est défini comme un concept séparé et distinct d’un portail destiné aux patients qui permet l’accès aux dossiers provenant de plusieurs organisations de prestation de soins de santé et qui unifie l’information en un seul endroit. [Tableau 1](#table-1){:.table-link} propose une comparaison de l’EMR, de l’EHR et des échanges d’informations de santé (HIE), qui deviennent également de plus en plus importants à l’échelle régionale pour faciliter un échange d’informations électronique, sécurisé, efficace et en temps opportun entre les organisations.

Au-delà de la définition du DME, il existe également des mesures du degré d’avancement des capacités et des intégrations au sein du DME, définies par la HIMSS.{% cite anon-a --file 11-64 %} En définissant ces étapes, les organisations peuvent comparer leurs capacités (fonctionnalités et intégrations qui influent sur la sécurité des patients, la sécurité des données et l’efficacité/la satisfaction des cliniciens) les unes par rapport aux autres. La définition de chaque étape{% cite anon-a rule2021a maguire2020a kuhn2015a kahn2018a downing2018a rosenbloom2011a --file 11-64 %} inclut les capacités de cette étape ainsi que toutes celles des étapes inférieures. L’étape la plus avancée est l’étape 7 de la HIMSS. Celles-ci sont présentées dans le [Tableau 2](#table-2){:.table-link}.

**Tableau 1**{:#table-1}{:.table-number} Différences entre un dossier médical électronique (EMR), un dossier de santé électronique (EHR) et un échange d'informations de santé (HIE). Les EMR peuvent se composer d'une application unique et de grande taille (p. ex., Epic ou Cerner) appartenant à et maintenue par une organisation de prestation de soins comme un hôpital, un système hospitalier ou une clinique privée, ou ils peuvent aussi se composer de plusieurs applications. Un HIE, en revanche, facilite le partage d'informations entre des EMR en utilisant des terminologies normalisées (p. ex., ICD-10 et SNOMED pour les diagnostics, CPT pour les procédures, des codes LOINC pour les tests de laboratoire, etc). Les HIE sont de plus en plus courants. Des exemples d'EHR incluent Apple Health ou Google Health, qui peuvent collecter et intégrer des informations de manière sécurisée à partir de multiples entités.

| EMR                                                                  | EHR                                                                                  | HIE                                                                                                                                                                                               |
|----------------------------------------------------------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Appartenant à une organisation de prestation de soins (hôpital, système hospitalier, clinique) | Appartenant au patient ou à une partie prenante                                      | Entité indépendante ayant des accords avec de multiples organisations pour partager automatiquement des informations normalisées (p. ex., médicaments, vaccinations, notes, comptes rendus de sortie, analyses de laboratoire, entre autres) |
| Contient le dossier médical légal d'une seule organisation           | Sous-ensemble de dossiers concernant un seul patient et couvrant plusieurs organisations | Facilite l'échange d'informations avec les organisations membres                                                                                                                                    |
| Une seule organisation                                               | Peut couvrir des zones locales, régionales et nationales                             | Peut couvrir des zones locales, régionales et nationales (p. ex., CORHIO HIE dans l'État du Colorado)                                                                                              |
| Application intégrée ou applications multiples                       | Interface interactive (portail web ou application mobile, généralement utilisée par les patients) | Interface interactive (portail web ou application mobile, généralement utilisée par les professionnels de santé au sein des organisations membres) ou peut directement intégrer/envoyer/recevoir des données dans l'EMR de l'organisation               |

**Tableau 2**{:#table-2}{:.table-number} Niveaux HIMSS des capacités du DME. Le niveau 7 est le plus avancé et inclut toutes les capacités énoncées *ainsi que* toutes les capacités et intégrations répertoriées pour les niveaux 1--6. Chaque niveau inclut toutes les capacités de ce niveau et de tous les niveaux inférieurs.

| Niveau HIMSS | Fonctionnalités                                                                                                                                                           |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Niveau 7     | EMR complet; transactions du document de continuité des soins (CCD) pour partager des données; entrepôt de données; continuité des données avec le service des urgences (ED), l'ambulatoire et les patients externes (OP) |
| Niveau 6     | Documentation des médecins (modèles structurés), systèmes complets d'aide à la décision clinique (CDSS) (variance et conformité), R-PACS complet                                      |
| Niveau 5     | Administration des médicaments en boucle fermée                                                                                                                                     |
| Niveau 4     | Saisie des prescriptions médicales (CPOE), aide à la décision clinique (protocoles cliniques)                                                                                     |
| Niveau 3     | Documentation infirmière/clinique (feuilles de suivi), CDSS (contrôle des erreurs), PACS disponible en dehors de la radiologie                                                                     |
| Niveau 2     | Entrepôt de données cliniques (CDR), vocabulaire médical contrôlé, aide à la décision clinique, peut disposer de numérisation de documents; compatible avec l'échange d'informations de santé (HIE)            |
| Niveau 1     | Les trois auxiliaires (IS de laboratoire, IS de radiologie, IS de pharmacie) installés                                                                                                |
| Niveau 0     | Les trois auxiliaires (IS de laboratoire, IS de radiologie, IS de pharmacie) non installés                                                                                            |

## Exemples d’informatique clinique

### Stratégies de documentation et normalisation

L'ère des EMR a rendu de plus en plus simple le stockage d'informations sur les patients telles que des notes, des analyses de laboratoire, des résultats radiologiques, et plus encore. Cela a également entraîné un allongement spectaculaire de la documentation, car les EMR rendent très facile l'importation de ces informations dans une note.{% cite rule2021a maguire2020a kuhn2015a kahn2018a --file 11-64 %} La conséquence inattendue est la tendance des cliniciens à inclure mot pour mot des informations redondantes (p. ex., l'intégralité d'un rapport d'échographie réno-vésicale) dans leurs notes de consultation et d'évolution en hospitalisation au lieu d'en faire la synthèse et d'en noter la signification---ce qui a conduit à un doublement de la longueur des notes de consultation depuis 2009.{% cite downing2018a --file 11-64 %}

Les informaticiens cliniques sont bien placés pour avoir un impact positif sur ce point en encourageant l'utilisation et la création de modèles de documentation dans l'EMR. Pourquoi est-ce important ? Trop souvent, les cliniciens répètent des tâches banales encore et encore, sans se rendre compte ni comprendre que l'EMR peut automatiser ces tâches et ce travail. Un excellent exemple est celui de patients présentant des problèmes courants d'urologie pédiatrique vus en consultation (p. ex., hypospadias, hydronéphrose, reflux vésico-urétéral, dysfonction vésico-intestinale). Si vous vous retrouvez à avoir la même conversation avec les patients et leurs familles et à présenter des options similaires, un modèle de note clinique peut transformer 10 minutes passées à "réinventer la roue" pour documenter cette conversation en un exercice de 30 à 60 secondes consistant à renseigner les détails clés dans un modèle de note clinique enregistré dans l'EMR.

[Tableau 3](#table-3){:.table-link} fournit une liste des phénotypes ambulatoires du modèle de note ***partagé*** pour les nouveaux patients dans mon organisation. Notez le mot ***partagé***: Notre groupe a choisi de créer cette ressource partagée pour tous les praticiens. L’avantage du partage est que nous avons standardisé la documentation pour \~95% des nouveaux patients, qui entrent dans cette liste, et tous les praticiens en bénéficient à mesure que les problèmes sont corrigés et que le modèle est affiné.

**Tableau 3**{:#table-3}{:.table-number} Liste des modèles de notes partagées pour les nouveaux patients au Children's Hospital Colorado en 2023.

| Modèles pour nouveaux patients |
|-----------------------------------|
| Ano-rectal |
| Différences du développement sexuel |
| Dysfonction mictionnelle |
| Dysurie |
| Générique |
| Hématurie |
| Hernie / hydrocèle |
| Hydronéphrose |
| Hypospadias |
| Synéchies des petites lèvres |
| Phimosis du nouveau-né |
| Énurésie nocturne |
| Pénis |
| Consultation prénatale |
| Douleur / masse / tuméfaction scrotale |
| Malformation spinale |
| Calculs |
| Masse testiculaire / microlithiase |
| Testicule non descendu |
| Anomalie de l'ouraque |
| Infection urinaire |
| Varicocèle / spermatocèle |
| Reflux vésico-urétéral |

### Création de données discrètes

Un avantage considérable que présente le DME par rapport aux dossiers papier réside dans les données structurées, ou discrètes. On peut considérer les données discrètes comme des informations qui ont été décomposées en leurs éléments de base, étiquetées et stockées de manière à pouvoir être facilement consultées. Dans le DME, une grande partie des données importantes pour la documentation clinique a déjà été saisie de cette manière---dates, noms, signes vitaux, valeurs de laboratoire, diagnostics, etc. De telles données peuvent faciliter les soins directs aux patients et être exploitées pour des usages secondaires, notamment le suivi des résultats et la recherche clinique.

Il est généralement simple d'intégrer des données discrètes dans les notes. Ce faisant, les médecins doivent veiller à éviter la surcharge des notes et à structurer leurs modèles pour se concentrer uniquement sur les données pertinentes. **Les données discrètes au sein d'un DME sont hautement granulaires et, avec suffisamment de personnalisation, des éléments de données discrets peuvent être incorporés dans une note sans compromettre la lisibilité.** Par exemple, plutôt que d'importer l'ensemble complet des tableaux de résultats de laboratoire récents, on peut modéliser une phrase pour n'inclure que la valeur de créatinine la plus récente et la date à laquelle elle a été prélevée.{% cite rosenbloom2011a --file 11-64 %}

### Aide à la décision clinique

L'aide à la décision clinique (CDS) est définie comme un « processus visant à améliorer les décisions et les actions liées à la santé grâce à des connaissances cliniques pertinentes et organisées ainsi qu'à des informations sur les patients, afin d'améliorer les soins de santé et leur prestation. »{% cite osheroff-a --file 11-64 %} Les données du DME d'un patient peuvent être exploitées pour recommander une action spécifique ou mettre en évidence des informations importantes. Les alertes contextuelles (pop-up) sont une forme courante de CDS. [Tableau 4](#table-4){:.table-link} dresse la liste des types, outils et exemples courants de CDS en urologie pédiatrique.

**Tableau 4**{:#table-4}{:.table-number} Exemples d’aide à la décision clinique (CDS) en urologie pédiatrique.

| Catégorie                    | Outil                                                          | Avantage                                                            |                                                                        Exemple                                                                       |
|------------------------------|----------------------------------------------------------------|---------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------:|
| Saisie de données            | Formulaire intelligent (saisie de données dynamique et guidée) | Invite dynamiquement à recueillir des données clés et discrètes     |                                Saisie de données d'urodynamique pédiatrique qui s'ajuste en fonction des procédures/conditions documentées          |
|                              | Jeux d'ordonnances                                            | Standardiser la saisie des ordonnances selon l'état du patient      |                                       Jeu d'ordonnances de récupération améliorée après chirurgie (ERAS) pédiatrique postopératoire                 |
| Revue des données            | Tableau de bord infirmier ambulatoire d'urologie pédiatrique   | Centralise les tâches assignées et fournit une évaluation globale des responsabilités | Dresse la liste des appels postopératoires en attente, des tâches d'éducation du patient, de la revue du pool de messages de la boîte de réception et d'autres tâches de soins indirects (p. ex., suivi des stents urétéraux) |
| Évaluation et compréhension  | Boutons d'information, liens intégrés vers des supports pédagogiques | Offre au clinicien une opportunité pédagogique immédiate            |                    Fournir un lien vers des recommandations de prophylaxie antibiotique chirurgicale spécifiques à l'urologie pédiatrique au sein d'un jeu d'ordonnances                    |
| Déclenché par une tâche de l'utilisateur | Alertes intégrées au flux de travail                          | Utile pour des notifications courantes                              |                                                                Rappels pour la vaccination contre la grippe                                         |
|                              | Alertes contextuelles, interruptives                           | Utile pour des messages importants où une action est fortement recommandée |                                         Suggestion de changer de médicament car celui sélectionné est en rupture de stock                           |
|                              | Notification automatique dans la boîte de réception            | Alerte les professionnels de santé d'une action requise en attente  |                                                   Rappel de terminer la documentation d'un dossier ouvert                                            |

Les "cinq bons" du CDS sont importants à prendre en compte lors de la conception et du développement de nouveaux outils: 1) bonne information, 2), bonne personne, 3) bon format d'intervention, 4) bon canal, 5) bon moment/flux de travail ([Tableau 5](#table-5){:.table-link}).{% cite campbell2013a --file 11-64 %} Ces concepts aident à cibler l'outil afin d'éviter d'interrompre les mauvais membres de l'équipe aux mauvais moments avec des interventions qui ne sont pas efficaces. Bien que, historiquement, les outils de CDS n'aient pas toujours amélioré l'efficacité, au fil du temps, nous pensons que cela s'améliorera.{% cite bright2012a patterson2018a murphy2014a --file 11-64 %}

**Tableau 5**{:#table-5}{:.table-number} Les cinq droits du CDS.

|           Bon           |                                                                                                                          Explication                                                                                                                         |
|:-------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|     Bonne information     |                                                                 Les informations devraient être présentées à l'utilisateur et idéalement être fondées sur des preuves (p. ex., des recommandations), tout en évitant trop de détails                                                                 |
|        Bonne personne       |                                                                      Les soins de santé modernes reposent sur le travail en équipe, et les interventions doivent être adressées au bon membre de l'équipe capable d'agir                                                                     |
| Bon format d'intervention |                                                                                            Un outil approprié figurant dans le tableau 2 devrait être sélectionné afin d'aider l'utilisateur                                                                                            |
|       Bon canal       | De plus en plus, il existe des interfaces EMR dans l'ensemble de l'environnement de soins de santé, une session de consultation sur ordinateur de bureau, un tableau de planification du bloc opératoire, des appareils portables, des listes de patients imprimées, etc. Les concepteurs de CDS devraient sélectionner un canal optimal pour l'intervention. |
|    Bon moment/flux de travail    |                                               Les interventions devraient être ciblées et testées dans des scénarios réels afin de s'assurer qu'elles sont délivrées au bon moment et dans le bon flux de travail pour être efficaces.                                              |

## Formation en informatique

L'informatique clinique est désormais enseignée via des programmes de formation formels accrédités par la GME. La certification du Board est disponible pour ceux qui souhaitent officialiser leur formation.{% cite lehmann2018a --file 11-64 %} Il existe actuellement deux voies menant à la certification du Board (qui est accordée après réussite d'un examen écrit) par le Conseil américain de médecine préventive : 1) filière de formation en informatique clinique, qui permet de se présenter au Board après avoir achevé une formation accréditée par la GME (généralement d'un an), ou 2) filière professionnelle qui autorise les personnes occupant des fonctions officielles au sein de votre organisation avec au moins 0,25 équivalent temps plein dédié. Cette dernière est disponible jusqu'en 2023 (mais cette clause de droits acquis a été prolongée à plusieurs reprises, reconnaissant que tous les informaticiens cliniques n'ont pas reçu de formation formelle, mais ont plutôt bénéficié d'une formation en cours d'emploi). Davantage d'informations sur les exigences de certification du Board en informatique clinique sont disponibles auprès du [Conseil américain de médecine préventive](https://www.theabpm.org/become-certified/subspecialties/clinical-informatics/).

## Gouvernance du DME

Étant donné la complexité du DME, en particulier ceux intégrant des fonctionnalités ambulatoires, de laboratoire, de pharmacie, d’hospitalisation, des urgences et du bloc opératoire, les modifications du DME ne peuvent pas être effectuées par une petite équipe sans contribution de l’organisation. De nombreux hôpitaux et systèmes disposant de DME étendus ont mis en place des comités de gouvernance qui discutent et décident des changements majeurs susceptibles d’avoir un impact sur un large éventail d’utilisateurs. Siéger à ces comités peut offrir un aperçu précieux des nouvelles fonctionnalités d’un DME, vous aider à éviter un changement susceptible d’affecter négativement votre équipe, ou offrir un lieu pour discuter d’une fonctionnalité ou d’un paramétrage qui pourrait bénéficier à votre groupe ou à votre organisation.

## Direction de l'informatique et service d'assistance

De nombreux médecins ont exprimé leur frustration de ne pas savoir par où commencer lorsqu'il y a des problèmes ou une frustration face à la situation actuelle. Connaître vos responsables IT et d'informatique médicale est un bon point de départ. Nombre d'organisations (grandes et petites) ont une personne désignée pour diriger l'équipe informatique (peut-être appelée Chief Information Officer ou CIO). Il existe probablement aussi une personne du milieu clinique désignée pour faire le lien avec le CIO afin de représenter les cliniciens. Dans de nombreuses organisations, il s'agit d'un Chief Medical Informatics Officer ou CMIO. Savoir qui sont ces personnes dans votre organisation, c'est déjà la moitié du combat. Leur demander d'inclure des personnes désignées pour représenter vos intérêts est également essentiel. Ces représentants désignés devraient s'intéresser à l'informatique (même sans formation formelle) et être habilités à prendre des décisions au nom de votre groupe, tout en servant aussi de personnes capables de faciliter le changement, qui s'est imposé comme une nouvelle normalité constante à l'ère du dossier médical électronique.

Au-delà d’impliquer les principaux responsables de votre organisation de soins de santé, la moitié des problèmes liés au DME s’explique par une variante du concept économique de « tragédie des communs ». Il s’agit d’une situation où une ressource partagée (en l’occurrence, le DME) est laissée se détériorer parce que l’on privilégie l’intérêt personnel (à savoir : le temps précieux des cliniciens et l’hypothèse que d’autres s’occupent d’un problème) plutôt que l’attention portée à cette ressource et son amélioration. Plus directement, lorsque les utilisateurs rencontrent des résultats inattendus dans le DME (nouvelle erreur inconnue ou fonctionnalité défaillante), nous observons que la plupart des utilisateurs contournent le problème plutôt que de le signaler au service d’assistance. Comme le personnel informatique n’est pas clinicien, nombre de ces problèmes dans le DME peuvent passer inaperçus pendant des jours ou davantage, faute d’être signalés au service d’assistance. **Ne supposez pas que d’autres ont signalé le problème.** Pour pallier le temps nécessaire pour appeler le service d’assistance, déléguez à un membre du personnel (assistant médical, par exemple) la tâche de prévenir le service d’assistance, en lui fournissant suffisamment d’informations pour exposer le problème.

## Conclusion

L'informatique clinique est un domaine d'exercice de plus en plus important pour les urologues. Le fait d'avoir, au sein de votre équipe ou de votre groupe, un membre capable de représenter vos intérêts et de suivre une formation complémentaire pour devenir expert dans ce domaine est susceptible de porter ses fruits en termes d'efficacité et de productivité, et de minimiser les frictions entre votre équipe et le dossier médical électronique.

## Points clés
{:.key-points-head}

- L’informatique clinique est un domaine nouveau qui exploite et comble l’écart entre les soins cliniques et les systèmes de technologies de l’information (avec un accent particulier sur l’EMR)
- Les EMR intègrent de plus en plus de fonctionnalités pour faciliter l’accès à la radiologie, à la pharmacie, à l’aide à la décision clinique, au laboratoire, ainsi qu’à la documentation couvrant les soins ambulatoires, hospitaliers, périopératoires et aux urgences (HIMSS niveau 7)
- La complexité supplémentaire a obligé les organisations à investir dans des équipes d’informatique clinique afin d’assurer une utilisation plus efficace de l’EMR qui reflète les flux de travail et les pratiques existants.
- Connaître vos responsables des technologies de l’information (CIO) et de l’informatique (CMIO) est essentiel pour garantir que vos intérêts sont représentés.
- Appelez le service d’assistance lorsque vous rencontrez quelque chose d’inattendu. Ne tombez pas dans le piège de la tragédie des biens communs en pensant que quelqu’un d’autre a signalé le problème.
{:.key-points-list}

## Références

{% bibliography --file 11-64 %}

*[EMR]: dossier médical électronique
*[PACS]: système d’archivage et de communication d’images
*[EMRs]: dossiers médicaux électroniques
*[EHR]: dossier de santé électronique
*[HIE]: échange d’informations de santé
*[HIMSS]: Société des systèmes d’information et de gestion des soins de santé
*[ICD]: Classification internationale des maladies
*[SNOMED]: Nomenclature systématisée de la médecine
*[CPT]: Terminologie des actes médicaux courants®
*[LOINC]: Noms et codes des identificateurs d’observation logique
*[HIEs]: échanges d’informations de santé
*[CORHIO]: Organisation régionale d’information de santé du Colorado
*[CCD]: document de continuité des soins
*[ED]: service des urgences
*[OP]: ambulatoire
*[CDSS]: systèmes d’aide à la décision clinique
*[CPOE]: saisie informatisée des prescriptions médicales
*[CDR]: entrepôt de données cliniques
*[IS]: systèmes d’information
*[UTI]: infection des voies urinaires
*[CDS]: aide à la décision clinique
*[ERAS]: récupération améliorée après chirurgie
*[GME]: formation médicale de troisième cycle
*[IT]: technologies de l’information
*[CIO]: directeur des systèmes d’information
*[CMIO]: directeur médical des systèmes d’information
