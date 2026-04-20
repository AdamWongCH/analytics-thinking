# Module 3 Lab: Data Understanding

# Objective:
# Explore a dataset and understand its structure, patterns, and quality
# before doing any modelling.

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Before building any model, you need to understand the data.
# If you skip this step:
# - patterns may be misunderstood
# - missing values may be ignored
# - unusual values may distort analysis

# In short:
# Do not model what you do not understand.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given a dataset of student engagement with the following variables:
# - student_id
# - logins
# - assignment_submitted
# - forum_posts
#
# Your task is to understand the data before using it for further analysis.

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# We begin by creating a simple dataset.
# First, just observe:
# - how many students there are
# - what each column looks like
# - whether anything looks unusual at first glance

student_data <- data.frame(
  student_id = c(1, 2, 3, 4, 5, 6, 7, 8),
  logins = c(10, 2, 5, 1, 8, NA, 15, 0),
  assignment_submitted = c(1, 0, 1, 0, 1, 1, 1, 0),
  forum_posts = c(5, 0, 2, 0, 3, 1, 8, 0)
)

student_data

# --------------------------------------------------
# Step 2: Understand the structure of the data
# --------------------------------------------------

# Before analysing values, understand the structure.
# Ask:
# - How many rows and columns are there?
# - What are the column names?
# - What type of data does each column contain?

dim(student_data)

names(student_data)

str(student_data)

# Pause and reflect:
# - Which variables are numerical?
# - Which variables might be treated like categories?
# - Does every column seem useful?

# --------------------------------------------------
# Step 3: Summarise the data
# --------------------------------------------------

# Now generate summary statistics.
# This helps you answer questions such as:
# - What is the average number of logins?
# - What is the minimum and maximum?
# - Are there any values that seem very low or very high?

summary(student_data)

# Guided interpretation:
# - Is the average number of logins high or low?
# - Do some students appear much less active than others?
# - Are there signs that some students may be disengaged?

# --------------------------------------------------
# Step 4: Check data quality
# --------------------------------------------------

# Good analysis depends on good data.
# Now check for common data quality issues:
# - missing values
# - unusual values
# - values that may require clarification

colSums(is.na(student_data))

# Missing values:
# If a value is missing, we need to decide what it means.
# For example:
# - was the data not recorded?
# - did the student truly have no activity?
# - is the missing value an error?

student_data[is.na(student_data$logins), ]

# Unusual values:
# A value of 0 may be valid, but it may also be important.
# For example:
# - a student with 0 logins may be highly disengaged
# - a student with 0 forum posts may still be active elsewhere

student_data[student_data$logins == 0, ]

# --------------------------------------------------
# Step 5: Generate initial insights
# --------------------------------------------------

# At this stage, we are not building a model.
# We are simply using the data to form early observations.
# One simple way is to create a basic risk flag based on low engagement.

student_data$at_risk_flag <- (
  ifelse(is.na(student_data$logins), 0, student_data$logins) < 3 |
    student_data$assignment_submitted == 0 |
    student_data$forum_posts == 0
)

student_data

# Guided interpretation:
# - Which students are flagged?
# - Do the results make sense?
# - Are these rules too simple?
# - What additional data might improve our understanding?

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering the following:
# 1. Structure
#    What does the dataset contain?
#
# 2. Patterns
#    What early patterns do you observe?
#
# 3. Data quality
#    Are there any missing or unusual values?
#
# 4. Initial insight
#    Which students may require attention?
#
# 5. Next step
#    What should be checked or prepared before further analysis?

# Key takeaway:
# Understanding data is not a minor step before modelling.
# It is the foundation of reliable analytics.