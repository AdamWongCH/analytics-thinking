# Module 5 Lab: Classification

# Objective:
# Build and evaluate a classification model.

# By the end of this lab, you should be able to:
# - understand how classification works
# - build a simple classification model
# - interpret predictions and errors
# - evaluate model performance
# - think about decision trade-offs

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Many real-world decisions are categorical:
# - Is a student at risk?
# - Should intervention be triggered?
#
# Classification helps us make these decisions.
#
# But:
# Not all errors are equal.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given a dataset of student engagement.
#
# Your task is to predict whether a student is at risk.
#
# 1 = At risk
# 0 = Not at risk

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# Observe:
# - engagement levels
# - risk labels
# - whether patterns seem intuitive

student_data <- data.frame(
  student_id = c(1,2,3,4,5,6,7,8,9,10),
  logins = c(15,12,10,8,6,5,3,2,1,0),
  forum_posts = c(6,5,4,3,2,1,1,0,0,0),
  at_risk = c(0,0,0,0,0,1,1,1,1,1)
)

student_data

# --------------------------------------------------
# Step 2: Explore the structure
# --------------------------------------------------

# Understand:
# - which variables are inputs
# - which variable is the target

str(student_data)

# Pause and reflect:
# - Which variables are predictors?
# - Which variable is the outcome?

# --------------------------------------------------
# Step 3: Define the modelling problem
# --------------------------------------------------

# Target:
# at_risk
#
# Inputs:
# logins, forum_posts

# --------------------------------------------------
# Step 4: Split the data
# --------------------------------------------------

# We split the data into training and test sets.

set.seed(42)

train_index <- sample(1:nrow(student_data), 0.7 * nrow(student_data))

train_data <- student_data[train_index, ]
test_data <- student_data[-train_index, ]

train_data
test_data

# --------------------------------------------------
# Step 5: Build the classification model
# --------------------------------------------------

# We use logistic regression

model <- glm(
  at_risk ~ logins + forum_posts,
  data = train_data,
  family = binomial
)

summary(model)

# --------------------------------------------------
# Step 6: Generate predictions
# --------------------------------------------------

# Predict probabilities first

probabilities <- predict(model, newdata = test_data, type = "response")
probabilities

# Convert probabilities into class labels
# (threshold = 0.5)

predicted <- ifelse(probabilities > 0.5, 1, 0)
predicted

# --------------------------------------------------
# Step 7: Compare predictions with actual values
# --------------------------------------------------

comparison <- data.frame(
  Actual = test_data$at_risk,
  Predicted_Probability = round(probabilities, 4),
  Predicted_Class = predicted
)

comparison

# --------------------------------------------------
# Step 8: Confusion Matrix
# --------------------------------------------------

conf_matrix <- table(
  Predicted = predicted,
  Actual = test_data$at_risk
)

conf_matrix

# --------------------------------------------------
# Understanding the confusion matrix
# --------------------------------------------------

# True Positive: correctly predicted at-risk
# False Positive: wrongly flagged
# True Negative: correctly predicted safe
# False Negative: missed at-risk

# --------------------------------------------------
# Step 9: Evaluation metrics
# --------------------------------------------------

accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
accuracy

if ("1" %in% rownames(conf_matrix) && "1" %in% colnames(conf_matrix)) {
  precision <- conf_matrix["1","1"] / sum(conf_matrix["1",])
} else {
  precision <- 0
}
precision

if ("1" %in% rownames(conf_matrix) && "1" %in% colnames(conf_matrix)) {
  recall <- conf_matrix["1","1"] / sum(conf_matrix[,"1"])
} else {
  recall <- 0
}
recall

# --------------------------------------------------
# Guided interpretation
# --------------------------------------------------

# Reflect:
# - Is the model accurate?
# - Is precision high or low?
# - Is recall high or low?
#
# Which metric matters most in this scenario?

# --------------------------------------------------
# Note on Results
# --------------------------------------------------

# You may notice that results differ between Python and R.
#
# This is expected.
#
# Different tools:
# - use different optimisation methods
# - have different default settings
# - may split data differently
#
# This can lead to differences in:
# - predicted probabilities
# - model coefficients
# - evaluation metrics
#
# However, what matters is:
# - the overall pattern
# - the interpretation of results
# - the decision implications
#
# In practice, analysts focus on insights, not exact numerical matches.

# --------------------------------------------------
# Step 10: Think about errors
# --------------------------------------------------

# Consider:
# - False Negative -> missing an at-risk student
# - False Positive -> wrongly flagging a student
#
# Which error is more serious?
# Why?

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary:
#
# 1. Model performance
#    How well does the model perform?
#
# 2. Errors
#    What types of errors does the model make?
#
# 3. Trade-offs
#    What trade-offs exist between precision and recall?
#
# 4. Decision usefulness
#    Would you use this model in practice? Why or why not?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Classification is not just about accuracy.
#
# It is about making the right decisions under uncertainty.