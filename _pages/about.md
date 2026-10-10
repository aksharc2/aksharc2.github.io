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

<p>I am a researcher and systems engineer working at the intersection of <b>autonomous systems, robotics, and computing systems</b>. My doctoral research in Electrical and Computer Engineering at The Ohio State University, advised by Dr. Marco Brocanelli in the <a href="https://u.osu.edu/brocanelli/">Energy-Aware Systems Lab (EAS-Lab)</a>, focuses on improving the efficiency, reliability, and sustainability of resource-constrained autonomous systems.</p>

<p>My work combines <b>algorithm design, software development, and experimental systems engineering</b>. I am particularly interested in how computing resources, hardware limitations, energy consumption, and physical dynamics influence the behavior of autonomous systems. My research spans resource-aware autonomy, energy-efficient robotic navigation, battery-aware computing, edge computing, and parallel graph algorithms.</p>

<p>Beyond algorithm development, I have hands-on experience building and integrating robotic systems, including developing an autonomous mobile robot platform from the ground up. This work has involved embedded computing, sensing, motor control, power monitoring, ROS-based navigation, and software-hardware integration. Working across these components has shaped my interest in understanding how computation, communication, sensing, and physical execution interact in real robotic systems.</p>

<p>I also work on <b>simulation, validation, and system-level performance analysis</b>. My experience includes simulation-based testing, ROS data processing, debugging distributed and compute-intensive systems, and analyzing performance bottlenecks across software and hardware stacks. I am especially interested in making simulation more representative of real-world deployment, so that it can serve as a more reliable tool for evaluating autonomous systems before they are deployed in practice.</p>

<p>Alongside autonomous systems, I study how structural transformations and parallel algorithms improve the efficiency of large-scale graph processing. I also enjoy teaching and mentoring undergraduate and graduate students. Across research and engineering, I am motivated by problems that require both theoretical insight and practical implementation, and I enjoy turning technical ideas into working systems.</p>

</div>

<h2>News</h2>

{% assign now_ts = "now" | date: "%s" | plus: 0 %}
{% assign cutoff = now_ts | minus: 31536000 %}
{% assign sorted_news = site.news | sort: "date" | reverse %}

<div class="news-list">
  {% for post in sorted_news %}
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