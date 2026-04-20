# Module 11 Lab: Social Network Analytics

# Objective:
# Analyse relationships using network thinking.
#
# By the end of this lab, you should be able to:
# - represent data as a network
# - visualise nodes and connections
# - identify important nodes using centrality measures
# - interpret network patterns meaningfully

# --------------------------------------------------
# Setup: Install required package
# --------------------------------------------------

# Run this once if you do not have igraph installed

if (!require(igraph)) {
  install.packages("igraph")
  library(igraph)
} else {
  library(igraph)
}

# --------------------------------------------------
# Why this matters
# --------------------------------------------------

# Some important patterns are not found in individual rows of data.
#
# They are found in:
# - who connects with whom
# - who acts as a bridge
# - who may be isolated
# - how interaction flows through a network
#
# Social Network Analytics helps us understand these patterns.

# --------------------------------------------------
# Scenario
# --------------------------------------------------

# You are given student interaction data from a discussion forum.
#
# Each interaction shows one student replying to another.
#
# Your task is to:
# - build the network
# - identify important students
# - interpret what the structure may mean

# --------------------------------------------------
# Step 1: Load the interaction data
# --------------------------------------------------

# Each row shows a directed interaction:
# - source -> the student initiating the interaction
# - target -> the student receiving the interaction
#
# Look at the data first before building the network.

interaction_data <- data.frame(
  source = c("A", "A", "B", "B", "C", "D", "E", "F", "G"),
  target = c("B", "C", "C", "D", "A", "E", "F", "G", "E"),
  stringsAsFactors = FALSE
)

interaction_data

# Guided interpretation:
# - Which students appear frequently?
# - Are some students only mentioned once?
# - Do any students appear to connect multiple others?

# --------------------------------------------------
# Step 2: Build the network
# --------------------------------------------------

# We now convert the interaction data into a network.
#
# In this network:
# - each student is a node
# - each interaction is an edge

g <- graph_from_data_frame(interaction_data, directed = TRUE)

# --------------------------------------------------
# Step 3: Basic network information
# --------------------------------------------------

# Let us inspect the network structure.
#
# We want to know:
# - how many nodes there are
# - how many edges there are
# - who is in the network

vcount(g)
ecount(g)
V(g)$name
as_data_frame(g, what = "edges")

# --------------------------------------------------
# Step 4: Visualise the network
# --------------------------------------------------

# A visual representation helps us see the structure more clearly.
#
# This is often the best first step in network analysis.

plot(
  g,
  vertex.size = 30,
  vertex.label.cex = 1,
  edge.arrow.size = 0.5,
  main = "Student Interaction Network"
)

# Guided interpretation:
# - Which students seem more connected?
# - Are there any students at the edge of the network?
# - Does anyone appear to connect different parts of the network?

# --------------------------------------------------
# Understanding centrality measures
# --------------------------------------------------

# We will use different measures to understand importance in the network.
#
# Core measures:
# - Degree -> how connected a node is
# - Betweenness -> how much a node connects others
#
# Optional measures:
# - Closeness -> how efficiently a node can reach others
# - Eigenvector -> how influential a node is based on connections
#
# Focus on interpretation, not exact numbers.

# --------------------------------------------------
# Step 5: Degree centrality (Core)
# --------------------------------------------------

# Degree centrality tells us how connected each node is.
#
# For a directed network, we look at:
# - in-degree  -> how many incoming connections
# - out-degree -> how many outgoing connections

degree_summary <- data.frame(
  student = V(g)$name,
  in_degree = degree(g, mode = "in"),
  out_degree = degree(g, mode = "out")
)

degree_summary[order(-degree_summary$in_degree), ]

# Guided interpretation:
# - Which student receives the most interactions?
# - Which student initiates the most interactions?
# - What might this mean in a forum setting?

# --------------------------------------------------
# Step 6: Betweenness centrality (Core)
# --------------------------------------------------

# Betweenness centrality tells us how often a node lies between others.
#
# This helps identify:
# - bridges between groups
# - nodes that connect different parts of the network
#
# Not all important nodes are the most connected.
# Some are important because they connect others.

betweenness_df <- data.frame(
  student = V(g)$name,
  betweenness_centrality = betweenness(g, directed = TRUE, normalized = TRUE)
)

betweenness_df[order(-betweenness_df$betweenness_centrality), ]

# Guided interpretation:
# - Which student has the highest betweenness centrality?
# - Does this student connect different parts of the network?
# - Why might this matter?

# --------------------------------------------------
# Note on advanced measures
# --------------------------------------------------

# The next measures are more sensitive to:
# - network structure
# - direction of edges
# - implementation differences across tools (Python vs R)
#
# You may observe differences in values.
#
# Focus on:
# - relative patterns
# - interpretation
#
# not exact numerical values.

# --------------------------------------------------
# Step 7: (Optional) Closeness centrality
# --------------------------------------------------

# Closeness centrality tells us how close a node is to all others.
#
# It helps identify nodes that:
# - can reach others efficiently
# - are well-positioned in the network

closeness_df <- data.frame(
  student = V(g)$name,
  closeness_centrality = closeness(g, mode = "out", normalized = TRUE)
)

closeness_df[order(-closeness_df$closeness_centrality), ]

# Guided interpretation:
# - Which student appears well-positioned in the network?
# - Does this align with what you observed in the graph?
# - How is this different from being highly connected?

# --------------------------------------------------
# Step 8: (Optional) Eigenvector centrality
# --------------------------------------------------

# Eigenvector centrality measures importance based on
# connections to important nodes.
#
# It helps identify:
# - influential nodes
# - nodes connected to other important nodes

eigen <- eigen_centrality(g, directed = TRUE)

eigenvector_df <- data.frame(
  student = V(g)$name,
  eigenvector_centrality = eigen$vector
)

eigenvector_df[order(-eigenvector_df$eigenvector_centrality), ]

# Guided interpretation:
# - Which student appears influential based on connections?
# - Are they connected to other important students?
# - How is this different from degree centrality?

# --------------------------------------------------
# Step 9: Interpreting the network
# --------------------------------------------------

# Now move from metrics to meaning.
#
# Focus on:
# - Who is highly connected? (degree)
# - Who connects different groups? (betweenness)
# - Who is well-positioned? (closeness, optional)
# - Who appears influential? (eigenvector, optional)
#
# Remember:
# Different measures capture different types of importance.

# --------------------------------------------------
# Step 10: Think about real-world use
# --------------------------------------------------

# Network analysis can help us:
# - identify highly engaged students
# - detect isolated students
# - find bridge-builders or connectors
# - understand how participation is structured
#
# This can support:
# - engagement monitoring
# - peer mentoring
# - intervention planning

# --------------------------------------------------
# Final reflection
# --------------------------------------------------

# Write a short summary covering:
#
# 1. Network structure
#    What does the network look like?
#
# 2. Key nodes
#    Which students appear most central?
#
# 3. Interpretation
#    What do the centrality measures suggest?
#
# 4. Usefulness
#    How could this analysis support decisions?
#
# 5. Limitations
#    What can network analysis not tell us on its own?

# --------------------------------------------------
# Key takeaway
# --------------------------------------------------

# Social Network Analytics helps us understand:
# - connections
# - structure
# - influence
#
# Different metrics may give different values across tools.
#
# What matters is:
# - interpretation
# - relative importance
# - real-world meaning