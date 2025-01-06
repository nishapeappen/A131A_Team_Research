library(dplyr)
data <-read.csv("Golf.csv")
head(data)
summary(data$Current)
summary(data$New)
t_test_result <- t.test(data$Current, data$New, paired = FALSE)
print(t_test_result)

