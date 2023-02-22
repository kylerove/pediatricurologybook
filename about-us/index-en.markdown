---
layout: about-us
title: About Us
description: All about Pediatric Urology Book, its history, evolution, and ongoing mission.
thumbnail: about-us.png
permalink: /about-us/
lang: en
breadcrumbs:
  - 
    title: Home
    permalink: /
  - 
    title: About Us
    permalink: /about-us/
toc: false
---

# About **Us**

## Our **History**

{% assign the_timeline = site.data.about-us-timeline | where: "language",site.active_lang | first %}
{% include about-us-history.html timeline=the_timeline %}

Pediatric urology is an immensely varying specialty of congenital and acquired conditions ranging from phimosis, hydrocele, the palpable undescended testis, through common disorders such as urinary tract infection and bladder dysfunction, hydronephrosis and hypospadias, to rare tumors, posterior urethral valves, sex disorders, exstrophy-epispadias and cloacal anomalies.
{: .lead .drop-caps}

The scope and complexity of specialist pediatric urology practice is ever increasing, with advances in imaging, endoscopic treatment of vesicoureteral reflux and expansion of laparoscopic and robotic pediatric urology as some recent examples.

There are a number of courses and events that are available to residents/specialists in pediatric urology and other specialities related to pediatric urology to update their knowledge and keep up to date with developments. This is also possible via journal subscriptions either personal or institutional and textbooks of pediatric urology which are updated every few years.

Unfortunately not all of us are blessed with the facilities or the time that is required to keep abreast of developments in the field of pediatric urology in a timely fashion. Furthermore in many parts of the world, financial expenses to achieve this can be prohibitive.

What better way to achieve all these aims than with a pediatric urology online resource that is free, has open access and where all chapters and subsections are written by leaders in that particular field. Furthermore, the chapters will be updated several times a year keeping the readers up to date from the comfort of their own computer, smartphone or tablet. 

The [Pediatric Urology Book](/) has been divided into several sections. In each section, the chapter has been divided into subsections, each subsection being contributed by a specialist. For example, the urolithiasis chapter may have a section written by a nephrologist, an interventional radiologist and a pediatric urologist thereby giving the most comprehensive details for that particular section. In addition where relevant, photographs and video clips will be embedded in the chapter for viewing via the standard means.

## How Did We **Self-Publish**?

Self-publishing is not for the faint of heart. You need _someone_ with knowledge of the internet (web servers, [hosting services](https://digitalocean.com), [domain names](https://cloudflare.com), HTML, CSS, Javascript) and frameworks to string it all together ([Git](https://git-scm.com), [GitHub](https://github.com), [Bootstrap](https://getbootstrap.com), [JQuery](https://jquery.com), [Ruby](https://www.ruby-lang.org/en/), [PanDoc](https://pandoc.org), [CSL](https://citationstyles.org/), and a sprinkling of [Perl](https://www.perl.org) and [Python](https://www.python.org)).

Some key open source projects helped get this over the finish line:
- [AnyStyle.io](https://anystyle.io) (parsed the raw references from authors' original submissions)
- [doi4bib](https://github.com/sharkovsky/doi4bib) (allowed us to find and locate DOI and PubMed links for references)
- [CiteProc-Ruby](https://github.com/inukshuk/citeproc-ruby) (allowed us to display the references in a pretty format)
- [Porto Website Template](https://themeforest.net/item/porto-responsive-html5-template/4106987) (gives the website visual structure)
- [Jekyll](https://jekyllrb.com) (truly the glue for the project, bringing together all the content into the final website)

Other tools used in the making of this book:
- [Sketch](https://www.sketch.com)
- [Poppins font](https://fonts.adobe.com/fonts/poppins)

## Who **We Are**

We the [editors]({{ site.url }}{{ site.baseurl }}/editors/) are all experienced pediatric urologists with a number of peer reviewed publications, chapters in textbooks and editorial responsibility for textbooks and journals to our credit. The belief that “Knowledge should be free” is common to all and with this in mind, we along with our contributors aim to spread this knowledge in pediatric urology in an open online format that is exciting and (still) revolutionary since version 1 came out in 2010. Of course continual improvement is the key to continued success and we would therefore be indebted for your feedback. We certainly could not have done this without the support and advice from our families.

While all information on this website is freely available and open access, the [editors]({{ site.url }}{{ site.baseurl }}/editors/) would request that individuals exercise courtesy to the [contributors]({{ site.url }}{{ site.baseurl }}/contributors/) in obtaining the necessary permissions to use any images or digital material from this work.

All the best,  
Angela Arlen, PJ López, Mohan Gundeti, & Kyle Rove