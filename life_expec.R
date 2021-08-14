# Import library & data
library(ggplot2)
library(dplyr)
library(tidyverse)
library(gganimate)
library(RColorBrewer)
library(viridis)
library(ggsci)
library(wesanderson)
options(ggplot2.continuous.colour="viridis")
options(ggplot2.continuous.fill = "viridis")
setwd("C:/Users/admin/Desktop/MO research/mo_research-data_analysis")
life_expec <- read.csv("life_expec.csv")

# See the variables
colnames(life_expec)
life_expec %>%
  filter(Year == 2010)

life_expec <- life_expec %>%
  filter(Race == "All Races", Sex != "Both Sexes") %>%
  arrange(Year)

life_expec %>%
  ggplot(aes(x = Age_Adj_Death_Rate, y = Avg_Life_Expec, color = Sex)) +
  geom_point(size = 1.5) +
  scale_color_hue(l = 60, c = 35) +
  geom_hline(yintercept = 60, size = 1.2) +
  theme_classic() +
  labs(title = "AVERAGE LIFE EXPECTANCY from 1900 to 2014",
       x = "Year",
       y = "Average Life Expectancy") +
  theme(panel.background = element_rect(fill = "lavenderblush2"),
        plot.background = element_rect(fill = "ivory3"),
        plot.title = element_text(color = "red", size = 25, face = "bold.italic"),
        axis.title = element_text(color = "coral4", size = 15, face = "bold"),
        axis.text.x = element_text(color = "aquamarine4", size = 11, face = "bold"),
        axis.text.y = element_text(color = "aquamarine4", size = 11, face = "bold"),
        axis.line = element_line(color = "aquamarine4", size = 1.5),
        legend.title = element_text(face = "bold")) +
  transition_time(Year)
  
  
library(RColorBrewer)
par(mar=c(3,4,2,2))
display.brewer.all()

  
  
  
  
  
  
  
