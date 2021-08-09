# Install packages
install.packages("RColorBrewer")

# Import libraries
library(readxl) # to read excel files
library(dplyr) # to carry out data wrangling functions
library(magrittr) # to write pipes (denoted as %>%)
library(ggplot2) # to draw graphs
library(stringr) # to wrangle strings
library(tidyr)
library(RColorBrewer) # for color palette

# Import dataset
data_2017_2019 <- read_excel("data_2017_2019.xlsx")

# Data Preprocessing
new_undergraduate_student <- data_2017_2019 %>% 
  filter(school_type == 'total') %>% # filter out school type = 'total'
  select(academic_year, `2_new_undergraduate_students`, `2a_Full-time`, `2b_Part-time`, `2c_Remote-study`) %>% # select columns relevant to our topic, which is undergraduatr student here
  pivot_longer(!academic_year, names_to = "categories", values_to = "values") # change table structure from wide to long to visualize

new_undergraduate_student$edited_categories <- case_when(
  new_undergraduate_student$categories == "2_new_undergraduate_students" ~ "2. New undergraduate students",
  new_undergraduate_student$categories == "2a_Full-time" ~ "2a. Full-time",
  new_undergraduate_student$categories == "2b_Part-time" ~ "2b. Part-time",
  new_undergraduate_student$categories == "2c_Remote-study" ~ "2c. Remote study",
  TRUE ~ as.character(new_undergraduate_student$categories)
)

# Visualization
new_undergraduate_student %>% 
  ggplot(aes(x=academic_year, y = values, fill=edited_categories)) + 
  geom_col(position = "dodge") +
  scale_fill_brewer(palette="Spectral") +
  labs(x='Academic Year', y='Number of Students', fill = 'Type of Students') + 
  geom_text(aes(label = values), position=position_dodge(0.9), vjust=-0.3, size = 2.5) + 
  theme_classic()
