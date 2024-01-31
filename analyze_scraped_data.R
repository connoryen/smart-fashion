library(tidyverse)

df <- read.csv('scraped_data.csv')

df %>%
  filter(grepl("33", sizes),
         new_price <= 150) %>%
  arrange(-per_off) %>%
  select(-category) %>%
  view()
