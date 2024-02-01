library(tidyverse)

df0 <- read.csv('scraped_data.csv')

nrow(df0)

df <- df0 %>%
  filter(old_price != 0 & new_price != 0,
         grepl("50 | 16 | M | L | 10 | 10.5 | ONESIZE | 40 | 34", sizes) | sizes == "") %>%
  mutate(per_off = 1-new_price/old_price) %>%
  arrange(-per_off)

df %>%
  select(-link) %>%
  view()

