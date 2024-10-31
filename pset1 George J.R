# Name:George Johnson 
# ID:2134609
# PSet 1
library(utils)
library(readr)
india <- read_csv("C:/Users/Tommy_w7c1d3j/Desktop/School/Public Policy Stats/DSS/india.csv")
View(india)

# VARIABLES
  # Village - Represents and identifies what village we are looking at in the data set
  # Female - Represents if said village has a female politician 1 means yes, 0 means no
  # Water - How many new / repaired drinking water facilities have been implemented in village since random assignment
  # Irrigation - How many new / repaired irrigation facilities implemented in village since random assignment

# Observation Meanings 
#Each observation in this data set represents a village with or without a female politician and how their irrigation and water infrastructure has changed


# Interpret first observation
# The first village has a female politician and has had 10 new or repaired water facilities implemented and 0 new or repaired irrigation facilities

# Count Observations & Summary Statistics  
dim(india)
summary(india)

# Average new/repaired water facilities
# Using summary statistics the average amount of repaired or new water facilities among the villages is 17.84.

# New Vector Family
family <- c('My mom is 48', 'My dad is 48', 'My younger sister is 17')
#Vector Explained
# Family is considered an object (Variable) by R. The operator I used to create family is <- .  The function I used to create a new vector was c()

# Matrix from vector
family_vector <- matrix(family, ncol = 1, nrow = 3)
family_vector
# Matrix Dimensions
# The dimensions of the matrix is a 1 column by 3 row for the data set

