library(readr)
library(tidyverse)
MOCK_DATA <- read_csv("MOCK_DATA.csv")



#Graphs

MOCK_DATA_filtered_gender_purchase <- MOCK_DATA %>% 
  select(Country = country, purchases, was_offered_discount, gender) %>% 
  group_by(Country, gender) %>% 
  summarise(`Total purchases (EUR)` = sum(purchases), 
            `Number of discounts offered` = sum(was_offered_discount)) %>%
  filter(`Total purchases (EUR)` > params$purchases_more_than)


MOCK_DATA_filtered_credit_card_purchase <- MOCK_DATA %>% 
  select(Country = country, purchases, was_offered_discount, credit_card) %>% 
  group_by(Country, credit_card) %>% 
  summarise(`Total purchases (EUR)` = sum(purchases), 
            `Number of discounts offered` = sum(was_offered_discount)) %>%
  filter(`Total purchases (EUR)` > params$purchases_more_than)


