data_frame$temperature_celsius <- (data_frame$average_temperature - 32) * 5/9
ggplot(data_frame, aes(x = temperature_celsius)) + 
  geom_density(fill = "blue", alpha = 0.7) +
  labs(title = "Kern-Dichteschätzer der Temperatur ",
       x = "Temperatur (°C)",
       y = "Dichte") +
  theme_minimal()

dim(data_frame)