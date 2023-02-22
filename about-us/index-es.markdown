---
layout: about-us
title: Sobre Nosotros
description: Todo sobre el Libro de Urología Pediátrica, su historia, evolución y misión en curso.
thumbnail: about-us.png
permalink: /about-us/
lang: es
breadcrumbs:
  - 
    title: Inicio
    permalink: /
  - 
    title: Sobre Nosotros
    permalink: /about-us/
toc: false
---

# Sobre **Nosotros**

## Nuestra **Historia**

{% assign the_timeline = site.data.about-us-timeline | where: "language",site.active_lang | first %}
{% include about-us-history.html timeline=the_timeline %}

La urología pediátrica es una especialidad inmensamente variable de las afecciones congénitas y adquiridas que van desde la fimosis, el hidrocele, el testículo no descendido palpable, pasando por trastornos comunes como la infección del tracto urinario y la disfunción de la vejiga, la hidronefrosis y la hipospadias, hasta tumores raros, válvulas uretrales posteriores.
{: .lead .drop-caps}

El alcance y la complejidad de la práctica de urología pediátrica especializada están aumentando, con avances en las imágenes, el tratamiento endoscópico del reflujo vesicouretero y la expansión de la urología pediátrica laparoscópica y robótica como algunos ejemplos recientes.

Hay una serie de cursos y eventos que están disponibles para los residentes/especialistas en urología pediátrica y otras especialidades relacionadas con la urología pediátrica para actualizar sus conocimientos y mantenerse al día con los desarrollos. Esto también es posible a través de suscripciones a revistas, ya sean personales o institucionales y libros de texto de urología pediátrica que se actualizan cada pocos años.

Desafortunadamente, no todos estamos bendecidos con las instalaciones o el tiempo que se requiere para mantenernos al tanto de los desarrollos en el campo de la urología pediátrica de manera oportuna. Además, en muchas partes del mundo, los gastos financieros para lograr esto pueden ser prohibitivos.

¿Qué mejor manera de lograr todos estos objetivos que con un recurso en línea de urología pediátrica que sea gratuito, tenga acceso abierto y donde todos los capítulos y subsecciones sean escritos por líderes en ese campo en particular? Además, los capítulos se actualizarán varias veces al año manteniendo a los lectores actualizados desde la comodidad de su propio ordenador, teléfono inteligente o tableta. 

El [Libro de Urología Pediátrica](/) se ha dividido en varias secciones. En cada sección, el capítulo se ha dividido en subsecciones, cada subsección está a la contribución de un especialista. Por ejemplo, el capítulo de la urolitiasis puede tener una sección escrita por un nefrólogo, un radiólogo intervencionista y un urólogo pediátrico, lo que proporciona los detalles más completos para esa sección en particular. Además, cuando sea relevante, las fotografías y los clips de vídeo se incrustarán en el capítulo para verlos a través de los medios estándar.

## ¿Cómo Nos **Autopublicamos**?

La autopublicación no es para los débiles de corazón. Necesitas _a alguien_ con conocimiento de Internet (servidores web, [servicios de alojamiento](https://digitalocean.com), [nombres de dominio](https://cloudflare.com), HTML, CSS, Javascript) y marcos para unirlo todo ([Git](https://git-scm.com), [GitHub](https://github.com), [Bootstrap](https://getbootstrap.com), [JQuery](https://jquery.com), [Ruby](https://www.ruby-lang.org/en/), [PanDoc](https://pandoc.org), [CSL](https://citationstyles.org/), y una pizca de [Perl](https://www.perl.org) y [Python](https://www.python.org)).

Algunos proyectos clave de código abierto ayudaron a superar la línea de meta:
- [AnyStyle.io](https://anystyle.io) (paró las referencias en bruto de las presentaciones originales de los autores)
- [doi4bib](https://github.com/sharkovsky/doi4bib) (nos permitió encontrar y localizar enlaces DOI y PubMed para referencias)
- [CiteProc-Ruby](https://github.com/inukshuk/citeproc-ruby) (nos permitió mostrar las referencias en un formato bonito)
- [Porto Website Template](https://themeforest.net/item/porto-responsive-html5-template/4106987) (da la estructura visual del sitio web)
- [Jekyll](https://jekyllrb.com) (da la estructura visual del sitio web)

Otras herramientas utilizadas en la realización de este libro:
- [Sketch](https://www.sketch.com)
- [Poppins font](https://fonts.adobe.com/fonts/poppins)

## Quiénes **Somos**

Todos los [editores]({{ site.url }}{{ site.baseurl }}/editors/) somos urólogos pediátricos experimentados con una serie de publicaciones revisadas por pares, capítulos en libros de texto y responsabilidad editorial de libros de texto y revistas a nuestro haber. La creencia de que "el conocimiento debe ser libre" es común a todos y con esto en mente, nosotros, junto con nuestros colaboradores, nuestro objetivo es difundir este conocimiento en urología pediátrica en un formato abierto en línea que es emocionante y (todavía) revolucionario desde que se lanzó la versión 1 en 2010. Por supuesto, la mejora continua es la clave del éxito continuo y, por lo tanto, estaríamos en deuda con sus comentarios. Ciertamente no podríamos haber hecho esto sin el apoyo y el consejo de nuestras familias.

Si bien toda la información de este sitio web está disponible de forma gratuita y de acceso abierto, [los editores]({{ site.url }}{{ site.baseurl }}/editors/) solicitarían que las personas ejerzan cortesía a [los contribuyentes]({{ site.url }}{{ site.baseurl }}/contributors/) para obtener los permisos necesarios para utilizar cualquier imagen o material digital de este trabajo.

Todo lo mejor,
Angela Arlen, PJ López, Mohan Gundeti y Kyle Rove