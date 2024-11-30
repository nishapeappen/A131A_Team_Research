library(dplyr)
library(ggplot2)

data <-read.csv("Golf.csv")
head(data)
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

t_test_result <- t.test(data$Current, data$New, paired = FALSE)
print(t_test_result)

boxplot(data$Current, data$New,names = c ("without coating","with coating"),
        main ="Driving distance of golf ball",
        ylab ="DISTANCE (yards)")

