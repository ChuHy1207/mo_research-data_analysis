library(readxl) # to read excel files
library(dplyr) # to carry out data wrangling functions
library(magrittr) # to write pipes (denoted as %>%)
library(ggplot2) # to draw graphs
library(stringr) # to wrangle strings
library(tidyr)
library(tidyquant)
library(RColorBrewer)
library(data.table)

educ_data_1317 <- read_xls("C:/Users/ASUS/Downloads/data_2014_2017.xls", sheet = 3) 
educ_data_1719 <- read_xlsx("C:/Users/ASUS/Downloads/data_2017_2019.xlsx", sheet = 2) 
educ_data_1317<- educ_data_1317 %>% mutate(id = case_when(
                        str_detect(educ_data_1317$Categories, "1") ~ 1,
                        str_detect(educ_data_1317$Categories, "2") ~ 2,
                        str_detect(educ_data_1317$Categories, "3") ~ 3,
                        str_detect(educ_data_1317$Categories, "4") ~ 4,
                        str_detect(educ_data_1317$Categories, "5") ~ 5))

educ_data_1314 <- educ_data_1317 %>%
  select(Categories, `2013-2014`, id)

educ_data_1314 <- educ_data_1314[c("id", "Categories", "2013-2014")]

educ_data_1314$Categories <- str_replace(educ_data_1314$Categories, "[1-5][a-z]?_", "")

educ1314_pivot_table1 <- educ_data_1314 %>%
  pivot_wider(names_from = "Categories", values_from = "2013-2014")
View(educ_data_1314)
View(educ1314_pivot_table1)
