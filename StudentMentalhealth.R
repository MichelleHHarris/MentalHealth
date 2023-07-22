#Michelle Harris
#This is a short project that compares two proportions using a theory-based approach.

library(dplyr)
library(tidyr)

View(Student.Mental.health)

two_way_table <- Student.Mental.health %>%
  count(Gender, Anxiety) %>%
  tidyr::pivot_wider(names_from = Anxiety, values_from = n, names_prefix = "Anxiety_")

# I have determined that there are at least 10 observations in each of the cells, 
# but now I must check the rest of the validity conditions. 

# Samples must be selected at random, but since the data set doesn't provide this information,
# I will assume that they were selected randomly.

# Additionally, samples must be independent of each other, which this data set observes.

# Now that all validity conditions have been met, I can state the null and alternative hypotheses.

# When comparing two proportions, we are checking to see if there is a difference in 
# the population proportion. We can either write this as pi(one variable) - pi(other variable) = 0,
# or pi(one variable) = pi(other variable). 

#Our hypotheses would be as follows:
#Null: pi(Gender) - pi(Anxiety) = 0
#Alternative: pi(Gender) - pi(Anxiety) != 0

24/75
10/26

#What we're seeing here is (female yes/total female responses)
#and (male yes/total male responses).
#Our outputs are .32 and .3846154 respectively. This means that
#32% of female students have anxiety and 38.46% of male students have anxiety.

#In order to "test" the significance of the difference of two proportions,
#we must subtract them from each other.

.3846154-.32

#This leave us with .0646154, or 6.46% difference.
#A 6% difference could be statistically significant depending on the
#person doing the analysis. I would conclude that this is not significant
#due to the size of the study. We can further this study by doing a simulation
#based analysis in order to get more accurate numbers from a larger sample size.
