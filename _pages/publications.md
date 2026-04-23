---
layout: page
title: Publications
permalink: /publications/
nav: true
nav_order: 2
---

<style>
  .pubs-clean .bibliography {
    list-style: none;
    margin: 0;
    padding: 0;
  }

  .pubs-clean .bibliography li {
    position: relative;
    margin-bottom: 0.8rem;
    padding-left: 1.2rem;
  }

  .pubs-clean .bibliography li::before {
    content: "•";
    position: absolute;
    left: 0;
    top: 0.15rem;
    font-size: 1.5rem;
    line-height: 1;
    color: #444;
  }

  .pubs-clean .row {
    margin: 0 !important;
  }

  .pubs-clean .col-sm-12 {
    padding: 0 !important;
  }

  .pubs-clean .author,
  .pubs-clean .title,
  .pubs-clean .periodical {
    display: inline;
    font-size: 0.9rem;
    line-height: 1.3;
  }

  .pubs-clean .periodical + .periodical {
    display: none;
  }
</style>

<div class="pubs-clean">
  {% bibliography --sort_by year --order descending %}
  <!-- {% bibliography %} -->
</div>