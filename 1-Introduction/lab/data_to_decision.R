# Step 1: Create data

student_data <- data.frame(
  student_id = c(1, 2, 3, 4, 5),
  logins = c(10, 2, 5, 1, 8),
  assignment_submitted = c(1, 0, 1, 0, 1),
  forum_posts = c(5, 0, 2, 0, 3)
)

# Run this block first

student_data

# Step 2: Summarise data

summary(student_data)

# Step 3: Apply risk rule

student_data$at_risk <- (
  student_data$logins < 3 |
    student_data$assignment_submitted == 0 |
    student_data$forum_posts == 0
)

student_data