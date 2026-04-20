# Lab Solutions: NLP (Guided)

---

## Step 1: Exploring the Data

The dataset contains student feedback comments.

These are unstructured text data, meaning:

* there are no predefined categories
* meaning must be extracted from the text

Initial observations may include:

* some comments are positive
* some comments highlight issues such as workload or clarity
* many comments contain both positive and negative elements

---

## Step 2: Cleaning the Text

Text cleaning involves:

* converting to lowercase
* removing punctuation
* standardising the format

This ensures that:

* similar words are treated consistently
* analysis becomes more reliable

For example:

"Helpful" and "helpful" are treated as the same word.

---

## Step 3: Tokenising the Text

Tokenisation splits each comment into individual words.

This allows us to:

* analyse text at the word level
* count frequencies
* identify patterns

---

## Step 4: Word Frequency

Counting word frequency helps identify common themes.

Typical observations may include:

* words like "workload", "assignment", "time"
* words like "helpful", "clear", "engaging"

This suggests:

* a mix of positive experiences and workload-related concerns

---

## Step 5: Removing Stopwords

Stopwords are common words such as:

* "the", "is", "and"

Removing them helps highlight meaningful terms.

After filtering:

* key words stand out more clearly
* themes become easier to identify

---

## Step 6: Identifying Themes

From the filtered words, possible themes include:

### 1. Workload

* heavy
* assignments
* time

---

### 2. Teaching Quality

* helpful
* clear
* explained

---

### 3. Engagement

* interesting
* engaging
* enjoyable

---

These themes reflect different aspects of the student experience.

---

## Step 7: Sentiment Analysis

Using a simple word-based approach:

* positive words increase the score
* negative words decrease the score

This produces a rough sentiment score for each comment.

---

## Step 8: Sentiment Labels

Comments can be classified as:

* positive
* neutral
* negative

Typical observations:

* some comments are clearly positive
* some are clearly negative
* some are mixed (both positive and negative elements)

---

## Step 9: Interpreting Sentiment

A reasonable interpretation:

* sentiment is mixed overall
* positive comments highlight teaching quality and engagement
* negative comments focus on workload and clarity

---

## Step 10: Usefulness

This analysis can support:

* identifying key student concerns
* improving course design
* prioritising interventions

For example:

* workload issues may need adjustment
* unclear instructions may require better communication

---

## Step 11: Limitations

Important limitations include:

* simple word lists may miss context
* sarcasm or nuance is not captured
* small datasets may not be representative
* interpretation is subjective

For example:

A comment like:

"The course is interesting but stressful"

contains both positive and negative sentiment.

---

## Final Reflection

A strong response should include:

### 1. Common words

Key terms such as workload, assignments, helpful, clear.

---

### 2. Themes

Main themes include workload, teaching quality, and engagement.

---

### 3. Sentiment

Overall sentiment is mixed.

---

### 4. Interpretation

Students generally find the course engaging but challenging in terms of workload.

---

### 5. Usefulness

Insights can guide improvements in workload balance and clarity of instructions.

---

## Key Note

There is no single correct interpretation.

A good response should:

* identify meaningful patterns
* interpret sentiment carefully
* connect findings to practical actions
* recognise the limitations of simple NLP methods
