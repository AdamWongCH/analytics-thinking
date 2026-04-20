# Lab Solutions: Time Series (Guided)

---

## Step 1: Exploring the Data

The dataset contains:

* a time variable: `week`
* an observed value: `logins`

Each row represents student engagement for a given week.

This makes it a simple time series because the observations are ordered over time.

---

## Step 2: Understanding the Structure

The key feature of time series data is that:

* the order of observations matters
* each value is linked to a point in time

In this dataset:

* `week` provides the sequence
* `logins` shows engagement over time

---

## Step 3: Visualising the Data

The line plot helps us see how engagement changes week by week.

A reasonable observation is:

* engagement rises slightly in the early weeks
* then begins to decline
* the drop becomes more noticeable in the later weeks

This suggests that the pattern is not stable across the whole period.

---

## Step 4: Identifying Trend

Comparing the start and end values shows that:

* the final value is lower than the initial value
* the overall trend is downward

This suggests that student engagement has declined over time.

A downward trend may be a warning signal if engagement is something we want to maintain or improve.

---

## Step 5: Using a Moving Average

The 3-week moving average smooths short-term fluctuations.

This helps us focus on the broader direction of change rather than week-to-week noise.

A reasonable interpretation is:

* the moving average makes the decline easier to see
* the later weeks show a clearer downward pattern
* the smoothed series supports the interpretation of decreasing engagement

---

## Step 6: Interpreting Possible Causes

Possible explanations for the drop may include:

* reduced student motivation
* timing effects in the semester
* fewer urgent deadlines
* changes in course intensity or participation requirements

The key point is that time series helps us notice *when* behaviour changes, even if it does not explain the cause on its own.

---

## Step 7: Simple Forecast

The simple forecast uses the latest moving average as a rough estimate for the next week.

This suggests:

* if recent behaviour continues, engagement may remain at a lower level
* the next week is likely to stay below the earlier peak weeks

This is useful as an early signal, but it is only a rough projection.

---

## Step 8: Interpreting the Forecast

A good interpretation would note that:

* the forecast follows the recent downward trend
* it suggests continued decline rather than recovery
* it may justify closer monitoring or early intervention

However, confidence should remain limited because:

* the forecast is based on very little data
* it assumes recent patterns continue
* it does not account for external events or sudden changes

---

## Step 9: Limitations

Important limitations include:

* only a small number of weeks are observed
* no seasonal effects are modelled
* no external explanatory variables are included
* the simple moving average forecast is not a formal forecasting model

This means the analysis is useful for pattern detection, but not for precise forecasting.

---

## Final Reflection

A strong response should include:

### 1. Trend

The time series shows an overall downward trend in engagement.

---

### 2. Pattern

There is an early rise followed by a noticeable decline in later weeks.

---

### 3. Forecast

The simple forecast suggests that engagement may remain low if recent behaviour continues.

---

### 4. Interpretation

The decline may indicate disengagement or a change in student behaviour over time.

---

### 5. Usefulness

This analysis can support monitoring, early warning, and decisions about intervention timing.

---

## Key Note

There is no single perfect interpretation.

A good response should:

* describe the trend clearly
* distinguish observation from explanation
* interpret the forecast cautiously
* connect the findings to possible action
