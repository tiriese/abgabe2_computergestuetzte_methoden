
library(ggplot2)

ggplot(data_frame, aes(x = windspeed, y = count)) +
  geom_point(color = "blue") +  
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(title = "Zusammenhang zwischen der Anzahl ausgeliehener Fahrräder und Windgeschwindigkeit",
       x = "Windgeschwindigkeit (km/h)",
       y = "Anzahl ausgeliehener Fahrräder") +
  theme_minimal()



