# This line will load packages that will be necessary for this exercise.

library(tidyverse)
library(readr)

# Let's load dummy data and assign it to an object that is called "data_WT".

data_WT <- read_csv("MOCK_DATA.csv")

# Let's have a look at the fist function: SELECT. It allows you to pick only specific 
# column(s) in your dataset. Imaging if you have hundreds of columns in a table.
# Picking only a few for display then comes handy! Below I demonstrate how you can 
# select only first and last names in our dummy data.

data_WT %>% 
  select(first_name, last_name) 

# Now try yourself! Write code below that selects only columns "email" and "country".
# Note that once you load the data in, you can get hints from R on what variables are
# available, you can access them by hitting Tab key.


data_WT %>% 
  select(XXXXXX)
    
# Let's now explore function FILTER. For example, let's filter the results of 
# our first chunk of code and find only individuals whose name is Courtney.

data_WT %>% 
  select(first_name, last_name) %>% 
  filter (first_name == "Courtney")

# Try for yourself and try filtering on other variables. For example, find only
# clients that made purchases in Garden department. Don't forget to add
# a variable in the SELECT statement before filtering on it. 

data_WT %>%
  select(XXXXXXX) %>% 
  filter (XXXXX == "Garden")

# Finally, we will look at functions GROUP BY and SUMMARISE. Often to produce some
# kind of a report we need to aggregate data, so these functions allow us doing
# exactly that. Let's for example group our data by gender of individuals and then
# count how many individuals there are in each category.

data_WT %>% 
  select(gender) %>% 
  group_by(gender) %>% 
  summarise(count = n())

# You can also further filter these results by for example remove the NA row.
# Note that to find out count I used function n(). You might also want to use sum(),
# mean(), median() and many others. Just google for the function you need and
# it will provide more information.  Try below using sum() function by grouping
# the data by country and then calculating the sum of purchases. Hint: 
# last line would look like "summarise(total_purchases = sum(purchases))"

data_WT %>% 
  select(XXXXX) %>% 
  group_by(XXXX) %>% 
  summarise(XXXXX)
