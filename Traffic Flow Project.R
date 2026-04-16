# Install and Read File
install.packages("tidyverse")
install.packages("readxl")
library(readxl)
Traffic_Data <- read_excel("Traffic Flow Data.xlsx")

# Check Data
traffic <- Traffic_Data
head(traffic)
getwd()


# MLR for volume, time, and site predicting mph
model <- lm(`Avg mph` ~ `Total Volume` + `Time Interval` + as.factor(`SiteId`), data = traffic)
summary(model)


# Descriptive and ANOVA
mean(traffic$`Total Volume`)
mean(traffic$`Avg mph`)
aov_mod <- aov(`Avg mph` ~ `Total Volume` + `Time Interval` + `SiteId`, data = traffic)
summary(aov_mod)


# Graphs
plot(`Avg mph` ~ `Total Volume`, data = traffic, col = `SiteId`)
boxplot(`Avg mph` ~ `Time Interval`, data = traffic)


# Site ID
table(traffic$SiteId)
aggregate(`Avg mph` ~ `SiteId`, data = traffic, mean)









