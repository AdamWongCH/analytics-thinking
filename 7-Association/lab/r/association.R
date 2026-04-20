# Module 7 Lab: Association Analysis

# Objective:
# Discover patterns of co-occurrence in data.
#
# By the end of this lab, you should be able to:
# - understand what association rules are
# - generate simple association rules
# - interpret support, confidence, and lift
# - think about how association rules can be used in practice

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Some analytics problems are not about prediction or segmentation.
#
# Sometimes, we want to know:
# - what behaviours tend to occur together
# - what patterns appear repeatedly
# - what combinations might be useful to monitor
#
# Association analysis helps us uncover these patterns.
#
# But:
# Association reveals co-occurrence, not causation.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given student engagement behaviour data.
#
# Each row represents a student, and each column shows whether
# a behaviour occurred.
#
# Your task is to discover patterns such as:
# - students who log in frequently also participate in forums
# - students who participate in forums also submit assignments

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# We begin with a simple binary dataset.
#
# Each value means:
# - 1 = behaviour occurred
# - 0 = behaviour did not occur
#
# Look at the data and think about which behaviours may occur together.

student_data <- data.frame(
  high_logins = c(1, 1, 1, 0, 1, 0, 0, 1),
  forum_participation = c(1, 1, 0, 0, 1, 0, 0, 1),
  assignment_submitted = c(1, 1, 1, 0, 1, 1, 0, 1)
)

student_data

# --------------------------------------------------
# Step 2: Understand the behaviours
# --------------------------------------------------

# Before generating any rules, inspect the variables.
#
# Ask:
# - What does each column represent?
# - Which behaviours seem common?
# - Which combinations might be interesting?

colSums(student_data)

# Guided interpretation:
# - Which behaviour is most common?
# - Which behaviour is least common?
# - Does any behaviour seem to happen very frequently?

# --------------------------------------------------
# Step 3: Define simple rules
# --------------------------------------------------

# We will examine rules of the form:
# A -> B
#
# This means:
# when A occurs, how often does B also occur?
#
# We will calculate three measures:
# - Support: how often A and B occur together
# - Confidence: when A happens, how often does B happen?
# - Lift: how much more likely B is when A happens?

support_rule <- function(df, antecedent, consequent) {
  both <- sum(df[[antecedent]] == 1 & df[[consequent]] == 1)
  both / nrow(df)
}

confidence_rule <- function(df, antecedent, consequent) {
  antecedent_count <- sum(df[[antecedent]] == 1)
  both <- sum(df[[antecedent]] == 1 & df[[consequent]] == 1)
  if (antecedent_count == 0) {
    return(0)
  } else {
    return(both / antecedent_count)
  }
}

lift_rule <- function(df, antecedent, consequent) {
  conf <- confidence_rule(df, antecedent, consequent)
  consequent_support <- sum(df[[consequent]] == 1) / nrow(df)
  if (consequent_support == 0) {
    return(0)
  } else {
    return(conf / consequent_support)
  }
}

# --------------------------------------------------
# Step 4: Generate a sample rule
# --------------------------------------------------

# Let us examine this rule:
# high_logins -> forum_participation
#
# This asks:
# among students with high logins, how often do they also participate in forums?

rule_support <- support_rule(student_data, "high_logins", "forum_participation")
rule_confidence <- confidence_rule(student_data, "high_logins", "forum_participation")
rule_lift <- lift_rule(student_data, "high_logins", "forum_participation")

rule_support
rule_confidence
rule_lift

# Guided interpretation:
# - Support tells us how common this combination is overall
# - Confidence tells us how often forum participation occurs
#   when high logins occur
# - Lift tells us whether this relationship is stronger than chance
#
# Think about:
# - Is this rule common?
# - Is it strong?
# - Is the lift above 1?

# --------------------------------------------------
# Step 5: Compare multiple rules
# --------------------------------------------------

# Now let us compare several possible rules.

rules <- data.frame(
  antecedent = c("high_logins", "high_logins", "forum_participation"),
  consequent = c("forum_participation", "assignment_submitted", "assignment_submitted"),
  stringsAsFactors = FALSE
)

rules$Support <- NA
rules$Confidence <- NA
rules$Lift <- NA

for (i in 1:nrow(rules)) {
  a <- rules$antecedent[i]
  b <- rules$consequent[i]
  
  rules$Support[i] <- round(support_rule(student_data, a, b), 2)
  rules$Confidence[i] <- round(confidence_rule(student_data, a, b), 2)
  rules$Lift[i] <- round(lift_rule(student_data, a, b), 2)
}

rules$Rule <- paste(rules$antecedent, "->", rules$consequent)

rules[, c("Rule", "Support", "Confidence", "Lift")]

# Guided interpretation:
# - Which rule has the highest confidence?
# - Which rule has the highest lift?
# - Which rule seems most meaningful?

# --------------------------------------------------
# Step 6: Think about usefulness
# --------------------------------------------------

# Association rules can be useful for:
# - identifying engagement patterns
# - designing interventions
# - generating hypotheses for further analysis
#
# For example:
# if forum participation and assignment submission often occur together,
# encouraging one behaviour may help support the other.

# --------------------------------------------------
# Step 7: Think about limitations
# --------------------------------------------------

# Pause and reflect:
# - Does this rule prove causation?
# - Could another hidden factor explain the pattern?
# - Is the dataset large enough to trust the result?

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering:
#
# 1. Key rules
#    Which association rules stood out?
#
# 2. Interpretation
#    What do the support, confidence, and lift values suggest?
#
# 3. Usefulness
#    How could these rules be used in practice?
#
# 4. Limitations
#    Why should we be cautious when interpreting them?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Association analysis helps us discover patterns of co-occurrence.
#
# But:
# Patterns are not proof of causation.