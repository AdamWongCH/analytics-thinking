# Module 4 Lab: Regression

# Objective:
# Build and interpret a simple regression model.

# By the end of this lab, you should be able to:
# - explore data for regression
# - visualise relationships between variables
# - build a simple linear regression model
# - interpret model outputs
# - evaluate whether the model is useful for decision-making

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Regression helps us move beyond describing data.
#
# It allows us to ask:
# - How are variables related?
# - Can one variable help us predict another?
# - Is the relationship meaningful enough to support decisions?
#
# In this lab, we will use student engagement data to predict performance.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given a dataset with:
# - student_id
# - logins
# - forum_posts
# - performance_score
#
# Your task is to understand whether engagement is related to student performance.

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# Before building a model, look at the data and ask:
# - Do the variables make sense?
# - Do higher engagement values seem to come with higher performance?
# - Are there any unusual cases?

student_data <- data.frame(
  student_id = c(1, 2, 3, 4, 5, 6, 7, 8),
  logins = c(2, 4, 5, 7, 8, 10, 12, 15),
  forum_posts = c(0, 1, 1, 2, 3, 4, 5, 6),
  performance_score = c(45, 50, 55, 60, 66, 72, 78, 85)
)

student_data

# --------------------------------------------------
# Step 2: Explore the structure
# --------------------------------------------------

# Understand the dataset:
# - number of rows and columns
# - variable names
# - data types

dim(student_data)

names(student_data)

str(student_data)

# Pause and reflect:
# - Which variables are input variables?
# - Which variable is the target variable?
# - Why might student_id not be useful as a predictor?

# --------------------------------------------------
# Step 3: Summarise the data
# --------------------------------------------------

# Look at summary statistics:
# - average values
# - minimum and maximum
# - variation in the data

summary(student_data)

# Guided interpretation:
# - Are performance scores generally low, moderate, or high?
# - Is there enough variation in the data?
# - Do the engagement variables vary enough to be useful?

# --------------------------------------------------
# Step 4: Visualise relationships
# --------------------------------------------------

# Before modelling, it helps to see the relationship.
#
# We will plot:
# - logins vs performance
# - forum_posts vs performance

plot(
  student_data$logins,
  student_data$performance_score,
  main = "Logins vs Performance",
  xlab = "Logins",
  ylab = "Performance Score"
)

# Guided interpretation:
# - Do higher logins correspond to higher performance?
# - Does the relationship look roughly linear?

plot(
  student_data$forum_posts,
  student_data$performance_score,
  main = "Forum Posts vs Performance",
  xlab = "Forum Posts",
  ylab = "Performance Score"
)

# Guided interpretation:
# - Does forum participation show a similar pattern?
# - Which variable seems more strongly related to performance?

# --------------------------------------------------
# Step 5: Define the modelling problem
# --------------------------------------------------

# We want to predict:
# - Target: performance_score
#
# Using:
# - Inputs: logins, forum_posts

# --------------------------------------------------
# Step 6: Build the regression model
# --------------------------------------------------

# We will now fit a simple linear regression model.
#
# The model will try to learn the relationship between:
# - engagement variables
# - student performance

reg_model <- lm(performance_score ~ logins + forum_posts, data = student_data)

reg_model

# --------------------------------------------------
# Step 7: Interpret coefficients
# --------------------------------------------------

# The coefficients tell us the direction and size of relationships.
#
# Think about:
# - If a coefficient is positive, what does that mean?
# - If a coefficient is larger, what might that suggest?

summary(reg_model)

# Guided interpretation:
# - Are the relationships positive or negative?
# - Which variable has a stronger effect?
# - Do the directions of the relationships make sense?

# --------------------------------------------------
# Step 8: Generate predictions
# --------------------------------------------------

# Now let us use the model to predict performance scores for the same dataset.
#
# This is not yet a full evaluation, but it helps us see whether
# the model roughly follows the pattern in the data.

student_data$predicted_score <- predict(reg_model, newdata = student_data)

student_data

# --------------------------------------------------
# Step 9: Evaluate the model
# --------------------------------------------------

# We will use two simple measures:
# - Mean Absolute Error (MAE): average prediction error
# - R-squared (R²): proportion of variation explained by the model

mae <- mean(abs(student_data$performance_score - student_data$predicted_score))
mae

model_summary <- summary(reg_model)
model_summary$r.squared

# Guided interpretation:
# - Is the prediction error small or large?
# - Does the model explain a meaningful amount of variation?
# - Would you trust this model to support decisions?

# --------------------------------------------------
# Step 10: Think beyond the model
# --------------------------------------------------

# Even if the model performs well, pause and ask:
# - Does this prove that engagement causes performance?
# - What other factors might influence performance?
# - What important data might be missing from this model?

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering the following:
#
# 1. Relationship
#    What relationship did the model identify between engagement and performance?
#
# 2. Interpretation
#    What do the coefficients suggest in practical terms?
#
# 3. Evaluation
#    How well does the model fit the data?
#
# 4. Limitations
#    What does this model fail to capture?
#
# 5. Decision usefulness
#    How might this model support real-world decision-making?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Regression helps us understand relationships.
#
# But:
# Correlation does not imply causation.