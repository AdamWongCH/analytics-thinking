# Lesson: Clustering

---

## Objective

Understand how clustering groups similar observations.

---

## Why This Matters

Not all analytics problems come with predefined labels.

Sometimes, we do not know:

* what groups exist
* how observations are related
* what patterns are hidden in the data

Clustering helps us:

> **discover structure in data**

---

## The Common Mistake

Many learners expect:

* a “correct answer”

But clustering:

* has no ground truth
* requires interpretation

This means:

> the result is only useful if it makes sense in context.

---

## What is Clustering?

Clustering is used to:

* group similar observations
* discover patterns
* segment data

It answers questions like:

> “What types of groups exist in this data?”

---

## Key Idea

Observations that are similar are grouped together.

Similarity is based on features such as:

* logins
* activity
* behaviour

---

## Worked Example

We want to group students based on:

* logins
* forum activity

A clustering algorithm may produce:

* Group 1: high logins, high activity
* Group 2: moderate engagement
* Group 3: low engagement

---

### Interpretation

We may label these groups as:

* highly engaged
* moderately engaged
* disengaged

But these labels are:

* assigned by us
* based on interpretation

---

## K-Means Clustering

A common method is K-Means:

* choose number of clusters (k)
* assign observations to clusters
* update cluster centres
* repeat until stable

You do not need to focus on the mechanics.

Focus on:

> what the clusters represent

---

## When to Use This

Use clustering when:

* you do not have predefined labels
* you want to explore patterns
* you want to segment users or behaviour

Examples:

* student engagement groups
* customer segmentation
* usage patterns

---

## Important Considerations

* choice of k matters
* clusters must be interpreted
* results are not definitive

A simple rule:

> Clusters are useful only if they help you understand or act.

---

## Common Pitfall

A common mistake is to treat clusters as “truth”.

For example:

* assuming clusters are fixed categories
* over-interpreting small differences
* trusting the model without questioning

Remember:

> Clusters are **model outputs**, not reality.

---

## How this connects

In the exercise, you will:

* think about possible groupings

In the lab, you will:

* apply clustering and interpret results

---

## Key Takeaway

Clustering is not about finding the “correct answer”.

It is about:

> **discovering patterns and interpreting them meaningfully**
