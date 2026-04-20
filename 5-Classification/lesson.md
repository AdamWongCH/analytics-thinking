# Lesson: Classification

---

## Objective

Understand how classification models assign observations to categories.

---

## Why This Matters

Many real-world decisions are categorical.

For example:

* Is a student at risk?
* Is a transaction fraudulent?
* Should we intervene or not?

Classification helps us make these decisions.

---

## The Common Mistake

Many learners focus on:

* model accuracy

But miss a more important question:

> **What types of errors matter?**

A model can be highly accurate but still be **useless or even harmful** if it makes the wrong kinds of mistakes.

---

## What is Classification?

Classification is used to:

* predict categories
* assign labels

It answers questions like:

> “Which group does this observation belong to?”

---

## Example

We want to predict:

Is a student:

* At risk (1)
* Not at risk (0)

This is a binary classification problem.

---

## Key Idea

A classification model learns patterns that separate groups.

For example:

* low engagement → more likely to be at risk
* high engagement → less likely to be at risk

The model uses these patterns to assign labels to new observations.

---

## Worked Example

Suppose we have a model that predicts student risk.

For a group of students:

* some are correctly identified as at risk
* some are missed
* some are incorrectly flagged

---

### Data

Student engagement and outcomes

---

### Prediction

Model assigns “at risk” or “not at risk”

---

### Interpretation

The model is useful only if it correctly identifies students who need attention

---

This leads to an important question:

> What kinds of mistakes are acceptable?

---

## Predictions vs Reality

Predictions are not always correct.

We need to evaluate:

* how often the model is correct
* what types of mistakes it makes

---

## Confusion Matrix

A confusion matrix helps us understand model performance.

It includes:

* **True Positive** — correctly identified at-risk students
* **False Positive** — incorrectly flagged students
* **True Negative** — correctly identified safe students
* **False Negative** — missed at-risk students

---

## Why This Matters

Not all errors are equal.

For example:

* **False Negative (missed at-risk student)** → serious
* **False Positive (flagged safe student)** → less serious

This means:

> The “best” model depends on the decision context.

---

## When to Use This

Use classification when:

* the outcome is categorical (e.g. yes/no, risk/no risk)
* you need to support decisions
* different types of errors have different consequences

A simple rule:

> If your outcome is a category, classification is often the right approach.

---

## Common Pitfall

A common mistake is to optimise for accuracy alone.

For example:

* a model that predicts “not at risk” for everyone may be highly accurate
* but it fails to identify any at-risk students

This makes the model ineffective.

Always consider:

* the purpose of the model
* the consequences of errors

---

## How this connects

In the exercise, you will:

* think about classification decisions and trade-offs

In the lab, you will:

* build and evaluate a classification model

---

## Key Takeaway

A good classification model is not just accurate.

It makes:

> **the right kinds of mistakes for the decision context**
