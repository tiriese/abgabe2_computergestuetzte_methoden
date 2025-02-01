ggplot(data_frame, aes(x = count)) +  
  geom_density(fill = "blue", alpha = 0.7) +     
  labs(title = "Dichte der Anzahl ausgeliehener Fahrräder", 
       x = "Anzahl ausgeliehener Fahrräder", 
       y = "Dichte") + 
  theme_minimal()