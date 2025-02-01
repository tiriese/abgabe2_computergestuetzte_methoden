no_rain_days <- data_frame[data_frame$precipitation < 1, ]

ggplot(no_rain_days, aes(x = precipitation, y = count)) +
  geom_bar(stat = "summary", fun = "mean", fill = "blue") +  
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(title = "Durchschnittliche Anzahl ausgeliehener Fahrräder an Tagen ohne Regen ",
       x = "Niederschlagsmenge (mm)",
       y = "Durchschnittliche Anzahl ausgeliehener Fahrräder") +
  scale_x_continuous(limits = c(0, 1)) + 
  theme_minimal()
