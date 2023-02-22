---
layout: about-us
title: 关于我们
description: 关于小儿泌尿外科书籍、它的历史、演变和正在进行的任务。
thumbnail: about-us.png
permalink: /about-us/
lang: zh
breadcrumbs:
  - 
    title: 首页
    permalink: /
  - 
    title: 关于我们
    permalink: /about-us/
toc: false
---

# 关于**我们**

## 我们**的历史**

{% assign the_timeline = site.data.about-us-timeline | where: "language",site.active_lang | first %}
{% include about-us-history.html timeline=the_timeline %}

儿科泌尿科是先天性和后天性疾病的一个截然不同的专业，从包茎、脑积水、明显的未降睾丸，到泌尿路感染和膀胱功能障碍、肾积水和间盘下等常见疾病，再到罕见肿瘤、后尿道瓣膜、性疾病、萎缩性间盘和泄物异常。
{: .lead .drop-caps}

儿科泌尿科实践的范围和复杂性不断增加，随着成像、内窥镜下输尿管反流治疗以及腹腔镜和机器人儿科泌尿科的扩展作为最近一些例子。

有一些课程和活动可供儿科泌尿学和其他与儿科泌尿科相关的专业的居民/专家使用，以更新他们的知识并跟上最新发展。这也可以通过订阅个人或机构期刊以及每隔几年更新的儿科泌尿科教科书。

不幸的是，并非我们所有人都有必要的设施或时间，以便及时跟上儿科泌尿科领域的发展。此外，在世界许多地方，实现这一目标的财政支出可能令人望而却步。

没有什么比免费、开放访问且所有章节和子部分都由该领域的领导者撰写的儿科泌尿科在线资源更好的方法来实现所有这些目标。此外，这些章节将每年更新几次，让读者在舒适的电脑、智能手机或平板电脑上保持最新状态。

《[儿科泌尿科书](/)》分为几个部分。在每个部分中，该章被分为小节，每个小节由一名专家贡献。例如，尿石症一章可能有由肾科医生、介入放射科医生和儿科泌尿科医生撰写的部分，从而为该部分提供了最全面的细节。此外，在相关情况下，照片和视频剪辑将嵌入到该章节中，以便通过标准方式观看。

## 我们是如何**自我发布的**？

自我出版不适合胆小的人。您需要了解互联网（网络服务器、[Digital Ocean](https://digitalocean.com)、[Cloudflare](https://cloudflare.com)、HTML、CSS、Javascript）和框架的人将其串联在一起（[Git](https://git-scm.com)、[GitHub](https://github.com)、[Bootstrap](https://getbootstrap.com)、[JQuery](https://jquery.com)、[Ruby](https://www.ruby-lang.org/en/)、[PanDoc](https://pandoc.org)、[CSL](https://citationstyles.org/)以及[Perl](https://www.perl.org)和[Python](https://www.python.org)的洒水）。

一些关键的开源项目帮助它越过了终点线：
- [AnyStyle.io](https://anystyle.io) (解析作者原始提交的原始引用)
- [doi4bib](https://github.com/sharkovsky/doi4bib) (允许我们查找和定位DOI和PubMed链接以供参考)
- [CiteProc-Ruby](https://github.com/inukshuk/citeproc-ruby) (允许我们以漂亮的格式显示引用)
- [Porto Website Template](https://themeforest.net/item/porto-responsive-html5-template/4106987) (提供网站视觉结构)
- [Jekyll](https://jekyllrb.com) (真的是该项目的粘合剂，将所有内容汇总到最终网站中)

制作这本书时使用的其他工具：
- [Sketch](https://www.sketch.com)
- [Poppins font](https://fonts.adobe.com/fonts/poppins)

## 关于我们

我们[编辑]({{ site.url }}{{ site.baseurl }}/editors/)都是经验丰富的儿科泌尿科医生，我们有很多同行评审的出版物、教科书章节以及教科书和期刊的编辑责任。“知识应该是免费的”是所有人共同的，考虑到这一点，我们和贡献者的目标是以开放的在线形式传播儿科泌尿科的知识，自2010年版本1问世以来，这种形式令人兴奋，（仍然）是革命性的。当然，持续改进是持续成功的关键，因此，我们感谢您的反馈。没有家人的支持和建议，我们当然不可能做到这一点。

虽然本网站上的所有信息都是免费和开放访问的，但[编辑]({{ site.url }}{{ site.baseurl }}/editors/)将要求个人礼貌地向[贡献者]({{ site.url }}{{ site.baseurl }}/contributors/)寻求使用本作品中的任何图像或数字材料的必要许可。

祝你一切顺利， 
Angela Arlen、PJ López、Mohan Gundeti、Kyle Rove