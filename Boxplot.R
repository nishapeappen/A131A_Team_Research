library(dplyr)
data <-read.csv("Golf.csv")
head(data)
summary(data$Current)
summary(data$New)

boxplot(data$Current, data$New,names = c ("without coating","with coating"),
        main ="Driving distance of golf ball",
        ylab ="DISTANCE (yards)")
