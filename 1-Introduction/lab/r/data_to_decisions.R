# Module 1 Lab: From Data to Decision

# Objective:
# Use simple student engagement data to:
# - interpret patterns
# - identify students who may be at risk
# - recommend an action
#
# The goal is not just to analyse data.
# The goal is to decide what to do next.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given basic student engagement data.
#
# Your task is to determine:
# Which students may require intervention?

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# Each row represents one student.
#
# Look at the data first before making any judgment.

df <- data.frame(
  Student = c("A", "B", "C", "D"),
  Logins = c(10, 2, 5, 0),
  Assignment_Submitted = c("Yes", "No", "Yes", "No"),
  Forum_Activity = c("High", "Low", "Low", "None"),
  stringsAsFactors = FALSE
)

df

# Guided interpretation:
# - Which students seem engaged?
# - Which students may be at risk?
# - Which columns give you the strongest clues?

# --------------------------------------------------
# Step 2: Explore the data
# --------------------------------------------------

# Before making decisions, summarise the dataset.
#
# This helps you understand the overall pattern.

summary(df)

# Guided interpretation:
# - How many students submitted assignments?
# - How many students show low or no forum activity?
# - Does low login activity seem linked to missing submission?

# --------------------------------------------------
# Step 3: Define a simple risk rule
# --------------------------------------------------

# We will now apply a simple rule-based interpretation.
#
# This is not a predictive model.
# It is a basic way to turn data into a decision.

assess_risk <- function(logins, submitted) {
  if (logins == 0 && submitted == "No") {
    return("High Risk")
  } else if (logins <= 2) {
    return("Medium Risk")
  } else {
    return("Low Risk")
  }
}

df$Risk_Level <- mapply(assess_risk, df$Logins, df$Assignment_Submitted)

df

# Guided interpretation:
# - Why is Student D labelled high risk?
# - Why is Student B labelled medium risk?
# - Do you agree with all of these labels?

# --------------------------------------------------
# Step 4: Recommend actions
# --------------------------------------------------

# Once we identify risk, we need to decide what to do.
#
# We will map each risk level to a simple action.

recommend_action <- function(risk) {
  if (risk == "High Risk") {
    return("Immediate intervention")
  } else if (risk == "Medium Risk") {
    return("Monitor closely")
  } else {
    return("No action needed")
  }
}

df$Recommended_Action <- sapply(df$Risk_Level, recommend_action)

df

# Guided interpretation:
# - Which students should be prioritised?
# - Are the recommended actions reasonable?
# - Could another person make a different decision from the same data?

# --------------------------------------------------
# Step 5: Focus on the final decision
# --------------------------------------------------

# Now look only at the final decision output.

df[, c("Student", "Risk_Level", "Recommended_Action")]

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering:
#
# 1. Interpretation
#    What patterns did you observe?
#
# 2. Risk
#    Which students appear most at risk?
#
# 3. Decision
#    What actions would you recommend?
#
# 4. Uncertainty
#    What assumptions did you make?
#
# 5. Next step
#    What additional data would help you make a better decision?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Data does not automatically tell us what to do.
#
# We must:
# - interpret it
# - decide what it means
# - choose an action
#
# This is the beginning of data thinking.