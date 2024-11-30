library(ggplot2)
data <-read.csv("C:/Users/DELL/Documents/A131A_Team_Research/Golf.csv")
head(data)
head(data,2)
summary(data$Current)
summary(data$New)

hist(data$Current, 
     probability = TRUE, 
     main = "Histogram with Bell Curve Overlay (Without Coating)",
     xlab = "Distance (yards)",
     col = "light blue",
     xlim = c(min(data$Current, data$New), max(data$Current, data$New)),
     border = "black")

lines(density(data$Current), col = "red", lwd = 2)

hist(data$New, 
     probability = TRUE,
     main = "Histogram with Bell Curve Overlay (With Coating)", 
     xlab = "Distance (yards)", 
     col = "light green",
     xlim = c(min(data$Current, data$New), max(data$Current, data$New)),
     border = "black")


lines(density(data$New), col = "blue", lwd = 2)
