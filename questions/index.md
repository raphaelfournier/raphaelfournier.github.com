---
title: Questions
layout: page
date: 2011-12-16
slug: blog
locale: en
trad: fr/questionsfr
---

<ul class="postlist">
{% for post in site.categories['questions'] %}
  {% unless post.next %}
    <div class="annee">{{ post.date | date: '%Y' }}</div>
  {% else %}
    {% capture year %}<div class="annee">{{ post.date | date: '%Y' }}</div>{% endcapture %}
    {% capture nyear %}<div class="annee">{{ post.next.date | date: '%Y' }}</div>{% endcapture %}
    {% if year != nyear %}
      <div class="annee">{{ post.date | date: '%Y' }}</div>
    {% endif %}
  {% endunless %}
    <li>
      {% include post_item.html %}
    </li>
{% endfor %}
</ul>

