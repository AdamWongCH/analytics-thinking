# Lab Solutions: Classification (Guided)

---

## Step 1: Exploring the Data

The dataset contains:

* engagement variables (`logins`, `forum_posts`)
* a target variable (`at_risk`)

The goal is to predict whether a student is at risk based on engagement.

From initial observation:

* students with lower engagement tend to be labelled as at risk
* students with higher engagement tend to not be at risk

This suggests a relationship worth modelling.

---

## Step 2: Defining the Problem

The classification task is:

* Inputs: `logins`, `forum_posts`
* Target: `at_risk`

The aim is to identify students who may require intervention.

---

## Step 3: Building the Model

A classification model (logistic regression) is used to:

* learn patterns in engagement
* predict whether a student is at risk

The goal is not just prediction, but supporting decisions.

---

## Step 4: Predictions

The model produces predicted labels:

* 1 = predicted at risk
* 0 = predicted not at risk

These predictions can be compared with actual values to assess performance.

---

## Step 5: Confusion Matrix

The confusion matrix shows:

* True Positives → correctly identified at-risk students
* False Positives → incorrectly flagged students
* True Negatives → correctly identified safe students
* False Negatives → missed at-risk students

This helps us understand not just accuracy, but *types of errors*.

---

## Step 6: Evaluation Metrics

Key metrics:

* Accuracy → overall correctness
* Precision → how many flagged students are truly at risk
* Recall → how many at-risk students are correctly identified

Interpretation:

* High precision → fewer false alarms
* High recall → fewer missed at-risk students

---

## Step 7: Interpreting Results

A good model should:

* identify most at-risk students (high recall)
* avoid too many unnecessary flags (reasonable precision)

However, there is often a trade-off between precision and recall.

---

## Step 8: Thinking About Errors

In this context:

* False Negative (missed at-risk student) is usually more serious
* False Positive (incorrectly flagged student) may waste resources but is less severe

This means:

* recall is often more important than precision

---

## Step 9: Decision Usefulness

This model may be useful for:

* early identification of at-risk students
* supporting intervention decisions
* prioritising student support

However, it should not be used alone for high-stakes decisions.

---

## Step 10: Limitations

Important limitations include:

* small dataset
* limited variables
* simplified definition of “at risk”

Other important factors may include:

* academic background
* course difficulty
* personal circumstances

---

## Final Reflection

A strong response would include:

### 1. Model performance

The model performs reasonably well on this simple dataset.

---

### 2. Errors

The model may still produce false positives and false negatives.

---

### 3. Trade-offs

Improving recall may reduce precision, and vice versa.

---

### 4. Decision usefulness

The model can support early warning systems but requires careful use.

---

## Key Note

There is no single perfect model.

A good classification model:

* makes the right types of errors
* aligns with decision priorities
* supports practical action
