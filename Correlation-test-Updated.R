#Author: Nyasia Argrow, Date: 02/20/2025, Purpose: Test the correlation analysis

library("ggpubr")

#Loading a dummy dataset
my_data <- mtcars

#Create a correlation hypothesis
#Weight of the car is inversely proportional to the miles per gallon travelled by the car

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

#Plotting the dataset (with title and increased font sizes)
ggscatter(my_data, main = "Comparison of Cars Weight and MPG", x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

plot <- ggscatter(my_data, main = "Comparison of Cars Weight and MPG", x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

plot + theme(axis.text.x = element_text(size = 50),axis.text.y = element_text(size = 50))



res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res

Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 
