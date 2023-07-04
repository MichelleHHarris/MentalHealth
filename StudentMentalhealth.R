#Michelle Harris
#This is a short project that compares two proportions using a theory-based approach.

library(dplyr)
library(tidyr)

View(Student.Mental.health)

two_way_table <- Student.Mental.health %>%
  count(Gender, Anxiety) %>%
  tidyr::pivot_wider(names_from = Anxiety, values_from = n, names_prefix = "Anxiety_")

# We have determined that there are at least 10 observations in each of the cells, 
# but now we must check the rest of the validity conditions. 

# Samples must be selected at random, but since we aren't given that information for this data set,
# we will assume that they were selected randomly.

#Additionally, samples must be independent of each other, which this data set observes.

