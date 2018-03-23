---
layout: page
date: 2011-12-16
trad: apropos
locale: en
slug: about
---

Hello, I'm Raphaël, an associate professor at [CNAM][] (Conservatoire National
des Arts et Métiers) in Paris. I work in the [CÉDRIC][] computer science
laboratory, in the Vertigo team run by [Prof. Philippe Rigaux][philippe].
Before that, I was a post-doctoral student at the [L2TI][] laboratory, with
[Prof. Emmanuel Viennet][emmanuel], on the [AMMICO][] project (which aims at
improving museums exhibition guiding devices).

I did my Ph. D at the [LIP6][] laboratory with the [ComplexNetworks][www-cn]
team, under the supervision of [Matthieu Latapy][matthieu]. You may download a
[PDF version of the dissertation][these] (document in French). My research
interests are related to P2P networks and Internet measurement, and data mining.
I also studied paedophile activity in P2P networks. For more information, you
may want to have a look at my [resume][vitae].

For professional matters, contact me at:

    fournier@cnam.fr

My office is located at:

    Conservatoire National des Arts et Métiers
    Laboratoire CÉDRIC, Équipe Vertigo, B.P. 2D4P30

    Bâtiment Montgolfier
    2, rue Conté
    F-75141 Paris Cedex 03

    +33 (0)1 58 80 86 35

For personal matters, contact me at:

    raphael@fournier-sniehotta.fr

<hr>

## News 

<ul>
  {% for post in site.categories['news'] limit:4 %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ base_path }}{{ post.url }}">{{ post.title }}</a>
{% if post.place %}
@ {{ post.place }}
{% endif %}
</li>
  {% endfor %}
      <li><span>before</span> &raquo; <a href="{{ base_path }}news.html">all news</a></li>
</ul>

[vitae]: /about/vitae.html  "My Resume"
