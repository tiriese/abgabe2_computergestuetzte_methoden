library(lubridate)
library(dplyr)
library(ggplot2)


data_frame$date <- as.Date(data_frame$date)


data_frame <- data_frame %>%
  mutate(Saison = case_when(
    month(date) %in% 3:5 ~ "Frühling",
    month(date) %in% 6:8 ~ "Sommer",
    month(date) %in% 9:11 ~ "Herbst",
    TRUE ~ "Winter"
  ))


ggplot(data_frame, aes(x = count, fill = Saison)) +
  geom_density(alpha = 0.3, color = "black") +  
  scale_fill_manual(values = c("Frühling" = "#fef0d9", 
                               "Sommer" = "#fdcc8a", 
                               "Herbst" = "#fc8d59", 
                               "Winter" = "#d7301f")) +  
  labs(title = "Verteilung der Anzahl ausgeliehener Fahrräder nach Jahreszeit",
       x = "Anzahl ausgeliehener Fahrräder",
       y = "Dichte") +
  theme_minimal() +
  theme(legend.position = "top")
