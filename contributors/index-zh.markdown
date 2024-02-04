---
layout: contributors
title: 贡献者
description: 儿科泌尿外科书籍的所有全球贡献者名单。
thumbnail: contributors.png
permalink: /contributors/
lang: en
breadcrumbs:
  - 
    title: Home
    permalink: /
  - 
    title: 贡献者
    permalink: /contributors/
toc: true
---

# 贡献者

## 地理代表

<img src="/assets/site-img/contributor-map.svg" class="img-fluid" style="width:100%" alt="小儿泌尿外科书籍贡献者的地理代表性">

我们非常幸运能够与来自世界各地的 140 多位贡献者合作，通过他们对本书的贡献分享他们的专业知识。 一些数字与我们的读者分享：

- {{ site.data.contributors.size }} 贡献者
- 作者来自 6 大洲的 23 个不同国家
- 66章 _（即将推出2章）_
- 386 数字
- 84桌
- 2,968 条参考文献 (!)

## 贡献者按部分

{% assign the_translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sections = site.data.sections | sort: "number" %}
{% for section in the_sections %}
    {% assign the_title = section.titles | where: "language",site.active_lang | first %}
    {% assign the_section_number = section.number | floor %}
    {% if the_section_number != 0 %}

### <span>{{ the_section_number }}</span> {{ the_title.title }}
---------------

    {% assign section_chapters = site.chapters | where: "section", forloop.index0 | sort: "sort-key" %}
    {% include contributors-list.html chapters=section_chapters translation=the_translation %}
    
    {% endif %}
{% endfor %}