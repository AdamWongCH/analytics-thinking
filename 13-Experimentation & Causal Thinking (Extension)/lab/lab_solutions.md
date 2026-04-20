# Lab Solutions: Experimentation & Causal Thinking (Integrated Case Study)

---

## Overview

This lab compares three situations with increasing realism:

1. **A/B Testing** → strongest causal evidence
2. **Observational Data** → weaker causal evidence due to bias
3. **Difference-in-Differences** → improved comparison using change over time

The goal is not only to compare outcomes, but to understand **how confidence in causal conclusions changes across settings**.

---

## Part 1: A/B Testing

### What happened?

In the A/B testing example, we compare:

* a **treatment group**
* a **control group**

Because the groups are randomly assigned, they are assumed to be comparable before the intervention.

---

### What do the results suggest?

If the treatment group shows a higher improvement rate than the control group, this suggests that:

* the intervention may have caused the improvement

This is the strongest of the three scenarios because the comparison is fairest.

---

### Why is this credible?

The key reason is:

* **random assignment**

This helps reduce bias and makes it more reasonable to attribute the difference in outcomes to the intervention.

---

## Part 2: Observational Data

### What happened?

In the observational example, treatment was **not assigned randomly**.

Students with lower baseline engagement were more likely to receive the intervention.

This means the treatment and control groups were already different before the intervention.

---

### What do the raw outcome differences suggest?

A simple comparison of improvement rates may suggest that one group performed better than the other.

However, this comparison is weaker than in the A/B test because:

* the groups are not comparable at baseline

---

### Why is this a problem?

This introduces **confounding**.

Baseline engagement may affect:

* who receives treatment
* whether students improve

So the observed difference may reflect:

* the intervention
* pre-existing differences
* or both

---

## Part 3: Difference-in-Differences

### What happened?

In the difference-in-differences example, we compare:

* the **change over time** in the treatment group
* the **change over time** in the control group

Instead of comparing levels, we compare:

> **how much each group changed**

---

### What does this tell us?

If the treatment group improves more than the control group, the extra improvement is interpreted as the estimated effect of the intervention.

This gives a more credible result than a simple before/after or treatment/control comparison alone.

---

### Why is this better?

Difference-in-differences improves interpretation because it accounts for:

* baseline differences in levels
* general time-related change affecting both groups

It does **not** fully solve all problems, but it usually gives a fairer comparison than raw observational comparisons.

---

## Key Assumption

Difference-in-differences relies on an important assumption:

* the treatment and control groups would have followed similar trends if no intervention had occurred

This is known as the **parallel trends assumption**.

If this assumption is not reasonable, causal interpretation becomes weaker.

---

## Comparing the Three Approaches

### A/B Testing

* strongest design
* fairest comparison
* highest confidence in causation

---

### Observational Data

* more realistic
* treatment may be biased
* weaker causal confidence

---

### Difference-in-Differences

* improves observational comparison
* compares changes rather than raw levels
* more credible than simple observational comparison

---

## Final Reflection

A strong response should include the following ideas:

### 1. A/B Testing

Random assignment makes the treatment and control groups comparable, so differences in outcomes are more credibly attributed to the intervention.

### 2. Observational Data

Simple group comparisons can be misleading because treatment and control groups may already differ before the intervention.

### 3. Difference-in-Differences

Comparing changes over time improves the fairness of the comparison and provides a stronger basis for causal interpretation.

### 4. Causal Thinking

The key question is not just whether outcomes differ, but whether the intervention is the reason they differ.

### 5. Real-World Application

In practice, many evaluations rely on observational data, so methods that improve comparison quality are valuable for judging whether interventions work.

---

## Key Note

There is no single formula to memorise here.

The important learning is this:

* stronger methods create fairer comparisons
* fairer comparisons create more credible conclusions
* credible conclusions support better decisions
