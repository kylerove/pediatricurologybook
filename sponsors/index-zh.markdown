---
layout: sponsors
title: 赞助商
description: 小儿泌尿外科书籍的赞助商列表。
thumbnail: sponsors.png
permalink: /sponsors/
lang: zh
breadcrumbs:
  - 
    title: 首页
    permalink: /
  - 
    title: 赞助商
    permalink: /sponsors/
toc: false
---

# 赞助商

这项工作由 [耶鲁大学医学院](https://medicine.yale.edu)、[科罗拉多儿童医院](https://www.childrenscolorado.org) 和 [美国大学 芝加哥医学](https://www.uchicagomedicine.org)。 [编辑部](/editors/) 和 [贡献者](/contributors/) 对内容和编辑决定拥有唯一的权力。 查看[利益冲突](/conflict-of-interest/) 声明了解详情。

# 关于赞助商

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_sponsors = site.data.sponsors %}
{% include sponsors-list.html sponsors=the_sponsors %}