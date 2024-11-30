library(dplyr)
data <- read.csv("C:/Users/DELL/Documents/A131A_Team_Research/Golf.csv")
head(data)
summary(data$Current)
summary(data$New)
wilcox_result <- wilcox.test(data$Current, data$New, paired = FALSE, alternative = "two.sided")
print(wilcox_result)
if (wilcox_result$p.value < 0.05) {
  print("Reject the null hypothesis: Significant difference between the groups.")
} else {
  print("Fail to reject the null hypothesis: No significant difference between the groups.")
}
