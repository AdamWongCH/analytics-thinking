# Lab Solutions: Association Analysis (Guided)

---

## Step 1: Exploring the Data

The dataset contains three binary behaviours:

* `high_logins`
* `forum_participation`
* `assignment_submitted`

Each value indicates whether the behaviour occurred (`1`) or did not occur (`0`).

This makes the data suitable for simple association analysis.

---

## Step 2: Understanding the Behaviours

From the column totals, we can see how common each behaviour is.

Possible observations:

* `assignment_submitted` appears relatively common
* `forum_participation` may be less common than assignment submission
* `high_logins` appears in several rows, suggesting it may be a useful antecedent for rules

A useful first step is to identify behaviours that occur often enough to produce meaningful rules.

---

## Step 3: Interpreting a Sample Rule

For the rule:

`high_logins -> forum_participation`

we interpret the metrics as follows:

### Support

How often both behaviours occur together in the dataset.

A higher support means the rule is more common overall.

---

### Confidence

Among students with high logins, how often do they also participate in forums?

A higher confidence suggests a stronger conditional relationship.

---

### Lift

How much more likely forum participation is when high logins occur, compared with its overall frequency.

* Lift > 1 suggests a positive association
* Lift = 1 suggests no special association
* Lift < 1 suggests a weaker-than-expected relationship

---

## Step 4: Comparing Rules

When comparing multiple rules, useful questions include:

* Which rule has the highest confidence?
* Which rule has the highest lift?
* Which rule is both common and meaningful?

A rule with very high confidence but very low support may be less useful in practice than a rule that is moderately strong but more common.

---

## Step 5: Interpreting Results

Possible interpretations:

* Students with high logins may also be more likely to participate in forums
* Forum participation may co-occur with assignment submission
* Engagement behaviours may reinforce one another

These patterns can help us understand behavioural profiles.

---

## Step 6: Usefulness

Association rules can support:

* identifying linked engagement behaviours
* designing targeted interventions
* generating hypotheses for further study

For example:

* if forum participation is often associated with assignment submission, encouraging discussion activity may be worth exploring as a support strategy

---

## Step 7: Limitations

Association analysis has important limitations:

* association does not imply causation
* hidden factors may influence both behaviours
* small datasets may produce unstable or misleading rules
* rule usefulness depends on context, not just metrics

For example, motivated students may both log in more and submit more, without one behaviour causing the other.

---

## Final Reflection

A strong response should include:

### 1. Key rules

Identify which rules stand out based on support, confidence, and lift.

### 2. Interpretation

Explain what the rules suggest about student behaviour.

### 3. Usefulness

Describe how the rules could support decision-making or intervention design.

### 4. Limitations

Acknowledge that the rules show co-occurrence, not causation.

---

## Key Note

There is no single perfect interpretation.

A good response should:

* explain the rule clearly
* interpret the metrics carefully
* connect the findings to practical use
* recognise the limitations of association analysis
