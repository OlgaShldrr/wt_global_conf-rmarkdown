library(readr)
library(tidyverse)
MOCK_DATA <- read_csv("MOCK_DATA.csv")

#Graphs

MOCK_DATA_filtered_gender_country <- MOCK_DATA %>% 
  select(Country = country, `Last Name` = last_name, `First Name` = first_name, `Purchases (EUR)`= purchases, `Number of discounts offered` = was_offered_discount, Gender= gender, Department = department) %>% 
  filter(Country == params$country) %>% 
  group_by(Gender) %>% 
  summarise(`Total purchases (EUR)` = sum(`Purchases (EUR)`),
            `Number of discounts offered` = sum(`Number of discounts offered`))

MOCK_DATA_filtered_department_country <- MOCK_DATA%>% 
  select(Country = country, `Last Name` = last_name, `First Name` = first_name, `Purchases (EUR)` = purchases, `Number of discounts offered` = was_offered_discount, Gender= gender, Department = department) %>% 
  filter(Country == params$country) %>% 
  group_by(Department) %>% 
  summarise(`Total purchases (EUR)` = sum(`Purchases (EUR)`),
            `Number of discounts offered` = sum(`Number of discounts offered`))
