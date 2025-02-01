data_frame <- read.csv("C:/Users/tillt/Desktop/group_41_data (without NAs and -1).csv")  


data_frame$windspeed <- data_frame$windspeed * 1.60934  
data_frame$temperature_celsius <- (data_frame$average_temperature - 32) * 5/9 


fig <- plot_ly(
  data = data_frame,
  x = ~temperature_celsius,  
  y = ~windspeed,            
  z = ~count,                
  color = ~count,            
  colors = c('#FF0000', '#0000FF'),    
  type = 'scatter3d',        
  mode = 'markers'           
)


fig <- layout(
  fig,
  title = "3D Scatterplot: Temperatur vs. Windgeschwindigkeit (km/h) vs. Anzahl ausgeliehener Fahrräder",
  scene = list(
    xaxis = list(title = 'Temperatur (°C)'),
    yaxis = list(title = 'Windgeschwindigkeit (km/h)'),
    zaxis = list(title = 'Anzahl ausgeliehener Fahrräder')
  )
)


fig
