
rainy_days_filtered <- data_frame[data_frame$precipitation > 1 & data_frame$precipitation < 8, ]


ggplot(rainy_days_filtered, aes(x = precipitation, y = count)) +
  geom_bar(stat = "summary", fun = "sum", fill = "blue") + 
  labs(title = "Gesamtzahl ausgeliehener Fahrräder an regnerischen Tagen ",
       x = "Niederschlagsmenge (mm)",
       y = "Anzahl ausgeliehener Fahrräder") +
  scale_x_continuous(limits = c(0, 3)) +  
  theme_minimal()

