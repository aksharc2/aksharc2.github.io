---
layout: page
title: Linear Algebra
permalink: /learning/linear-algebra/
math: true
---

<script>
  window.MathJax = { tex: { inlineMath: [['$', '$']], displayMath: [['$$', '$$']] } };
</script>
<script async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"></script>


**Domain:** Mathematical Foundations  
**Core Question:** How do we represent, transform, and reason about data geometrically and computationally?

> **One-Line Summary:** Linear algebra provides the mathematical framework to represent, transform, and learn from data.

---

## 1. What Is Linear Algebra?
Linear algebra is the study of vectors (data points), matrices (collections of vectors or transformations), and linear operations (addition, scaling, multiplication). It focuses purely on systems where relationships are linear—meaning no curves, just straight-line behavior.

### Intuition
Think of it as a toolkit for working with data geometrically and computationally. It is a way to:
* Represent data as points in space.
* Move and transform those points.
* Find hidden patterns and structure in that space.

---

## 2. Why Do We Need This?
Linear algebra is the absolute language of machine learning. Without it, modern ML and RL would not exist. We need it to:
* **Represent data** in a structured way (vectors, matrices).
* **Perform computations** efficiently (dot products, matrix multiplication).
* **Understand the geometry** of data (distance, direction, projection).
* **Optimize models** (algorithms like gradient descent operate entirely on vectors).

---

## 3. Core Concepts (What You Will Actually Use)
Instead of abstract math, here is how the core concepts directly translate to practical tools:
* **Vectors** $$\rightarrow$$ Represent the data itself.
* **Dot Product** $$\rightarrow$$ Measure similarity and make predictions.
* **Matrices** $$\rightarrow$$ Represent datasets and mathematical transformations.
* **Linear Independence** $$\rightarrow$$ Detect redundancy in features.
* **Subspaces** $$\rightarrow$$ Capture the underlying structure of the data.
* **Eigenvectors** $$\rightarrow$$ Find the most important directions (used in PCA).

---

## 4. The ML / RL Connection
How do these mathematical rules map to an actual machine learning or reinforcement learning system?
* **Input Data** $$\rightarrow$$ Becomes Vectors.
* **Model Parameters (Weights)** $$\rightarrow$$ Become Vectors and Matrices.
* **The Prediction** $$\rightarrow$$ Is just a Dot Product or Matrix Multiplication.
* **Training the Model** $$\rightarrow$$ Is the process of adjusting vectors to minimize loss.
* **Dimensionality Reduction (PCA)** $$\rightarrow$$ Is subspace learning using eigenvectors.

---

## 5. The Math & Computation
In linear algebra, if we have a matrix $$A$$ (representing a transformation or our model's weights) and a vector $$x$$ (representing a data point), the core transformation is simply:

$$y = Ax$$

Here, $$y$$ is the new, transformed output vector. 

{% highlight python %}
import numpy as np

# A simple linear transformation
# A: Model weights (2x2 matrix)
A = np.array([
    [2.0, 0.0], 
    [0.0, 1.5]
])

# x: Input data point (vector)
x = np.array([1.0, 1.0])

# Apply transformation (Matrix-Vector multiplication)
y = np.dot(A, x)

print(f"Transformed vector: {y}")
# Output: [2.  1.5]
{% endhighlight %}

---

## 6. Connected Nodes
* **➡️ Leads to:** [Vector Spaces & Subspaces](/learning/vector-spaces/) (The environment where these vectors live).


<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/ai-and-robotics/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to AI Map</a>
