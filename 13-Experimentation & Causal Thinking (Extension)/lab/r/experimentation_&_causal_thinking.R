# Module 13 Lab: Experimentation & Causal Thinking
#
# Integrated Case Study
#
# In this lab, you will evaluate an intervention across three scenarios:
# 1. A/B Testing (ideal case)
# 2. Observational Data (real-world case)
# 3. Difference-in-Differences (improved method)
#
# Objective:
# - understand different levels of causal evidence
# - compare groups appropriately
# - recognise bias in observational data
# - apply difference-in-differences for better evaluation

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# A university introduced an intervention to improve student engagement.
#
# Your task is to evaluate:
# Did the intervention actually work?
#
# You will analyse this under different conditions.

# ==================================================
# PART 1: A/B TESTING (IDEAL CASE)
# ==================================================

# --------------------------------------------------
# Part 1: A/B Testing
# --------------------------------------------------

# In this scenario:
# - students are randomly assigned
# - treatment and control groups are comparable
#
# This gives the strongest causal evidence.

df_ab <- data.frame(
  group = c(rep("Treatment", 5), rep("Control", 5)),
  improved = c(1, 1, 0, 1, 1, 0, 0, 1, 0, 0),
  stringsAsFactors = FALSE
)

df_ab

# --------------------------------------------------
# Step 1: Calculate improvement rates
# --------------------------------------------------

ab_summary <- aggregate(improved ~ group, data = df_ab, FUN = mean)
ab_summary

# Guided interpretation:
# - Which group improved more?
# - Why is this comparison credible?
# - What assumption makes this valid?
#
# Key idea:
# random assignment

# ==================================================
# PART 2: OBSERVATIONAL DATA (REAL WORLD)
# ==================================================

# --------------------------------------------------
# Part 2: Observational Data
# --------------------------------------------------

# In this scenario:
# - treatment is NOT assigned randomly
# - weaker students are more likely to receive intervention
#
# This introduces bias.

df_obs <- data.frame(
  student = LETTERS[1:12],
  treatment = c(1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0),
  baseline = c(20, 25, 30, 35, 40, 45, 55, 60, 65, 70, 75, 80),
  improved = c(1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0),
  stringsAsFactors = FALSE
)

df_obs

# --------------------------------------------------
# Step 2: Compare improvement rates directly
# --------------------------------------------------

obs_summary <- aggregate(improved ~ treatment, data = df_obs, FUN = mean)
obs_summary$group <- ifelse(obs_summary$treatment == 1, "Treatment", "Control")
obs_summary[, c("group", "improved")]

# Guided interpretation:
# - Which group looks better?
# - Can we conclude the intervention worked?
#
# Be careful.

# --------------------------------------------------
# Step 3: Compare baseline differences
# --------------------------------------------------

baseline_summary <- aggregate(baseline ~ treatment, data = df_obs, FUN = mean)
baseline_summary$group <- ifelse(baseline_summary$treatment == 1, "Treatment", "Control")
baseline_summary[, c("group", "baseline")]

# Guided interpretation:
# - Which group had lower baseline?
# - Does this suggest treatment was targeted toward weaker students?
# - Why does this make causal interpretation harder?
#
# Key insight:
# The groups are NOT comparable at baseline.

# --------------------------------------------------
# Step 4: Understand confounding
# --------------------------------------------------

# A confounder is a variable that affects both:
# - who gets treatment
# - the outcome
#
# In this example, baseline may be a confounder.

# ==================================================
# PART 3: DIFFERENCE-IN-DIFFERENCES
# ==================================================

# --------------------------------------------------
# Part 3: Difference-in-Differences
# --------------------------------------------------

# We now use before-and-after data.
#
# Instead of comparing levels, we compare changes.

df_did <- data.frame(
  group = c("Treatment", "Treatment", "Control", "Control"),
  time = c("Before", "After", "Before", "After"),
  engagement = c(40, 70, 60, 65),
  stringsAsFactors = FALSE
)

df_did

# --------------------------------------------------
# Step 5: Compare before and after
# --------------------------------------------------

pivot <- reshape(
  df_did,
  idvar = "group",
  timevar = "time",
  direction = "wide"
)

names(pivot) <- c("group", "engagement.After", "engagement.Before")

# reorder columns for readability
pivot <- pivot[, c("group", "engagement.Before", "engagement.After")]
pivot$change <- pivot$engagement.After - pivot$engagement.Before

pivot

# Guided interpretation:
# - How much did the treatment group change?
# - How much did the control group change?
# - Are both groups improving?

# --------------------------------------------------
# Step 6: Calculate Difference-in-Differences
# --------------------------------------------------

treatment_change <- pivot$change[pivot$group == "Treatment"]
control_change <- pivot$change[pivot$group == "Control"]

did <- treatment_change - control_change

treatment_change
control_change
did

# Guided interpretation:
# - If the treatment group improved more than control, what does it suggest?
# - What does the difference-in-differences value represent?

# --------------------------------------------------
# Step 7: Visualise the result
# --------------------------------------------------

treatment_data <- df_did[df_did$group == "Treatment", ]
control_data <- df_did[df_did$group == "Control", ]

plot(
  c(1, 2),
  treatment_data$engagement,
  type = "o",
  ylim = range(df_did$engagement),
  xaxt = "n",
  xlab = "Time",
  ylab = "Engagement",
  main = "Difference-in-Differences"
)

lines(c(1, 2), control_data$engagement, type = "o", lty = 2)

axis(1, at = c(1, 2), labels = c("Before", "After"))

legend(
  "topleft",
  legend = c("Treatment", "Control"),
  lty = c(1, 2),
  pch = 1
)

# Guided interpretation:
# - Which group improved more?
# - What does the gap in change suggest?

# --------------------------------------------------
# Step 8: Key assumption
# --------------------------------------------------

# Difference-in-differences relies on an important idea:
#
# The two groups would have followed similar trends if no intervention happened.
#
# This is called the parallel trends assumption.

# Guided interpretation:
# - Is it reasonable to assume both groups would behave similarly?
# - What could violate this assumption?

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering:
#
# 1. A/B Testing
#    Why is this the strongest method?
#
# 2. Observational Data
#    What problem did we encounter?
#
# 3. Difference-in-Differences
#    How did this improve the analysis?
#
# 4. Causal Thinking
#    What makes a comparison fair?
#
# 5. Real-World Application
#    How would you evaluate interventions in practice?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# We are not just comparing groups.
#
# We are asking:
# What would have happened otherwise?
#
# Better methods lead to more credible answers.