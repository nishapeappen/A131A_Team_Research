library(dplyr)
data <-read.csv("C:/Users/DELL/Documents/A131A_Team_Research/Golf.csv")
head(data)
summary(data$Current)
summary(data$New)

par(mfrow = c(1,2))
hist(data$Current, main = "without coating", xlab = "Distance(yards)", col = "light blue")
hist(data$New, main = "with coating", xlab = "Distance(yards)", col = "light green")
