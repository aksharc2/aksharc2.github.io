---
layout: page
title: The ML Optimization Loop
permalink: /learning/ml-loop/
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


**Domain:** Machine Learning & Computation  
**Core Question:** What does it actually mean for a machine to "learn"?

---

## 1. Intuition & Key Message
Learning is not memorization; it is a continuous loop of adjustment. 

A model makes a **prediction** based on its current weights. It calculates the **loss** (how wrong it was), and then uses **optimization** (like Gradient Descent) to tweak its weights to make the error smaller next time.



---

## 2. The Math
A simple Mean Squared Error (MSE) loss function for a single prediction $$y$$ and true target $$t$$:

$$L = \frac{1}{2}(y - t)^2$$

During optimization, we update the weights $w$ by moving in the opposite direction of the gradient $$\nabla L$$:

$$w_{new} = w_{old} - \alpha \nabla L$$

*(where $$\alpha$$ is the learning rate)*

---

## 3. Connected Nodes
* **⬅️ Comes from:** [NumPy & Computation](/learning/numpy/)
* **➡️ Leads to:** [RL State Spaces](/learning/rl-state-spaces/) (Applying loops to agents interacting with environments).



<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/ai-and-robotics/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to AI Map</a>
