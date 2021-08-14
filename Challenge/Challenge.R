# Load packages
library(tidyverse)
library(tidyr)
library(dplyr)
library(ggplot2)
library(readxl)
library(gganimate)

# Load datasets

# //////////////////////////////////////////////////////////////////////////// #
THCS_1415 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THCS/THCS_1420.xls",
                        sheet = "1415")
THCS_1415 <- THCS_1415 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1415) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THCS")
  
###
THCS_1516 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THCS/THCS_1420.xls",
                        sheet = "1516")
THCS_1516 <- THCS_1516 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1516) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THCS")
###
THCS_1617 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THCS/THCS_1420.xls",
                        sheet = "1617")
THCS_1617 <- THCS_1617 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1617) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THCS")
###
THCS_1718 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THCS/THCS_1420.xls",
                        sheet = "1718")
THCS_1718 <- THCS_1718 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1718) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THCS")
###
THCS_1819 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THCS/THCS_1420.xls",
                        sheet = "1819")
THCS_1819 <- THCS_1819 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1819) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THCS")
###
THCS_1920 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THCS/THCS_1420.xls",
                        sheet = "1920")
THCS_1920 <- THCS_1920 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1920) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THCS")
# //////////////////////////////////////////////////////////////////////////// #
THPT_1415 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THPT/THPT_1420.xls",
                        sheet = "1415")
THPT_1415 <- THPT_1415 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1415) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THPT")
###
THPT_1516 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THPT/THPT_1420.xls",
                        sheet = "1516")
THPT_1516 <- THPT_1516 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1516) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THPT")
###
THPT_1617 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THPT/THPT_1420.xls",
                        sheet = "1617")
THPT_1617 <- THPT_1617 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1617) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THPT")
###
THPT_1718 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THPT/THPT_1420.xls",
                        sheet = "1718")
THPT_1718 <- THPT_1718 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1718) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THPT")
###
THPT_1819 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THPT/THPT_1420.xls",
                        sheet = "1819")
THPT_1819 <- THPT_1819 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1819) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THPT")
###
THPT_1920 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/THPT/THPT_1420.xls",
                        sheet = "1920")
THPT_1920 <- THPT_1920 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1920) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "THPT")
# //////////////////////////////////////////////////////////////////////////// #
DH_1415 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/DH/DH_1420.xls",
                        sheet = "1415")
DH_1415 <- DH_1415 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1415) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "DH")
###
DH_1516 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/DH/DH_1420.xls",
                      sheet = "1516")
DH_1516 <- DH_1516 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1516) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "DH")
###
DH_1617 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/DH/DH_1420.xls",
                      sheet = "1617")
DH_1617 <- DH_1617 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1617) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "DH")
###
DH_1718 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/DH/DH_1420.xls",
                      sheet = "1718")
DH_1718 <- DH_1718 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1718) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "DH")
###
DH_1819 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/DH/DH_1420.xls",
                      sheet = "1819")
DH_1819 <- DH_1819 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1819) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "DH")
###
DH_1920 <- read_excel("C:/Users/admin/Desktop/HY/MO_research/mo_research-data_analysis/Challenge/DH/DH_1420.xls",
                      sheet = "1920")
DH_1920 <- DH_1920 %>%
  rename("Categories" = ...1) %>%
  filter(Categories == "Tong_so") %>%
  mutate(year = 1920) %>%
  select(So_hoc_sinh,
         Moi_tuyen,
         year) %>%
  mutate(Categories = "DH")
# //////////////////////////////////////////////////////////////////////////// #

# Combine datasets

### THCS ###
THCS_1420 <- rbind(THCS_1415, THCS_1516,
                   THCS_1617, THCS_1718,
                   THCS_1819, THCS_1920)

rm(THCS_1415, THCS_1516,
   THCS_1617, THCS_1718,
   THCS_1819, THCS_1920)

### THPT ###
THPT_1420 <- rbind(THPT_1415, THPT_1516,
                   THPT_1617, THPT_1718,
                   THPT_1819, THPT_1920)

rm(THPT_1415, THPT_1516,
   THPT_1617, THPT_1718,
   THPT_1819, THPT_1920)

