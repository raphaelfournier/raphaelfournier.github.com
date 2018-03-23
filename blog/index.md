---
title: Blog
layout: page
date: 2011-12-16
slug: blog
locale: en
trad: fr/blog
---

<ul class="postlist">
{% for post in site.categories['blog'] %}
    {% capture this_year %}{{ site.categories['blog'][forloop.index0].date | date: "%Y" }}{% endcapture %}
{% comment %}<!--
# forloop.index est le suivant dans la liste des posts. post.previous va
# chercher des posts d'autres categories.
-->{% endcomment %}
    {% capture next_year %}{{ site.categories['blog'][forloop.index].date | date: "%Y" }}{% endcapture %}
  
    {% if forloop.first %}
      <h2>{{this_year}}</h2>
      <ul>
    {% endif %}
  
    <li><span>{{ post.date | date: "%m/%d" }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a> <span class="lang">({{ post.lang  }})</span></li>
  
    {% if forloop.last %}
      </ul>
    {% else %}
      {% if this_year != next_year %}
        </ul>
        <h2>{{next_year}}</h2>
          <ul>
      {% endif %}
    {% endif %}
{% endfor %}
</ul>

<hr>
<h2>Tags</h2>
{% include tag_cloud.html %}
