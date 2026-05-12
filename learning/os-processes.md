---
layout: page
title: Processes & Execution
permalink: /learning/os-processes/
math: true
---

<script>
  window.MathJax = { tex: { inlineMath: [['$', '$']], displayMath: [['$$', '$$']] } };
</script>
<script async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"></script>


**Domain:** Process & CPU Management  
**Core Question:** How does the operating system turn a static program into a running entity?

---

## 1. Intuition & Key Message
A program is just a passive set of instructions sitting on a disk. A **Process** is a program in execution. 

The operating system manages multiple processes at once by creating a Process Control Block (PCB) for each one, allowing it to pause a process, switch to another, and resume later without the program ever realizing it was interrupted.



---

## 2. The Logic & Math
When an OS context switches between Process $$P_1$$ and Process $$P_2$$, it must save the state of $$P_1$$ into its PCB and load the state of $$P_2$$  from its PCB. 

Let $$T_{save}$$be the time to save state, and $$T_{load}$$ be the time to load state. The total overhead time $$T_{overhead}$$ for a context switch is:

$$T_{overhead} = T_{save} + T_{load}$$

During $$T_{overhead}$$, the CPU does absolutely no useful work.

---

## 3. The Computation (C Code Example)
{% highlight c %}
#include <stdio.h>
#include <unistd.h>

int main() {
    // Forking creates a new child process
    pid_t pid = fork();

    if (pid == 0) {
        printf("I am the child process!\n");
    } else if (pid > 0) {
        printf("I am the parent process. Child PID is %d\n", pid);
    } else {
        printf("Fork failed.\n");
    }

    return 0;
}
{% endhighlight %}

---

## 4. Connected Nodes
* **⬅️ Comes from:** [OS Foundations](/learning/os-foundations/)
* **➡️ Leads to:** [Threads & Concurrency](/learning/os-threads/) (Breaking a process down into smaller, shared-memory execution units).
* **➡️ Leads to:** [CPU Scheduling](/learning/os-scheduling/) (How the OS decides which process runs next).


<style>
  .map-return-btn { display: inline-flex; align-items: center; gap: 8px; padding: 8px 14px; margin-bottom: 1.5rem; background: rgba(128,128,128,0.1); color: #555; border-radius: 8px; text-decoration: none !important; font-size: 0.9rem; font-weight: 600; transition: all 0.2s ease; border: 1px solid transparent; }
  .map-return-btn:hover { background: #fff; color: #4299e1; border-color: #4299e1; transform: translateX(-4px); box-shadow: 0 4px 10px rgba(0,0,0,0.05); }
</style>
<a href="/learning/operating-systems/" class="map-return-btn"><svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg> Back to OS Map</a>


