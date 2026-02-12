

**Predicting Resting Heart Rate**  
Using R Software

Amber Grace Hulsey  
February 20, 2026

1. **Introduction**  
   Heart rate is crucial to human survival and is studied extensively by doctors, scientists, and health analysts. Resting heart rate is of particular interest to me because I am a few years post-athlete and aim to keep a healthy heart by regular exercise and mindful eating habits. In today’s society, caffeine has become a common part of daily life and its effects on heart health are worth examining. This report explores the relationship between resting heart rate and several independent variables: energy drink consumption, age, sex, height, weight, and sleep duration. I selected these variables because they directly influence heart rate and overall cardiovascular health. This research project aims to determine whether all, some, or none of these factors help predict resting heart rate, providing insight into which areas may be most important to focus on when striving to improve heart health.  
2. **Dependent Variable and Independent Variables**  
   The resting heart rate was measured using an Apple Watch or another fitness band. For participants who did not have access to such devices, they performed a self-test to calculate their resting heart rate. To do this, they measured their heart rate in the morning immediately after waking up, before consuming caffeine or engaging in any exercise. Resting heart rate is preferred over general heart rate because it provides a stable and standardized baseline for health. In contrast, general heart rate can vary throughout the day due to physical activity, emotions, and other stressors, making it less reliable for consistent measurements.  
   Energy drink consumption is my independent variable of interest because I wanted to examine whether there is a direct relationship between caffeine intake and resting heart rate. We would predict that individuals with a higher average caffeine intake per day would have a higher resting heart rate than those who do not consume caffeine regularly, assuming all other factors are held constant. Caffeine intake is measured in average milligrams per day. Age is measured in years, and sex is coded as Female \= 1 and Male \= 0\. According to the National Institute on Aging, “a person’s resting heart rate — the number of heartbeats per minute at rest — does not change significantly with normal aging” (NIH, 2024). Sex also plays a role; Welltory notes that “on average, females tend to have slightly higher resting heart rates than males,” influenced by factors such as “hormonal differences” and “body composition”(2023). This project will explore these theories further.   
   Height is in inches and weight in pounds. Physical composition directly impacts heart rate because a healthier and more active individual typically has better cardiovascular health, which is why these two factors are included. Sleep is measured as average hours per night. The amount of sleep someone receives affects heart rate due to the body’s "fight-or-flight" response, which elevates stress hormones like cortisol. This physiological response has been scientifically shown to increase blood pressure and heart rate (Dhivya Sree, 2025).  
3. **Collecting Data**  
   The data for this study was collected through a survey distributed to my peers via social media, resulting in 83 observations. I initially recorded the survey responses in Excel and then uploaded the dataset into R for its efficiency and analytical capabilities. The participants’ ages ranged from 5 to 76, with a roughly equal male-to-female ratio, ensuring the data represents a diverse group of individuals. After importing the dataset into R, I ran a summary to examine the basic statistics, such as means and medians, to gain an initial understanding of the data. The results are presented below:

   Height in Inches:  
   - Median: 66.0  
- Mean: 67.11  
  Weight in Pounds:  
- Median: 150.0  
- Mean: 159.3  
  Hours of Sleep:  
- Median: 7.0  
- Mean: 7.169  
  Gender (M: 0, F: 1):  
- Median: 1.0  
- Mean: 0.6867  
  Milligrams of Caffeine per Day:  
- Median: 200.0  
- Mean: 169.2  
  Age:  
- Median: 21.0  
- Mean: 28.66  
  Resting Heart Rate:  
- Median: 70.0  
- Mean: 69.08  
  	This summary is important for identifying potential outliers; in this dataset, no significant outliers were found. Next, I ran a linear model to analyze the relationships between the independent variables and resting heart rate and to interpret the results.   
4. **Analyzing Data**  
   	A multiple linear regression was conducted to predict resting heart rate from height, sleep, weight, gender, caffeine intake, and age. The overall model was not statistically significant, F(6, 76\) \= 1.31, p \= .264, R² \= .094. Among the predictors, only weight was a significant predictor (β \= 0.083, p \= .022), indicating that higher weight was associated with higher resting heart rate. One possible reason why only weight was statistically significant is that the other variables may only meaningfully impact resting heart rate at extreme levels. Small variations in factors such as sleep, caffeine intake, or height are unlikely to produce substantial changes in resting heart rate.   
   Since weight was the only statistically significant predictor in the full model, I next ran a regression using only weight to examine the  direct relationship between weight and resting heart rate. In the original model, the correlation coefficient between resting heart rate and weight was 0.232, indicating a positive relationship – as weight increases, resting heart rate tends to increase. A simple linear regression showed that weight significantly predicted resting heart rate, F(1, 81\) \= 4.61, p \= .035, R² \= .054. Weight accounted for approximately 5.4% of the variance in resting heart rate. This model is statistically significant and shows that, on average, weight directly influences one’s resting heart rate. Specifically, for every 1-pound increase in weight, resting heart rate increased by 0.061 bpm on average, indicating a small but meaningful positive relationship. This result aligns with common understanding of cardiovascular health: the heart must work harder to circulate blood throughout a larger body mass, which explains the observed correlation between weight and resting heart rate.   
   I also ran several additional models focusing on specific age ranges and caffeine intake levels, but none of the models were statistically significant, except for the model including weight alone. To investigate whether multicollinearity might be affecting the results of the full model, I calculated the Variance Inflation Factors (VIFs) for all predictors. The VIFs ranged from 1.01 to 2.57, indicating no evidence of problematic multicollinearity in the model. The specific VIFs are recorded below:   
- Height in Inches: 2.477  
- Weight in Pounds: 1.537  
- Hours of Sleep: 1.010  
- Gender (M: 0, F: 1): 2.568  
- Milligrams of Caffeine per Day: 1.146  
- Age: 1.145  
5. **Conclusion**  
   After running these models, I was surprised by the results. It was particularly interesting that caffeine intake was not a significant predictor of resting heart rate. Research suggests that caffeine affects heart rate temporarily, immediately after consumption, but unless intake is at extreme levels, it does not have a substantial impact on resting heart rate. Looking forward, this model could be improved by including additional variables that may better explain variations in resting heart rate, beyond those considered in this report.  
   This report is important because many people assume that factors such as age, sleep, caffeine intake, or height have a direct impact on resting heart rate. However, this project shows that these factors generally do not significantly influence resting heart rate unless extreme situations occur. Weight, on the other hand, was found to be a statistically significant predictor. This finding highlights that individuals should pay particular attention to weight when analyzing and managing their resting heart rate.

References  
https://www.facebook.com/NIHAging. (2024, July 22). Heart Health and Aging. National Institute on Aging. https://www.nia.nih.gov/health/heart-health/heart-health-and-aging  
‌Welltory. (2023, April 12). Heart Rate by Age and Gender | What’s the Norm. Welltory. https://welltory.com/heart-rate-by-age-and-gender/  
‌Dhivya Sree. (2025, March 22). How Sleep Deprivation Affects Your Heart ? Sri Ramakrishna Hospital. https://www.sriramakrishnahospital.com/blog/psychiatry/how-sleep-deprivation-affects-your-heart/\#:\~:text=Does%20lack%20of%20sleep%20affect,obesity%2C%20diabetes%2C%20and%20stroke.

‌