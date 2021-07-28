# Import libraries
library(readxl) # to read excel files
library(dplyr) # to carry out data wrangling functions
library(magrittr) # to write pipes (denoted as %>%)
library(ggplot2) # to draw graphs
library(stringr) # to wrangle strings
library(tidyr)
library(janitor)
library(RColorBrewer) # for color palette

# Import data
educ_data_13_17 <- data_2014_2017 <- read_excel("C:/Users/admin/Desktop/1/data_2014_2017.xls", sheet = "clean_data")
educ_data_17_19 <- data_2017_2019 <- read_excel("C:/Users/admin/Desktop/1/data_2017_2019.xlsx", sheet = "Final clean data")
# Processing data 
total_new_13_17 <- filter(educ_data_13_17, Categories %in% c("1_Number of schools",
                                                             "2_New_students")) %>%
  rename("2013_2014" = "2013-2014",
         "2014_2015" = "2014-2015",
         "2015_2016" = "2015-2016",
         "2016_2017" = "2016-2017") %>%
  t()
total_new_13_17 <- cbind(Row.Names = rownames(total_new_13_17), total_new_13_17)
rownames(total_new_13_17) <- NULL
total_new_13_17[1] <- "academic_year" 
total_new_13_17[1,2] <- "1_number_of_school"
total_new_13_17[1,3] <- "2_new_undergraduate_students"
colnames(total_new_13_17) <- total_new_13_17[1,]
total_new_13_17 <- total_new_13_17[-1,]
total_new_13_17 <- as.data.frame(t(total_new_13_17))

total_new_17_19 <- filter(educ_data_17_19, school_type == "total") %>%
  select(academic_year, `1_number_of_school`, `2_new_undergraduate_students`) 
total_new_13_19 <- rbind(total_new_13_17, total_new_17_19)

#total_new_13_17 %>% pivot_longer(cols = c("2013-2014",
#                                          "2014-2015",
#                                         "2015-2016",
#                                          "2016-2017"),
#                                names_to = "academic_year",
#                                 values_to = "values")
#Visualization
total_new_13_19 %>%
  ggplot(aes(x = academic_year, y = `1_number_of_school`)) +
  geom_col(position = "dodge") +
  theme_classic() +
  labs(y = "Năm học", x = "Số trường") +
  ggtitle("Số trường qua các năm")
