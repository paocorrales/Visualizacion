library(searcher)

# Buscar un tema

search_stackoverflow('join dataframes tidyverse')


# Buscar un error

library(dplyr)

mtcars %>%
  group_by(cyl) %>%
  summarise(summary(mpg))
search_google()
