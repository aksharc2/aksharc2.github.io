---
layout: page
title: RL State Spaces
permalink: /learning/rl-state-spaces/
math: true
---

<script>
  window.MathJax = {
    tex: {
      inlineMath: [['$', '$']],
      displayMath: [['$$', '$$']]
    }
  };
</script>
<script async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"></script>


**Domain:** Reinforcement Learning & Robotics  
**Core Question:** How do we represent a robot's environment so an agent can learn from it?

---

## 1. Intuition & Key Message
In Reinforcement Learning (RL), an agent learns by interacting with an environment. To do this mathematically, the environment must be defined as a **State Space**.

Just like in standard Machine Learning, the state of the environment (e.g., a robot's joint angles, velocity, and sensor readings) is bundled into a single **Vector**. The rules of vector spaces govern how these states transition over time as the agent takes action.

---

## 2. The Math
A state $s_t$ at time $t$ is often a vector $s_t \in \mathbb{R}^n$. When the agent takes an action $a_t$, the environment transitions to a new state $s_{t+1}$ and returns a reward $r_t$:

$$s_{t+1}, r_t = \text{Environment}(s_t, a_t)$$

---

## 3. Connected Nodes
* **⬅️ Comes from:** [The ML Optimization Loop](/learning/ml-loop/)
* *(More RL topics coming soon!)*

<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/ai-and-robotics/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to AI Map</a>
