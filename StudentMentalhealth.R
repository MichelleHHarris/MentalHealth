#Michelle Harris
#This is a short project that compares two proportions using a theory-based approach.

library(dplyr)
library(tidyr)

View(Student.Mental.health)

two_way_table <- Student.Mental.health %>%
  count(Gender, Anxiety) %>%
  tidyr::pivot_wider(names_from = Anxiety, values_from = n, names_prefix = "Anxiety_")