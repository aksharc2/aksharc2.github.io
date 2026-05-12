---
layout: page
title: Operating Systems Map
permalink: /learning/operating-systems/
---

> **The magic of software is just hardware that has been convinced to cooperate.**

This map connects the core concepts of Operating Systems: how processes are managed, how memory is allocated, and how concurrency is handled safely.

* **Purple:** Process & CPU Management
* **Teal:** Memory Architecture
* **Blue:** OS Foundations

<div id="os-network" style="width: 100%; height: 600px; border: 1px solid #e2e8f0; border-radius: 12px; background-color: #fafafa; margin-top: 2rem; margin-bottom: 2rem;"></div>

<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> All Learning Tracks</a>

<script type="text/javascript" src="https://unpkg.com/vis-network/standalone/umd/vis-network.min.js"></script>

<script type="text/javascript">
  var nodes = new vis.DataSet([
    { id: 'OS_Intro', label: 'OS Foundations & Kernel', group: 'foundation' },
    { id: 'Process', label: 'Processes & Execution', group: 'process' },
    { id: 'Threads', label: 'Threads & Concurrency', group: 'process' },
    { id: 'Sched', label: 'CPU Scheduling', group: 'process' },
    { id: 'Memory', label: 'Memory Management', group: 'memory' },
    { id: 'Virtual', label: 'Virtual Memory & Paging', group: 'memory' }
  ]);

  var edges = new vis.DataSet([
    { from: 'OS_Intro', to: 'Process' },
    { from: 'OS_Intro', to: 'Memory' },
    { from: 'Process', to: 'Threads' },
    { from: 'Process', to: 'Sched' },
    { from: 'Memory', to: 'Virtual' }
  ]);

  var pageLinks = {
    'OS_Intro': '/learning/os-foundations/',
    'Process': '/learning/os-processes/',
    'Threads': '/learning/os-threads/',
    'Sched': '/learning/os-scheduling/',
    'Memory': '/learning/os-memory/',
    'Virtual': '/learning/os-virtual-memory/'
  };

  var container = document.getElementById('os-network');
  var data = { nodes: nodes, edges: edges };
  var options = {
    nodes: { shape: 'box', margin: 14, font: { size: 16, face: 'system-ui, sans-serif' }, borderWidth: 2, shadow: true },
    edges: { width: 2, color: { color: '#cbd5e1', highlight: '#94a3b8' }, arrows: { to: { enabled: true, scaleFactor: 0.5 } }, smooth: { type: 'continuous' } },
    groups: {
      foundation: { color: { background: '#eff6ff', border: '#3b82f6' }, font: { color: '#1e3a8a' } },
      process: { color: { background: '#faf5ff', border: '#a855f7' }, font: { color: '#581c87' } },
      memory: { color: { background: '#f0fdfa', border: '#14b8a6' }, font: { color: '#134e4a' } }
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
The concepts mapped in this track are synthesized from my own learning journey. If you want to dive deeper into the rigorous proofs and extended theories, I highly recommend the foundational texts that power this map:

* **Operating System Concepts** by Abraham Silberschatz, Peter B. Galvin, and Greg Gagne.