---
layout: page
title: Span, Basis & Independence
permalink: /learning/span-and-basis/
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

**Domain:** Mathematical Foundations  
**Core Question:** What are the limits of our data's representation, and how do we remove redundancy?

---

## 1. Intuition & Key Message
**Span** describes every possible point in space you can reach by stretching and combining your current features. 

**Linear Independence** ensures no vector is redundant. If you have a set of vectors that spans your entire space *and* is completely independent, you have a **Basis**—the most efficient toolkit needed to represent your data without wasting dimensions.



---

## 2. The Math
The span of vectors $$v_1, v_2$$ is all possible linear combinations:

$$\text{Span}(v_1, v_2) = \{av_1 + bv_2 \mid a, b \in \mathbb{R}\}$$

Vectors are linearly independent if the only solution to the following equation is when all coefficients $a_i$ equal zero:

$$a_1v_1 + a_2v_2 + \dots + a_nv_n = 0$$

---

## 3. The Computation

{% highlight python %}
import numpy as np

# A dataset with 3 features. Column 3 is exactly Col 1 + Col 2 (Redundant)
data = np.array([
    [1, 2, 3],
    [4, 5, 9],
    [7, 8, 15]
])

# Rank tells us the true dimension of our basis
rank = np.linalg.matrix_rank(data)
print(f"Independent dimensions (Basis size): {rank}")
# Output: 2
{% endhighlight %}

---

## 4. Connected Nodes
* **⬅️ Comes from:** [Vector Spaces & Subspaces](/learning/vector-spaces/)


<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/ai-and-robotics/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to AI Map</a>
