# Lab Solutions: Clustering (Guided)

---

## Step 1: Exploring the Data

The dataset contains student engagement variables:

* `logins`
* `forum_posts`

From initial observation:

* some students have very high engagement
* some have very low engagement
* others fall in between

This suggests that clustering may reveal meaningful groups.

---

## Step 2: Visualising the Data

The scatter plot typically shows:

* a group of students with high logins and forum activity
* a group with moderate engagement
* a group with low engagement

This indicates that natural groupings may exist.

---

## Step 3: Applying Clustering

Using K-Means with k = 3, the algorithm groups students based on similarity.

The exact cluster labels (0, 1, 2) are arbitrary, but the grouping structure is what matters.

---

## Step 4: Visualising Clusters

The clustered plot should show:

* three distinct regions
* students within each cluster being relatively close to each other
* separation between clusters

This suggests that the clustering is capturing meaningful structure in the data.

---

## Step 5: Interpreting Cluster Characteristics

Based on the cluster summary:

* one cluster will have high average logins and forum posts
* one cluster will have moderate values
* one cluster will have low values

These can be interpreted as:

* highly engaged students
* moderately engaged students
* disengaged students

---

## Step 6: Interpreting Clusters

The clusters can be labelled meaningfully, for example:

* Cluster A → Highly engaged
* Cluster B → Moderately engaged
* Cluster C → Low engagement

The exact labels are not fixed and depend on interpretation.

---

## Step 7: Usefulness

Clustering can support:

* targeted interventions (focus on low engagement group)
* personalised communication
* resource allocation

For example:

* highly engaged students may need enrichment
* low engagement students may need support

---

## Step 8: Limitations

Clustering has several limitations:

* results depend on the chosen number of clusters (k)
* clusters may not always be clearly separated
* interpretation is subjective
* important variables may be missing

---

## Final Reflection

A strong response should include:

### 1. Clusters

Three groups are identified: high, medium, and low engagement.

---

### 2. Interpretation

Clusters represent different levels of student engagement.

---

### 3. Use cases

Clusters can be used for segmentation and targeted interventions.

---

### 4. Limitations

Results depend on assumptions and require careful interpretation.

---

### 5. Next step

Possible improvements include:

* trying different values of k
* adding more variables
* validating clusters using domain knowledge

---

## Key Note

There is no single correct clustering.

The value comes from:

* identifying patterns
* interpreting them meaningfully
* using them to support decisions
