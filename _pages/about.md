---
layout: about
title: About
permalink: /
# subtitle: <a href='https://u.osu.edu/brocanelli1/research/'>EAS-Lab</a>, ECE Dept., The Ohio State University, Columbus, Ohio, USA

profile:
  align: right
  image: prof_pic_1.jpg
  image_circular: true # crops the image to make it circular
  # more_info: >
  #   <p>805 Dreese Laboratory</p>
  #   <p>2015 Neil Ave,</p>
  #   <p>Columbus, OH 43210</p>

news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page
---

<div style="text-align: justify; line-height: 1.5;">

<p>I am a Ph.D. candidate in the Department of Electrical and Computer Engineering at The Ohio State University. I work in the <a href="https://u.osu.edu/brocanelli/">Energy-Aware Systems Lab (EAS-Lab)</a> and am advised by Dr. Marco Brocanelli. My research lies at the intersection of <b>autonomous systems, edge computing, and cyber-physical systems</b>, with a focus on designing systems that operate efficiently under constraints in computation, communication, energy, and physical capability.</p>

<p>A central theme of my work is developing <b>resource-aware, safety-aware, and physics-aware</b> algorithms that account for the long-term effects of autonomy, including battery degradation, hardware limitations, and environmental uncertainty. My goal is to enable autonomous systems that are not only high-performing, but also <b>reliable, efficient, and sustainable over extended operation</b>.</p>

<p>I validate these ideas through both algorithmic design and experimental systems, including real-world robotic platforms and hardware-in-the-loop testing. My work has appeared in venues such as <i>IEEE Transactions on Mobile Computing</i> and <i>Networks</i>.</p>

<p>In addition to research, I am actively involved in teaching and mentoring, having served as an Instructor of Record and as a mentor to undergraduate and graduate researchers. I am interested in pursuing a faculty career focused on building a research program in sustainable and dependable autonomous systems.</p>

</div>

<h2>News</h2>

{% assign now_ts = "now" | date: "%s" | plus: 0 %}
{% assign cutoff = now_ts | minus: 31536000 %}

<div class="news-list">
  {% for post in site.news %}
    {% assign post_time = post.date | date: "%s" | plus: 0 %}
    {% if post_time > cutoff %}
      <div class="news-item">
        <div class="news-date">
          {{ post.date | date: "%b %d, %Y" }}
        </div>
        <div class="news-text">
          {{ post.content }}
        </div>
      </div>
    {% endif %}
  {% endfor %}
</div>

<style>
  .news-item {
    display: grid;
    grid-template-columns: 140px 1fr;
    gap: 0.5rem;
    margin-bottom: 0.9rem;
  }

  .news-date {
    font-weight: 300;
    color: var(--global-text-color);
    white-space: nowrap;
  }

  .news-text {
    line-height: 1.5;
  }

  @media (max-width: 768px) {
    .news-item {
      grid-template-columns: 1fr;
    }

    .news-date {
      margin-bottom: 0.2rem;
    }
  }
</style>