library(readr)
library(tidyverse)
MOCK_DATA <- read_csv("MOCK_DATA.csv")
MOCK_DATA$purchases <- gsub(x=MOCK_DATA$purchases, pattern = "€", replacement = "")
MOCK_DATA$purchases <- gsub(x=MOCK_DATA$purchases, pattern = ",", replacement = ".")
MOCK_DATA$purchases <- as.numeric(MOCK_DATA$purchases)
purchases_all_countries <- MOCK_DATA %>% 
  select(country, purchases, was_offered_discount) %>% 
  group_by(country) %>% 
  summarise(total_purchases = sum(purchases), 
            n_discount = sum(was_offered_discount))

purchases_all_countries_gender <- MOCK_DATA %>% 
  select(country, purchases, was_offered_discount, gender) %>% 
  group_by(country, gender) %>% 
  summarise(total_purchases = sum(purchases), 
            n_discount = sum(was_offered_discount))

