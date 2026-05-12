---
layout: page
title: Learning
permalink: /learning/
description: A directory of interactive learning maps and deep-dive notes.
nav: true
nav_order: 5
---

Welcome to the digital garden. Instead of chronological notes, information here is structured as connected, interactive maps. 

Choose a core track below to explore the concepts, see how they connect, and dive into the math and code.

<div class="track-grid">

  <a href="/learning/ai-and-robotics/" class="track-card">
    <div class="track-icon">🤖</div>
    <h3>Machine Learning & Robotics</h3>
    <p>From linear algebra and NumPy to neural networks and reinforcement learning state spaces.</p>
  </a>

  <a href="/learning/operating-systems/" class="track-card">
    <div class="track-icon">⚙️</div>
    <h3>Operating Systems</h3>
    <p>Processes, memory management, concurrency, and how software talks to hardware.</p>
  </a>

</div>

<style>
  .track-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 1.5rem;
    margin-top: 2rem;
  }
  
  .track-card {
    display: block;
    padding: 2rem 1.5rem;
    border: 1px solid var(--global-divider-color, #e2e8f0);
    border-radius: 12px;
    text-decoration: none !important;
    background: var(--global-bg-color, #ffffff);
    transition: transform 0.2s ease, box-shadow 0.2s ease;
    color: inherit;
    text-align: center;
  }
  
  .track-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.05);
  }

  .track-icon {
    font-size: 2.5rem;
    margin-bottom: 1rem;
  }
  
  .track-card h3 {
    margin-top: 0;
    font-size: 1.4rem;
    margin-bottom: 0.75rem;
  }
  
  .track-card p {
    margin: 0;
    font-size: 0.95rem;
    opacity: 0.8;
    line-height: 1.5;
  }
</style>