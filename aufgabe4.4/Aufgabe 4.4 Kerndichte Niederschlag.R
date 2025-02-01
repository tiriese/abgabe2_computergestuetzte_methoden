rainy_days_filtered <- data_frame[data_frame$precipitation > 0 & 
                                    data_frame$precipitation < 8, ] 
ggplot(rainy_days_filtered, aes(x = precipitation)) + geom_density(fill 
                                                                   = "blue", alpha = 0.7) +  
  labs(title = "Kern-Dichteschätzer der Niederschlagsmenge (in mm)", 
       x = "Niederschlagsmenge (mm)",  
       y = "Dichte") +  
  theme_minimal() 
