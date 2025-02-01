install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)


data_frame <- read.csv("C:\\Users\\tillt\\Desktop\\group_41_data (without NAs and -1).csv")

dim(data_frame)


data_frame$temperature_celsius <- (data_frame$average_temperature - 32) * 5/9


ggplot(data_frame, aes(x = average_temperature, y = count)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Zusammenhang zwischen Anzahl ausgeliehener Fahrräder und Temperatur (°C)",
       x = "Temperatur (°C)",
       y = "Anzahl ausgeliehener Fahrräder") +
  theme_minimal()





