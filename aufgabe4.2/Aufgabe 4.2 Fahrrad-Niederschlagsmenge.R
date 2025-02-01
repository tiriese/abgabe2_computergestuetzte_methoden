install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)


library(ggplot2)
ggplot(data_frame, aes(x = precipitation, y = count)) +
  geom_point(color = "blue") +  
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(title = "Zusammenhang zwischen Anzahl ausgeliehener Fahrräder und Niederschlagsmenge",
       x = "Niederschlagsmenge (mm)",
       y = "Anzahl ausgeliehener Fahrräder") +
  theme_minimal()




