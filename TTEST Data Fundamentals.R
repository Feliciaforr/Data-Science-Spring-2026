#Author: Forrester, Date: 4/1/2026, Purpose: Test T-Test

#Create 2 groups x and y
x = rnorm(10)
y = rnorm(10)

#Plot variables x and y
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Apply ttest function on x & y
ttest = t.test(x,y) 

#Output
 Welch Two Sample t-test

data:  x and y
t = 1.3318, df = 17.032, p-value = 0.2005
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.3673815  1.6256797
sample estimates:
 mean of x  mean of y 
0.66426867 0.03511955 