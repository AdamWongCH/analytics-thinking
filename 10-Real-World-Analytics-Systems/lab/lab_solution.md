# Lab Solution and Discussion: From Data to System Design

---

## Dataset 1: Education

### Observation

* students with low logins tend to not submit assignments
* some students show no forum activity

---

### Problem

Identify students with low engagement who may be at risk.

---

### Analysis

* simple rule-based identification
* potential classification model

---

### Decision

Which students should be prioritised for intervention?

---

### Action

* high risk → immediate outreach
* medium risk → monitoring
* low risk → no action

---

### Risk

* over-reliance on limited engagement signals
* missing context (e.g. external factors affecting participation)

---

## Dataset 2: E-commerce

### Observation

* customers with long inactivity and low purchases may churn
* higher support calls may indicate dissatisfaction

---

### Problem

Identify customers likely to churn.

---

### Analysis

* churn prediction
* segmentation

---

### Decision

Which customers should be targeted for retention?

---

### Action

* offer promotions
* personalised outreach

---

### Risk

* giving incentives to customers who would not churn
* cost inefficiency

---

## Dataset 3: Healthcare

### Observation

* older patients with higher risk scores and more visits appear high risk

---

### Problem

Identify patients who require prioritised care.

---

### Analysis

* risk scoring
* prioritisation

---

### Decision

Which patients should be treated first?

---

### Action

* prioritise monitoring or treatment

---

### Risk

* incorrect prioritisation
* ethical consequences

---

## Discussion

### From Data to System

In each dataset, we move from:

```text id="7o6n7l"
data → observation → problem → decision → action
```

---

### Key Insight 1

The same structure applies across domains.

---

### Key Insight 2

The challenge is not identifying patterns.

> **The challenge is deciding what to do with them**

---

### Key Insight 3

Data is incomplete.

Good system design accounts for:

* uncertainty
* limitations
* unintended consequences

---

## Final Takeaway

Analytics is not about producing outputs.

> **It is about designing systems that connect data to decisions and actions.**
