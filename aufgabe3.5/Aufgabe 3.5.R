group_data <- read.csv("C:/Users/tillt/Desktop/group_41_data (without NAs and -1).csv")




group_data$date <- as.Date(group_data$date)
group_data$month <- format(group_data$date, "%Y-%m")
monthly_counts <- aggregate(count ~ month, data = group_data, sum)
max_month <- monthly_counts[which.max(monthly_counts$count), ]
print(max_month)