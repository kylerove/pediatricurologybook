---
layout: home
title: 主页
description: 这本免费的小儿泌尿外科在线书籍 2.0 版包含经常更新的主题，例如肾积水的管理、尿道下裂技术、尿路感染的治疗方法、关于肠和膀胱功能障碍的信息、神经源性膀胱、小儿泌尿肿瘤学等等。
thumbnail: home.png
permalink: /
js: /assets/vendor/owl.carousel/owl.carousel.min.js
lang: zh
breadcrumbs: 
  - 
    title: 主页
    permalink: /
toc: false
---

{% assign translation = site.data.translations | where: "language",site.active_lang | first %}
{% assign the_highlights = site.data.home-highlights | where: "language",site.active_lang | first %}
{% include home-highlights.html highlights=the_highlights %}

{% assign the_intro = site.data.home-intro | where: "language",site.active_lang | first %}
{% include home-intro.html intro=the_intro %}

{% assign the_reasons = site.data.home-reasons_to_read | where: "language",site.active_lang | first %}
{% include home-reasons_to_read.html reasons=the_reasons %}

{% include home-about_us.html %}

{% assign the_sponsors = site.data.sponsors %}
{% include home-sponsors.html sponsors=the_sponsors %}