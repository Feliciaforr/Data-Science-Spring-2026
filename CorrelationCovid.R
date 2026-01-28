#Author: Forrester, Date:1/28/2026, Test: Correlation Test with real data

#Load Library
library("ggpubr")

#Set working directory
setwd("C:\Users\Felicia Forrester\Downloads\Correlation")


# read csv file
data <- read.csv("CovidData.csv",
                 header = TRUE,
                 stringsAsFactors = FALSE)

head(data)

#Plot
ggscatter(data, x = "Deaths", y = "Confirmed", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab ="Deaths", ylab ="Confirmed" )



res <- cor.test(data$Confirmed, data$Deaths, method = "pearson") 

#Print Value
res
 

#Output
 Pearson's product-moment correlation

data:  data$Confirmed and data$Deaths
t = 119.11, df = 70, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.9960631 0.9984661
sample estimates:
      cor 
0.9975423 