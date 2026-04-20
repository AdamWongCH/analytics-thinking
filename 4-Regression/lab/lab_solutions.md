# Lab Solutions: Regression (Guided)

---

## Step 1: Exploring the Data

The dataset contains:

* engagement variables: `logins`, `forum_posts`
* an outcome variable: `performance_score`

The task is to understand whether engagement is related to performance.

At a quick glance, students with higher engagement appear to have higher performance scores.

---

## Step 2: Understanding the Structure

The dataset is small and simple, which makes it suitable for learning.

Observations:

* `student_id` is an identifier and should not be used as a predictor
* `logins` and `forum_posts` are input variables
* `performance_score` is the target variable

---

## Step 3: Summary Statistics

The summary statistics show that:

* engagement varies across students
* performance scores also vary across students
* there appears to be enough variation to explore a relationship

This suggests the data is suitable for a simple regression exercise.

---

## Step 4: Visualising Relationships

The scatter plots suggest that:

* students with more logins tend to have higher performance scores
* students with more forum posts also tend to have higher performance scores

The relationships appear positive and reasonably linear.

This supports the decision to try a regression model.

---

## Step 5: Defining the Modelling Problem

The regression task is:

* Inputs: `logins`, `forum_posts`
* Target: `performance_score`

The aim is to understand how engagement variables are associated with performance.

---

## Step 6: Building the Model

The regression model estimates the relationship between engagement and performance.

At this stage, the goal is not only prediction, but also interpretation.

---

## Step 7: Interpreting Coefficients

If the coefficients are positive, this suggests that:

* higher engagement is associated with higher performance

A larger coefficient suggests a stronger relationship, though coefficients should be interpreted carefully because variables may be measured on different scales.

The key point is direction and relative influence.

---

## Step 8: Predictions

The predicted scores should generally follow the same upward pattern as the actual scores.

This suggests that the model is capturing the broad relationship in the data.

---

## Step 9: Evaluation

When interpreting the evaluation metrics:

* a low MAE suggests that predictions are reasonably close to actual scores
* a high R² suggests that the model explains a substantial proportion of the variation in performance

If both are reasonably strong, the model may be useful as a simple decision-support tool.

---

## Step 10: Thinking Beyond the Model

Even if the model performs well, we should be careful.

Important limitations include:

* the dataset is very small
* other relevant predictors are missing
* regression shows association, not causation

For example, performance may also depend on:

* prior ability
* motivation
* course difficulty
* external support

---

## Final Reflection

A good overall interpretation would include the following ideas:

### 1. Relationship

Engagement appears to have a positive relationship with performance.

### 2. Interpretation

Students with more logins and forum activity tend to score higher.

### 3. Evaluation

The model appears to fit the simple dataset reasonably well.

### 4. Limitations

The model is based on limited variables and a small sample. It does not prove causation.

### 5. Decision usefulness

The model may help highlight whether engagement is worth monitoring, but it should not be used alone for high-stakes decisions.

---

## Key Note

There is no single perfect answer.

A strong response should:

* explain the relationship clearly
* interpret the model cautiously
* connect the analysis to decision-making
