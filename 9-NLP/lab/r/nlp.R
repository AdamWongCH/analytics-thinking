# Module 9 Lab: NLP

# Objective:
# Extract insights from text data.

# --------------------------------------------------
# Step 1: Load the data
# --------------------------------------------------

feedback_data <- data.frame(
  comment = c(
    "The course content is interesting but the workload is too heavy.",
    "The instructor is helpful and explains concepts clearly.",
    "Too many assignments and not enough time to complete them.",
    "I enjoyed the lessons, but the pace was too fast.",
    "The examples were useful and practical.",
    "The instructions for the assignment were unclear.",
    "The course is engaging and well-structured.",
    "I found the workload stressful and difficult to manage."
  ),
  stringsAsFactors = FALSE
)

feedback_data

# --------------------------------------------------
# Step 2: Clean the text
# --------------------------------------------------

clean_text <- function(text) {
  text <- tolower(text)
  text <- gsub("[^a-z ]", "", text)
  return(text)
}

feedback_data$clean_comment <- sapply(feedback_data$comment, clean_text)

feedback_data

# --------------------------------------------------
# Step 3: Tokenise
# --------------------------------------------------

tokens <- strsplit(feedback_data$clean_comment, " ")

feedback_data$tokens <- tokens

feedback_data[, c("comment", "tokens")]

# --------------------------------------------------
# Step 4: Word frequency
# --------------------------------------------------

all_words <- unlist(tokens)
word_counts <- table(all_words)

sort(word_counts, decreasing = TRUE)

# --------------------------------------------------
# Step 5: Remove stopwords
# --------------------------------------------------

stopwords <- c("the", "is", "and", "to", "but", "i", "a", "of",
               "for", "was", "too", "not", "them", "were",
               "this", "it", "in", "on", "my")

filtered_words <- all_words[!(all_words %in% stopwords)]

filtered_counts <- table(filtered_words)

sort(filtered_counts, decreasing = TRUE)

# --------------------------------------------------
# Step 6: Sentiment analysis
# --------------------------------------------------

positive_words <- c("interesting", "helpful", "clearly", "enjoyed",
                    "useful", "practical", "engaging", "wellstructured")

negative_words <- c("heavy", "stressful", "difficult", "unclear", "fast")

sentiment_score <- function(words) {
  score <- 0
  for (w in words) {
    if (w %in% positive_words) score <- score + 1
    if (w %in% negative_words) score <- score - 1
  }
  return(score)
}

feedback_data$sentiment_score <- sapply(tokens, sentiment_score)

feedback_data[, c("comment", "sentiment_score")]

# --------------------------------------------------
# Step 7: Sentiment label
# --------------------------------------------------

sentiment_label <- function(score) {
  if (score > 0) return("positive")
  if (score < 0) return("negative")
  return("neutral")
}

feedback_data$sentiment_label <- sapply(feedback_data$sentiment_score, sentiment_label)

feedback_data[, c("comment", "sentiment_label")]

# --------------------------------------------------
# Step 8: Summary
# --------------------------------------------------

table(feedback_data$sentiment_label)

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Think about:
# - What themes appear?
# - What sentiment dominates?
# - What actions would you recommend?