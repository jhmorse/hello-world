library(tidyverse)

# Probabilities
# NOTE: All Page references are to the R Cookbook

# Suppose proportion of people with red hair is 23%.
# If we select a sample of 38 people:
# - What is probability of exactly 4 people with red hair?
# - on the TI-84: binompdf(38, .23, 4) = 0.0286
# Page 223, density function with binomial distribution
dbinom(4, size = 38, prob = 0.23)

# - What is the probability at least 4 people have red hair?
# - on the TI-84: 1 - binomcdf(38, .23, 3) = 0.9854
# Page 224, distribution function with binomial distribution
1 - pbinom(3, size = 38, prob = 0.23)
# Alternatively:
pbinom(3, size = 38, prob = 0.23, lower.tail = FALSE)
# Note the definition of lower.tail:
# - if TRUE (default), probabilities are P[X ≤ x], otherwise, P[X > x]
# - setting to FALSE, it is getting GREATER THAN x, NOT greater than or equal



