ggplot(data_frame, aes(x = windspeed)) + 
  geom_density(fill = "blue", alpha = 0.7) +  
  labs(title = "Kern-Dichteschätzer der Windgeschwindigkeit (in km/h)",
       x = "Windgeschwindigkeit (km/h)",
       y = "Dichte") +
  theme_minimal()

