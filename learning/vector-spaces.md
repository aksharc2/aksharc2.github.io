---
layout: page
title: Vector Spaces & Subspaces
permalink: /learning/vector-spaces/
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
**Core Question:** What are the mathematical rules of the environment where our data lives?

---

## 1. Intuition & Key Message
A **Vector Space** is a controlled mathematical environment where data lives. Whether you are looking at an image, a sentence, or a robot's sensor readings, that information is translated into vectors inside this space. 

Within these massive environments, we find **Subspaces**. A subspace is a smaller, flat structure (like a line or plane) inside the larger space. Real-world data might technically exist in thousands of dimensions, but the actual meaningful patterns usually lie on a much smaller, lower-dimensional subspace.



---

## 2. The Math
A vector space guarantees **closure**. If $$u$$ and $$v$$ are in the space, and $$c$$ is a scalar:
1. **Addition:** $$u+v$$ must also be in the space.
2. **Scalar Multiplication:** $$c\cdot u$$ must also be in the space.

If a subset of this space also follows these exact same rules (and contains the zero vector $$\vec{0}$$), it is a **Subspace**.

---

## 3. Connected Nodes
* **⬅️ Comes from:** [Linear Algebra](/learning/linear-algebra/)
* **➡️ Leads to:** [Span, Basis & Independence](/learning/span-and-basis/) (How we define the limits of these spaces).
* **➡️ Leads to:** [NumPy & Computation](/learning/numpy/) (How we build these spaces in code).


<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/ai-and-robotics/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to AI Map</a>
