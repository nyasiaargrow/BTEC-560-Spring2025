#Author: Nyasia Argrow, Date: 4/8/2025, Purpose: Calculate T-test.

#Generate some dummy datasets for comparisons

x = rnorm(10)
y = rnorm(10)

#Plotting x and y to check for normal distribution
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Apply the T-test function
ttest = t.test(x,y)
ttest

Welch Two Sample t-test

data:  x and y
t = 0.48822, df = 17.823, p-value = 0.6313
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.6467272  1.0379350
sample estimates:
  mean of x   mean of y 
 0.03918023 -0.15642366 
 
#Groups x and y are not significantly different because the P value is more than 0.05.