### DH ###
DH_1420 <- rbind(DH_1415, DH_1516,
                 DH_1617, DH_1718,
                 DH_1819, DH_1920)
rm(DH_1415, DH_1516,
   DH_1617, DH_1718,
   DH_1819, DH_1920)

# Calculate graduated students
THCS_1420 <- THCS_1420 %>%
  mutate(So_hoc_sinh_lag = lag(So_hoc_sinh)) %>%
  mutate(Tot_nghiep = lead((So_hoc_sinh_lag + Moi_tuyen) - So_hoc_sinh)) %>%
  select(-c(So_hoc_sinh_lag))

THPT_1420 <- THPT_1420 %>%
  mutate(So_hoc_sinh_lag = lag(So_hoc_sinh)) %>%
  mutate(Tot_nghiep = lead((So_hoc_sinh_lag + Moi_tuyen) - So_hoc_sinh)) %>%
  select(-c(So_hoc_sinh_lag))

DH_1420 <- DH_1420 %>%
  mutate(So_hoc_sinh_lag = lag(So_hoc_sinh)) %>%
  mutate(Tot_nghiep = lead((So_hoc_sinh_lag + Moi_tuyen) - So_hoc_sinh)) %>%
  select(-c(So_hoc_sinh_lag))

# Calculate new THPT ratio/THCS graduated
THPT_1420 <- THPT_1420 %>%
  mutate(ty_le_nhap_hoc = THPT_1420$Moi_tuyen/THCS_1420$Tot_nghiep)

DH_1420 <- DH_1420 %>%
  mutate(ty_le_nhap_hoc = DH_1420$Moi_tuyen/THPT_1420$Tot_nghiep)

# Combine THPT & DH
ty_le_nhap_hoc_1420 <- rbind(THPT_1420, DH_1420)


ty_le_nhap_hoc_1420 <- ty_le_nhap_hoc_1420[c("Categories",
                                             "year",
                                             "ty_le_nhap_hoc")] 
ty_le_nhap_hoc_1420 <- ty_le_nhap_hoc_1420 %>%
  filter((Categories == "THPT" | Categories == "DH") & 
           (year == 1415 | year == 1516 | year == 1617 | year == 1718 | year == 1819))
ty_le_nhap_hoc_1420$year <- case_when(ty_le_nhap_hoc_1420$year == 1415 ~ 2014,
                                      ty_le_nhap_hoc_1420$year == 1516 ~ 2015,
                                      ty_le_nhap_hoc_1420$year == 1617 ~ 2016,
                                      ty_le_nhap_hoc_1420$year == 1718 ~ 2017,
                                      ty_le_nhap_hoc_1420$year == 1819 ~ 2018)
# Plotting
dev.off()
options(device = "windows")

ty_le_nhap_hoc_1420 %>%
  ggplot(aes(x = year, y = as.numeric(ty_le_nhap_hoc), color = Categories)) +
  geom_line(size = 2) +
  geom_point(size = 1.5) +
  theme_classic() +
  labs(title = "ADMISSION RATIO from 2014 to 2019",
       x = "Year",
       y = "Admission ratio") + 
  theme(plot.title = element_text(face = "bold", color = "black", size = 30), # Adjust plot title 
        panel.background = element_rect(fill = "Lightcyan2"), # Adjust panel color
        plot.background = element_rect(fill = "White"), # Adjust plot color
        axis.title.x = element_text(color = "darkseagreen4", face = "bold", size = 20),  # x Title with grey color and bold, italic face 
        axis.title.y = element_text(color = "royalblue4", face = "bold", size = 20), # y Title with dark green color and bold, italic face
        axis.text.x = element_text(vjust = 0.65, color = "royalblue4", face = "bold", size = 15), # Adjust the angle, color, face of the x text
        axis.text.y = element_text(face = "bold", color = "darkseagreen4", size = 15), # Adjust face, color of y text
        axis.line.x = element_line(color = "Thistle4", size = 2), # Adjust x axis line
        axis.line.y = element_line(color = "Salmon4", size = 2)) #+
  # transition_reveal(year)

# readr::parse_number()