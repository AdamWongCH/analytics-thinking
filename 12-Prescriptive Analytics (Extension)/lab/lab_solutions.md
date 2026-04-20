# Lab Solutions: Prescriptive Analytics (Guided)

---

## Step 1: Exploring the Data

The dataset contains:

* a student identifier
* a predicted risk score
* an estimated intervention cost

A useful first observation is that students with the highest risk are not always the cheapest to support.

This means decision-making cannot rely on risk score alone.

---

## Step 2: Risk-First Ranking

Ranking students by risk score is a reasonable starting point.

This approach assumes:

* higher predicted risk means higher priority

This is simple and intuitive, but it ignores resource constraints.

---

## Step 3: Naive Selection

Selecting the top 3 students by risk score may seem sensible at first.

However, this can become problematic when:

* intervention costs are high
* resources are limited
* other lower-cost options may collectively create more impact

This shows that prediction alone is not enough.

---

## Step 4: Budget Constraint

Once a budget is introduced, the problem changes.

We are no longer asking only:

* who is most at risk?

We are now asking:

* who should be prioritised within available resources?

This is the key shift from predictive to prescriptive thinking.

---

## Step 5: Risk-First Selection Under Budget

A risk-first rule with a budget constraint typically selects students in order of highest risk, as long as they fit within the budget.

This approach is easy to explain and implement.

However, it may not always produce the best overall outcome if high-risk students are also expensive.

---

## Step 6: Value-Based Thinking

A simple improvement is to consider:

**risk score / intervention cost**

This gives a rough sense of expected value per unit of cost.

Possible interpretation:

* high value score → relatively strong impact for lower cost
* low value score → more expensive relative to expected benefit

This approach introduces the idea of efficiency.

---

## Step 7: Value-Based Selection Under Budget

Using value score instead of risk alone may change the selected students.

This can lead to:

* better use of limited budget
* more total risk covered
* a more efficient intervention plan

However, it may also mean that some very high-risk students are not selected.

This is where trade-offs become important.

---

## Step 8: Comparing Decision Rules

A strong response should compare the two rules:

### Risk-First

* simple
* intuitive
* prioritises highest risk directly

### Value-Based

* more efficient under budget
* considers cost
* may cover more total risk overall

Neither rule is automatically “correct.”

The better choice depends on:

* goals
* budget
* intervention strategy

---

## Step 9: Optimisation Approach

The optimisation step tries all possible combinations and selects the one that gives the highest total risk score while staying within budget.

This gives a more formal definition of “best.”

Possible interpretation:

* optimisation can outperform simple heuristics
* heuristics may still be useful if they are easier to explain and implement

This is an important real-world trade-off:

* **best solution** vs **simple decision rule**

---

## Step 10: Real-World Complexity

In practice, prioritisation often depends on more than:

* risk score
* cost

Other considerations may include:

* likelihood that intervention will work
* urgency of need
* fairness across groups
* staff capacity
* type of intervention available

This means prescriptive analytics often combines data, rules, and judgment.

---

## Final Reflection

A strong response should include:

### 1. Decision Strategy

Explain whether you used risk-first, value-based, or optimisation.

### 2. Trade-offs

Describe what was prioritised and what was sacrificed.

### 3. Constraints

Explain how the budget changed the decision.

### 4. Comparison

Compare the heuristic and optimisation approaches.

### 5. Real-World Application

Discuss how this could support intervention planning in practice.

---

## Key Note

There is no single perfect decision rule.

A good response should:

* explain the logic clearly
* recognise trade-offs
* connect the analysis to action
* acknowledge practical constraints
