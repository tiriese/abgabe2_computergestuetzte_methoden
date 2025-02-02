data_frame$date <- as.Date(data_frame$date, format = "%Y-%m-%d")


ggplot(data_frame, aes(x = date, y = count)) +
  geom_line(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") + 
  labs(title = "Anzahl ausgeliehener Fahrräder im Zeitverlauf mit Trendlinie",
       x = "Datum",
       y = "Anzahl ausgeliehener Fahrräder") +
  theme_minimal()

