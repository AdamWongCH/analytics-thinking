# Lesson: Social Network Analytics

---

## Objective

Understand how to analyse relationships using network thinking.

---

## Why This Matters

Some important insights are not in individual data points.

They are in:

* connections between people
* patterns of interaction
* flow of information

Network analysis helps us understand:

> **how entities are connected and how influence flows**

---

## The Common Mistake

Many learners focus only on:

* individual variables

But miss:

> how entities are connected

This means important patterns may be overlooked.

---

## What is a Network?

A network consists of:

* **nodes** → entities (e.g. students)
* **edges** → relationships (e.g. interactions)

Instead of analysing rows of data, we analyse connections.

---

## Worked Example

Consider students interacting in a forum:

* Student A replies to Student B
* Student B replies to Student C
* Student C replies to Student A

This forms a network of interactions.

---

## Key Concepts

### Degree

Number of connections a node has

→ how connected an entity is
→ identifies active or popular participants

---

### Centrality

Measures how important a node is in the network

Different measures capture different types of importance.

---

## Types of Centrality

### Degree Centrality

→ number of direct connections
→ identifies active or popular nodes

---

### Betweenness Centrality

→ how often a node connects different parts of the network
→ identifies **bridges** between groups

> Not all important nodes are the most connected.
> Some are important because they connect others.

---

### Closeness Centrality

→ how close a node is to all others
→ identifies nodes that can quickly reach others

---

### Eigenvector Centrality (Optional)

→ importance based on connections to important nodes
→ identifies **influential nodes among influential nodes**

---

## Interpretation

Network analysis helps answer:

* Who is highly connected?
* Who connects different groups?
* Who can influence others quickly?
* Who is isolated?

---

## When to Use This

Use network analysis when:

* relationships matter
* interactions are important
* influence or spread is relevant

Examples:

* student discussion forums
* social media interactions
* collaboration networks

---

## Common Pitfall

A common mistake is to:

* assume all connections are equally important
* over-interpret weak connections
* confuse connection with influence

Always consider:

* context
* strength of relationships
* meaning behind connections

---

## How this connects

In the exercise, you will:

* interpret simple network diagrams

In the lab, you will:

* build a network
* compute centrality measures
* interpret the results

---

## Key Takeaway

Network analysis helps you:

> **understand relationships, influence, and structure — not just data points**
