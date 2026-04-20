# Lab Solutions: Social Network Analytics (Guided)

---

## Step 1: Exploring the Interaction Data

The dataset records directed interactions between students.

Each row shows:

* a **source** student
* a **target** student

This means the network captures who interacts with whom, rather than just individual activity levels.

A useful first observation is to look for students who appear often in the interaction list, as they may be more central in the network.

---

## Step 2: Building the Network

In the network:

* students are represented as **nodes**
* interactions are represented as **edges**

This allows us to move from table-based analysis to relationship-based analysis.

Instead of asking only:

* how active is a student?

we can now also ask:

* who is connected to whom?
* who acts as a bridge?
* who may be isolated?

---

## Step 3: Understanding the Network Structure

A strong response should describe:

* how many students are in the network
* how many connections exist
* whether the network looks dense, sparse, centralised, or loosely connected

In a small teaching example like this, the goal is not to generalise broadly, but to learn how to interpret structure.

---

## Step 4: Visualising the Network

The network diagram helps reveal:

* which students are centrally located
* which students appear on the edge of the network
* whether some students connect multiple parts of the network

A good response should not rely only on the picture, but use it to support interpretation.

---

## Step 5: Degree Centrality

Degree centrality helps identify how connected a student is.

In a directed network, we distinguish between:

* **in-degree** → how many incoming interactions a student receives
* **out-degree** → how many outgoing interactions a student initiates

Possible interpretations:

* high **in-degree** may suggest a student is frequently replied to or interacted with
* high **out-degree** may suggest a student is highly active in reaching out to others

---

## Step 6: Betweenness Centrality

Betweenness centrality helps identify students who act as bridges between others.

A student with high betweenness centrality may:

* connect different parts of the network
* help information or interaction flow between groups
* occupy an important structural position even if they are not the most connected overall

This is important because:

> not all influential nodes are the most popular nodes

---

## Step 7: Closeness Centrality

Closeness centrality helps identify students who are well-positioned in the network.

A student with high closeness centrality can:

* reach others relatively efficiently
* occupy a central position in terms of distance

This is useful when thinking about:

* how quickly information may spread
* who may be well-placed to influence others indirectly

---

## Step 8: Eigenvector Centrality

Eigenvector centrality helps identify nodes that are connected to other important nodes.

A student with high eigenvector centrality is not just connected, but connected to students who are themselves influential.

This helps capture a more refined idea of influence.

---

## Step 9: Interpreting the Network as a Whole

A strong interpretation should consider:

* who appears central
* who may be bridging different parts of the network
* who may be isolated or weakly connected
* what the network structure suggests about participation

Possible interpretations include:

* some students act as central participants
* some students help connect otherwise separate parts of the discussion
* some students may be peripheral and at risk of weak engagement

---

## Step 10: Real-World Usefulness

This kind of analysis can support:

* identifying highly engaged students
* detecting isolated students
* designing peer mentoring or ambassador roles
* understanding how engagement is structured in a learning community

For example:

* highly connected students may be natural discussion leaders
* isolated students may need outreach or support

---

## Final Reflection

A strong response should include:

### 1. Network Structure

Describe whether the network appears centralised, connected, or fragmented.

### 2. Key Nodes

Identify which students appear most important using one or more centrality measures.

### 3. Interpretation

Explain what the measures suggest in practical terms.

### 4. Usefulness

Discuss how this analysis could support action or decision-making.

### 5. Limitations

Acknowledge that network structure alone does not explain motivation, quality of interaction, or causation.

---

## Key Note

There is no single perfect interpretation.

A good response should:

* describe the structure clearly
* interpret the metrics carefully
* connect findings to real-world meaning
* avoid over-claiming what the network proves
