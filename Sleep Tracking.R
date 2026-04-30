# Install and download Excel file
install.packages("readxl")
library(readxl)
Sleep_Tracking <- read_excel("Sleep Tracking.xlsx")

# Check data
sleep <- Sleep_Tracking
head(sleep)
getwd()

# Make sure ID is a factor
sleep$user_id <- as.factor(sleep$user_id)

# Determine type of data
str(sleep$steps)
str(sleep$sleep_duration_hours)
str(sleep$avg_hr_day_bpm)
str(sleep$stress_score)

# Descriptive Stats
mean(sleep$stress_score)
sd(sleep$stress_score)
min(sleep$stress_score)
max(sleep$stress_score)

mean(sleep$steps, na.rm=TRUE)
sd(sleep$steps, na.rm=TRUE)
min(sleep$steps, na.rm=TRUE)
max(sleep$steps, na.rm=TRUE)

mean(sleep$avg_hr_day_bpm)
sd(sleep$avg_hr_day_bpm)
min(sleep$avg_hr_day_bpm)
max(sleep$avg_hr_day_bpm)

mean(sleep$sleep_duration_hours)
sd(sleep$sleep_duration_hours)
min(sleep$sleep_duration_hours)
max(sleep$sleep_duration_hours)


# Mixed Effects
install.packages("lme4")
library(lme4)

# Account for scales
sstress <- scale(sleep$stress_score)
ssteps  <- scale(sleep$steps)
shr     <- scale(sleep$avg_hr_day_bpm)

# Predicting sleep
install.packages("lmerTest")
library(lmerTest)
sleep_mod <- lmer(
  sleep_duration_hours ~ sstress + ssteps + shr + (1 | user_id),
  data = sleep,
  REML = TRUE
)
summary(sleep_mod)

# graphs and charts
boxplot(`sleep_duration_hours` ~ `stress_score`, data=sleep, xlab="Stress Score", ylab="Sleep Duration")
hist(sleep$stress_score, xlab="Stress Score", main="Histogram of Stress Score", col="light pink")
hist(sleep$steps, xlab="Steps", main="Histogram of Steps", col="light blue")
hist(sleep$avg_hr_day_bpm, xlab="Heart Rate", main="Histogram of Heart Rate", col="light green")
