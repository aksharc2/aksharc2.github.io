---
layout: page
title: AI & Robotics Map
permalink: /learning/ai-and-robotics/
---

> **Most people don't struggle with machine learning because the math is too hard. They struggle because the concepts are taught in isolation.**

You learn vectors, then matrices, then optimization—but the invisible threads connecting them often remain hidden. Everything feels like scattered puzzle pieces instead of a unified system. 

This space is built as a **map**, not a list. It connects the dots from raw numbers to intelligent, acting robots.

* **Nodes** are the core concepts (the *what* and the *why*).
* **Edges** are the transitions (how one idea physically powers the next).
* **Colors** guide your domain (Math, Code, or Robotics).

**How to explore:** Drag the graph around, find a topic that sparks your curiosity, and follow the connections. Whenever an idea feels unclear, just follow the line backward.

<div id="learning-network" style="width: 100%; height: 600px; border: 1px solid #e2e8f0; border-radius: 12px; background-color: #fafafa; margin-top: 2rem;"></div>


<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> All Learning Tracks</a>


<script type="text/javascript" src="https://unpkg.com/vis-network/standalone/umd/vis-network.min.js"></script>

<script type="text/javascript">
  var nodes = new vis.DataSet([
    { id: 'LA', label: 'Linear Algebra', group: 'math' },
    { id: 'VS', label: 'Vector Spaces & Subspaces', group: 'math' },
    { id: 'Span', label: 'Span, Basis & Independence', group: 'math' },
    { id: 'NP', label: 'NumPy & Computation', group: 'ml' },
    { id: 'MLLoop', label: 'The ML Optimization Loop', group: 'ml' },
    { id: 'RLState', label: 'RL State Spaces', group: 'rl' }
  ]);

  var edges = new vis.DataSet([
    { from: 'LA', to: 'VS' },
    { from: 'VS', to: 'Span' },
    { from: 'VS', to: 'NP' },
    { from: 'NP', to: 'MLLoop' },
    { from: 'MLLoop', to: 'RLState' }
  ]);

  var pageLinks = {
    'LA': '/learning/linear-algebra/',
    'VS': '/learning/vector-spaces/',
    'Span': '/learning/span-and-basis/',
    'NP': '/learning/numpy/',
    'MLLoop': '/learning/ml-loop/',
    'RLState': '/learning/rl-state-spaces/'
  };

  var container = document.getElementById('learning-network');
  var data = { nodes: nodes, edges: edges };
  var options = {
    nodes: { shape: 'box', margin: 14, font: { size: 16, face: 'system-ui, sans-serif' }, borderWidth: 2, shadow: true },
    edges: { width: 2, color: { color: '#cbd5e1', highlight: '#94a3b8' }, arrows: { to: { enabled: true, scaleFactor: 0.5 } }, smooth: { type: 'continuous' } },
    groups: {
      math: { color: { background: '#eef2ff', border: '#6366f1' }, font: { color: '#312e81' } },
      ml: { color: { background: '#f0fdf4', border: '#22c55e' }, font: { color: '#14532d' } },
      rl: { color: { background: '#fff7ed', border: '#f97316' }, font: { color: '#7c2d12' } }
    },
    physics: { barnesHut: { gravitationalConstant: -3000, centralGravity: 0.3, springLength: 150 }, stabilization: { iterations: 150 } },
    interaction: { hover: true, zoomView: true, dragView: true }
  };

  var network = new vis.Network(container, data, options);

  network.on("click", function (params) {
    if (params.nodes.length > 0) {
      var nodeId = params.nodes[0];
      if (pageLinks[nodeId]) {
        window.location.href = pageLinks[nodeId];
      }
    }
  });
</script>



---

## Core References & Further Reading

The concepts mapped in this track are synthesized from my own learning journey. If you want to dive deeper into the rigorous proofs, algorithms, and extended theories, I highly recommend the foundational texts that power this map:

* **The Math & ML Foundation:** *Mathematics for Machine Learning* by Marc Peter Deisenroth, A. Aldo Faisal, and Cheng Soon Ong.
* **The Deep Learning Core:** *Deep Learning* by Ian Goodfellow, Yoshua Bengio, and Aaron Courville.
* **The Reinforcement Learning Engine:** *Reinforcement Learning: An Introduction* by Richard S. Sutton and Andrew G. Barto.