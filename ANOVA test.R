#Author: Forrester, Date:2/18/2026, Purpose: Test ANOVA


#Load Library dplyr
library(dplyr)


#Read the csv file in a variable
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"


df <- read.csv(PATH) 

#Load library ggplot2
library(ggplot2)

#plot the data
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()


# Apply Anova function
anova_one_way <- aov(time~poison, data = df) 
summary(anova_one_way)


#Output
Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1