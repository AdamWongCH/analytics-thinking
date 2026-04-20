# Module 12 Lab: Prescriptive Analytics

# Objective:
# Decide which students to prioritise under real-world constraints.
#
# By the end of this lab, you should be able to:
# - move from prediction to decision
# - apply simple prioritisation rules
# - account for budget constraints
# - compare heuristic and optimisation-based choices

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# A prediction tells us what may happen.
#
# But in practice, we still need to decide:
# - who to act on
# - how to allocate limited resources
# - what trade-offs are acceptable
#
# Prescriptive analytics helps us move from:
# prediction -> decision -> action

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given a list of students with predicted risk scores.
#
# You also know that each intervention has a cost.
#
# Your team has a limited budget.
#
# Your task is to decide:
# - which students to prioritise
# - how to make the best use of limited resources

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# Each row contains:
# - a student
# - a predicted risk score
# - an estimated intervention cost
#
# Look at the data first and think about:
# - Who has the highest risk?
# - Which students are cheaper or more expensive to support?
# - What trade-offs might appear?

df <- data.frame(
  student = LETTERS[1:10],
  risk_score = c(0.90, 0.85, 0.80, 0.70, 0.60, 0.55, 0.50, 0.45, 0.40, 0.30),
  intervention_cost = c(50, 60, 40, 30, 20, 25, 15, 10, 10, 5),
  stringsAsFactors = FALSE
)

df

# Guided interpretation:
# - Which students appear highest priority if you look only at risk?
# - Which students may be expensive to support?
# - Do high risk and high cost always go together?

# --------------------------------------------------
# Step 2: Baseline approach - rank by risk
# --------------------------------------------------

# A simple starting point is to rank students by risk score.
#
# This assumes:
# - higher predicted risk = higher priority

df_sorted <- df[order(-df$risk_score), ]
df_sorted

# Guided interpretation:
# - Is this enough to make a decision?
# - Does this consider limited resources?

# --------------------------------------------------
# Step 3: Naive selection - choose the top 3 students
# --------------------------------------------------

top3 <- head(df_sorted, 3)
top3

sum(top3$intervention_cost)
sum(top3$risk_score)

# Guided interpretation:
# - Which students were selected?
# - Is the total cost acceptable?
# - Would this still work if the budget were limited?

# --------------------------------------------------
# Step 4: Add a budget constraint
# --------------------------------------------------

# In reality, resources are limited.
#
# Let us assume the total budget available is 100.

budget <- 100
budget

# --------------------------------------------------
# Step 5: Select by highest risk, but stay within budget
# --------------------------------------------------

selected <- c()
total_cost <- 0
total_risk <- 0

for (i in 1:nrow(df_sorted)) {
  row <- df_sorted[i, ]
  if (total_cost + row$intervention_cost <= budget) {
    selected <- c(selected, row$student)
    total_cost <- total_cost + row$intervention_cost
    total_risk <- total_risk + row$risk_score
  }
}

selected
total_cost
total_risk

# Guided interpretation:
# - How did the selection change once the budget was introduced?
# - Did the highest-risk students always get selected?
# - What trade-off are you making?

# --------------------------------------------------
# Step 6: Consider value - risk per unit cost
# --------------------------------------------------

# Instead of looking only at risk, we can also consider value.
#
# A simple value score is:
# risk score / intervention cost
#
# This helps us identify students who offer more expected value
# per unit of cost.

df$value_score <- df$risk_score / df$intervention_cost
df_value_sorted <- df[order(-df$value_score), ]
df_value_sorted

# Guided interpretation:
# - Which students now appear more attractive?
# - Why might lower-cost students move up in priority?
# - Is "highest risk" always the same as "best choice"?

# --------------------------------------------------
# Step 7: Select by value score within budget
# --------------------------------------------------

selected_value <- c()
total_cost_value <- 0
total_risk_value <- 0

for (i in 1:nrow(df_value_sorted)) {
  row <- df_value_sorted[i, ]
  if (total_cost_value + row$intervention_cost <= budget) {
    selected_value <- c(selected_value, row$student)
    total_cost_value <- total_cost_value + row$intervention_cost
    total_risk_value <- total_risk_value + row$risk_score
  }
}

selected_value
total_cost_value
total_risk_value

# Guided interpretation:
# - How did the decision change?
# - Is this more efficient?

# --------------------------------------------------
# Step 8: Compare the two decision rules
# --------------------------------------------------

comparison <- data.frame(
  Approach = c("Risk-first", "Value-based"),
  Selected_Students = c(
    paste(selected, collapse = ", "),
    paste(selected_value, collapse = ", ")
  ),
  Total_Cost = c(total_cost, total_cost_value),
  Total_Risk_Covered = c(round(total_risk, 2), round(total_risk_value, 2)),
  stringsAsFactors = FALSE
)

comparison

# Guided interpretation:
# - Which rule covered more total risk?
# - Which rule made better use of budget?
# - Which would you use in practice, and why?

# --------------------------------------------------
# Step 9: (Optional) Optimisation approach
# --------------------------------------------------

# So far, we used simple decision rules.
#
# Now we try a more formal approach:
# - evaluate all possible student combinations
# - choose the combination that gives the highest total risk score
# - stay within budget
#
# This is a simple form of optimisation.

best_score <- 0
best_cost <- 0
best_combo <- NULL

n <- nrow(df)

for (r in 1:n) {
  combos <- combn(1:n, r, simplify = FALSE)
  
  for (combo in combos) {
    combo_data <- df[combo, ]
    total_combo_cost <- sum(combo_data$intervention_cost)
    total_combo_score <- sum(combo_data$risk_score)
    
    if (total_combo_cost <= budget && total_combo_score > best_score) {
      best_score <- total_combo_score
      best_cost <- total_combo_cost
      best_combo <- combo_data$student
    }
  }
}

best_combo
best_cost
best_score

# Guided interpretation:
# - How does this compare to your heuristic approach?
# - Is the result better?
# - What is the trade-off (complexity vs simplicity)?

# --------------------------------------------------
# Step 10: Think about real-world complexity
# --------------------------------------------------

# In practice, decisions are often more complex.
#
# You may also need to consider:
# - likelihood that an intervention will work
# - fairness across student groups
# - different intervention types
# - limited staff time
# - urgency of each case
#
# This means real prescriptive analytics often goes beyond a simple score.

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering:
#
# 1. Decision strategy
#    What rule did you use?
#
# 2. Trade-offs
#    What did you prioritise?
#
# 3. Constraints
#    How did the budget affect decisions?
#
# 4. Comparison
#    How did the heuristic and optimisation approaches differ?
#
# 5. Real-world application
#    How would this scale to a real analytics system?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Predictions do not create value on their own.
#
# Prescriptive analytics helps us decide:
# - who to act on
# - how to allocate limited resources
# - what action may lead to the greatest impact