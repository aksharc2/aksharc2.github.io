---
layout: page
title: News
permalink: /news/
---

{% assign now_ts = "now" | date: "%s" | plus: 0 %}
{% assign cutoff = now_ts | minus: 31536000 %}

<ul class="news-list">
  {% for post in site.news %}
    {% assign post_time = post.date | date: "%s" | plus: 0 %}
    {% if post_time > cutoff %}
      <li>
        <span class="news-date">{{ post.date | date: "%b %d, %Y" }}</span>
        {{ post.content }}
      </li>
    {% endif %}
  {% endfor %}
</ul>