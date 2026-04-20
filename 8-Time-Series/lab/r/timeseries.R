# Module 8 Lab: Time Series

# Objective:
# Analyse how data changes over time.
#
# By the end of this lab, you should be able to:
# - understand what time series data is
# - visualise data over time
# - identify trends and changes
# - interpret time-based patterns
# - produce a simple forecast

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Some behaviours only make sense when viewed over time.
#
# For example:
# - engagement may be stable overall, but falling recently
# - activity may spike around deadlines
# - sudden drops may signal problems
#
# Time series analysis helps us see these patterns.
#
# Time adds context to data.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given weekly student engagement data.
#
# Your task is to identify patterns over time,
# interpret what they might mean,
# and make a simple forecast.

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

# We begin with a simple weekly dataset.
#
# Look at the data and ask:
# - What does each row represent?
# - What is the time variable?
# - What is being measured over time?

engagement_data <- data.frame(
  week = c(1, 2, 3, 4, 5, 6, 7, 8),
  logins = c(120, 118, 125, 130, 128, 115, 98, 90)
)

engagement_data

# --------------------------------------------------
# Step 2: Understand the structure
# --------------------------------------------------

# Before plotting the data, understand:
# - which column represents time
# - which column represents the observed value

str(engagement_data)

# --------------------------------------------------
# Step 3: Visualise the data
# --------------------------------------------------

# The best way to understand time series is to plot it.
#
# We will create a line chart of logins over time.

plot(
  engagement_data$week,
  engagement_data$logins,
  type = "o",
  xlab = "Week",
  ylab = "Logins",
  main = "Weekly Student Logins"
)

# Guided interpretation:
# - Is engagement increasing, decreasing, or stable?
# - Are there any sudden changes?
# - Which week seems unusual?

# --------------------------------------------------
# Step 4: Identify trend
# --------------------------------------------------

# A trend is the general direction of movement over time.
#
# We can compare the start and end of the series to get
# a simple sense of trend.

start_value <- engagement_data$logins[1]
end_value <- engagement_data$logins[nrow(engagement_data)]

start_value
end_value
end_value - start_value

# Guided interpretation:
# - Is the overall trend upward or downward?
# - Is the change small or large?
# - What might explain this pattern?

# --------------------------------------------------
# Step 5: Smooth the series with a moving average
# --------------------------------------------------

# Weekly values can fluctuate.
#
# A moving average helps us see the underlying pattern
# more clearly by smoothing short-term variation.
#
# We will use a 3-week moving average.

moving_average_3 <- stats::filter(
  engagement_data$logins,
  rep(1/3, 3),
  sides = 1
)

engagement_data$moving_average_3 <- as.numeric(moving_average_3)

# --------------------------------------------------
# Step 6: Plot the original data and moving average
# --------------------------------------------------

# This helps us compare:
# - actual weekly values
# - the smoothed trend

plot(
  engagement_data$week,
  engagement_data$logins,
  type = "o",
  xlab = "Week",
  ylab = "Logins",
  main = "Weekly Logins with Moving Average",
  ylim = range(c(engagement_data$logins, engagement_data$moving_average_3), na.rm = TRUE)
)

lines(
  engagement_data$week,
  engagement_data$moving_average_3,
  type = "o",
  lty = 2
)

legend(
  "topright",
  legend = c("Actual Logins", "3-Week Moving Average"),
  lty = c(1, 2),
  pch = 1
)

# Guided interpretation:
# - Does the moving average make the pattern clearer?
# - Does it confirm the same trend?
# - Is there a period where engagement seems to decline more clearly?

# --------------------------------------------------
# Step 7: Interpret possible causes
# --------------------------------------------------

# Now move from observation to interpretation.
#
# Ask:
# - Could the drop be linked to student disengagement?
# - Could there be an external reason, such as timing in the semester?
# - Would this pattern justify follow-up or intervention?

# --------------------------------------------------
# Step 8: A simple forecast
# --------------------------------------------------

# So far, we have:
# - observed past behaviour
# - identified trends
# - smoothed the data
#
# Now we ask:
# What might happen next?
#
# We will create a simple forecast using the recent trend.
#
# This is not meant to be precise —
# it is meant to provide a rough indication of future behaviour.

last_ma <- tail(na.omit(engagement_data$moving_average_3), 1)
last_ma

forecast_week <- 9
forecast_value <- last_ma

forecast_week
forecast_value

# Guided interpretation:
# This forecast assumes:
# - the recent pattern continues
# - short-term fluctuations are smoothed out
#
# Think about:
# - Is this a reasonable assumption?
# - What could cause the actual value to differ?

# --------------------------------------------------
# Step 9: Plot the forecast
# --------------------------------------------------

# We add the forecast point to the plot.

plot(
  engagement_data$week,
  engagement_data$logins,
  type = "o",
  xlab = "Week",
  ylab = "Logins",
  main = "Forecasted Engagement",
  xlim = c(1, 9),
  ylim = range(c(engagement_data$logins, engagement_data$moving_average_3, forecast_value), na.rm = TRUE)
)

lines(
  engagement_data$week,
  engagement_data$moving_average_3,
  type = "o",
  lty = 2
)

points(forecast_week, forecast_value, col = "red", pch = 19)

legend(
  "topright",
  legend = c("Actual", "Moving Average", "Forecast"),
  lty = c(1, 2, NA),
  pch = c(1, 1, 19),
  col = c("black", "black", "red")
)

# Guided interpretation:
# - Does the forecast follow the recent trend?
# - Does it suggest improvement or decline?
# - How confident would you be using this forecast?

# --------------------------------------------------
# Step 10: Limitations of simple forecasting
# --------------------------------------------------

# This simple forecast has limitations:
# - it only uses recent values
# - it does not account for sudden changes
# - it assumes patterns continue
#
# In reality, forecasting often requires:
# - more data
# - more sophisticated models
# - understanding of context

# --------------------------------------------------
# Step 11: Think about usefulness
# --------------------------------------------------

# Time series analysis can help us:
# - detect changes early
# - monitor progress over time
# - identify when intervention may be needed
#
# It helps answer not just what happened,
# but when behaviour changed and what may happen next.

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering:
#
# 1. Trend
#    What overall trend do you observe?
#
# 2. Pattern
#    Were there any notable changes or unusual weeks?
#
# 3. Forecast
#    What does the simple forecast suggest?
#
# 4. Interpretation
#    What might explain the observed pattern?
#
# 5. Usefulness
#    How could this analysis support decisions?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Time series analysis helps us:
# - understand patterns over time
# - detect changes early
# - anticipate future behaviour
#
# Even simple forecasts can support decision-making —
# but they must be used with caution.