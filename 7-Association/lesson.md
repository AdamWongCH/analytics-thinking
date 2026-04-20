# Lesson: Association Analysis

---

## Objective

Understand how to discover patterns of co-occurrence.

---

## Why This Matters

Some patterns are not obvious when looking at individual variables.

For example:

* certain behaviours tend to occur together
* some actions are linked to outcomes
* hidden patterns may exist across activities

Association analysis helps us uncover:

> **what tends to happen together**

---

## The Common Mistake

Many learners assume:

* association implies causation

But:

* association only shows patterns

This means:

> Just because two things occur together does not mean one causes the other.

---

## What is Association?

Association analysis identifies:

* relationships between variables
* items that occur together

It answers questions like:

> “When A happens, what else tends to happen?”

---

## Worked Example

Suppose we observe student behaviour:

* students who log in frequently
* and participate in forums

These students may also:

* submit assignments on time

---

### Pattern

High Logins + Forum Activity → Assignment Submitted

---

### Interpretation

These behaviours tend to occur together.

But we must be careful:

* logging in does not necessarily cause submission
* both may reflect overall engagement

---

## Key Concepts

### Support

How often a pattern occurs in the dataset.

> “How common is this pattern?”

---

### Confidence

How often B happens when A happens.

> “If A occurs, how likely is B?”

---

### Lift

How much more likely B is when A happens compared to chance.

> “Is this relationship meaningful, or just coincidence?”

---

## Example Rule

```text
High Logins → Assignment Submitted
```

---

## Interpretation

* High **support** → the pattern is common
* High **confidence** → the relationship is strong
* High **lift** → the relationship is meaningful

---

## When to Use This

Use association analysis when:

* you want to discover hidden patterns
* you want to understand co-occurrence
* you are exploring behaviour without predefined outcomes

Examples:

* student engagement patterns
* product purchase combinations
* user activity patterns

---

## Common Pitfall

A common mistake is to over-interpret associations.

For example:

* assuming one behaviour causes another
* ignoring context
* focusing only on high confidence without checking lift

Always ask:

> Is this pattern meaningful, or just frequent?

---

## How this connects

In the exercise, you will:

* think about co-occurrence patterns

In the lab, you will:

* generate and interpret association rules

---

## Key Takeaway

Association analysis helps uncover patterns.

But:

> **patterns must be interpreted carefully before acting on them**
