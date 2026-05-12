---
layout: page
title: NumPy & Computation
permalink: /learning/numpy/
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
**Core Question:** How do we turn mathematical theory into efficient code?

---

## 1. Intuition & Key Message
Mathematical theory is only useful if we can compute it efficiently. **NumPy Arrays** are the fundamental data structures in Python that allow us to take abstract vectors, matrices, and datasets and process them instantly.

The most critical operation here is the **Dot Product**, which fuses inputs and model weights into a prediction.

---

## 2. The Math
The dot product of two vectors $$w$$ (weights) and $$x$$ (inputs) is the sum of their element-wise products:

$$w \cdot x = w_1x_1 + w_2x_2 + \dots + w_nx_n$$

---

## 3. The Computation

{% highlight python %}
import numpy as np

# A house: [size, bedrooms, age]
x = np.array([2000, 3, 10])

# Model weights for [size, bedrooms, age]
w = np.array([150, 10000, -500])

# Prediction using Dot Product
prediction = np.dot(w, x)
print(f"Predicted Price: ${prediction}")
{% endhighlight %}

---

## 4. Connected Nodes
* **⬅️ Comes from:** [Vector Spaces & Subspaces](/learning/vector-spaces/)
* **➡️ Leads to:** [The ML Optimization Loop](/learning/ml-loop/) (Using NumPy to train models).


<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/ai-and-robotics/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to AI Map</a>
