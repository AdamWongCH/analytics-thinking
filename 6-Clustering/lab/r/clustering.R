# Module 6 Lab: Clustering

# Objective:
# Apply clustering to discover patterns in data.
#
# By the end of this lab, you should be able to:
# - understand how clustering works
# - apply a clustering algorithm
# - interpret clusters meaningfully
# - connect clusters to real-world use cases

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Not all problems have labels.
#
# Sometimes, we want to:
# - discover patterns
# - group similar observations
# - identify segments
#
# Clustering helps us do this.
#
# But:
# Clusters do not explain themselves — you must interpret them.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given student engagement data.
#
# Your task is to identify different types of students
# based on their engagement.
#
# There are no labels.
# You must discover the groups.

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# Observe the dataset.
# Look for:
# - patterns
# - variation
# - possible groupings

student_data <- data.frame(
  student_id = 1:12,
  logins = c(15, 14, 13, 8, 7, 6, 3, 2, 1, 10, 9, 4),
  forum_posts = c(7, 6, 6, 4, 3, 3, 1, 0, 0, 5, 4, 1)
)

student_data

# --------------------------------------------------
# Step 2: Visualise the data
# --------------------------------------------------

# Before clustering, plot the data.
#
# This helps you see whether groups already exist.
#
# We will plot:
# - logins vs forum_posts

plot(
  student_data$logins,
  student_data$forum_posts,
  main = "Student Engagement",
  xlab = "Logins",
  ylab = "Forum Posts"
)

# Guided interpretation:
# - Do you see natural groupings?
# - Are there clusters forming?
# - How many groups might exist?

# --------------------------------------------------
# Step 3: Apply clustering
# --------------------------------------------------

# We will use K-Means clustering.
#
# You need to choose the number of clusters (k).
# We will start with k = 3.

set.seed(42)

cluster_model <- kmeans(student_data[, c("logins", "forum_posts")], centers = 3)

student_data$cluster <- cluster_model$cluster

student_data

# --------------------------------------------------
# Step 4: Visualise clusters
# --------------------------------------------------

# Plot the data again, but now colour by cluster.
#
# This helps you see how the algorithm grouped the data.

plot(
  student_data$logins,
  student_data$forum_posts,
  col = student_data$cluster,
  pch = 19,
  main = "Clusters of Student Engagement",
  xlab = "Logins",
  ylab = "Forum Posts"
)

# Guided interpretation:
# - Do the groups make sense?
# - Are the clusters clearly separated?
# - What defines each cluster?

# --------------------------------------------------
# Step 5: Understand cluster characteristics
# --------------------------------------------------

# Let us summarise each cluster.
#
# This helps us interpret what each group represents.

cluster_summary <- aggregate(
  student_data[, c("logins", "forum_posts")],
  by = list(cluster = student_data$cluster),
  FUN = mean
)

cluster_summary

# Guided interpretation:
# - Which cluster has high engagement?
# - Which cluster has low engagement?
# - Is there a middle group?
#
# Try to label each cluster
# (e.g. "highly engaged", "moderately engaged", "low engagement").

# --------------------------------------------------
# Step 6: Reflect on cluster usefulness
# --------------------------------------------------

# Clustering does not give answers — it gives structure.
#
# Now think about:
# - Are these clusters meaningful?
# - How could they be used?

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary:
#
# 1. Clusters
#    What groups did you identify?
#
# 2. Interpretation
#    What does each cluster represent?
#
# 3. Use cases
#    How could these clusters be used in practice?
#
# 4. Limitations
#    What are the weaknesses of this clustering?
#
# 5. Next step
#    What would you do to improve this analysis?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Clustering does not produce answers.
#
# It produces patterns that require interpretation.