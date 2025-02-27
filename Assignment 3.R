#Author: Nyasia Argrow, Date: 02/27/2025, Purpose: Plot Manipulation

library("ggpubr")
 
#Loading a dummy dataset
my_data <- mtcars

#Create a correlation hypothesis
#Weight of the car is inversely proportional to the miles per gallon travelled by the car
 
 
 #Plotting the dataset (with title and increased font sizes)
ggscatter(my_data, main = "Comparison of Cars Weight and MPG", x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
 
 plot <- ggscatter(my_data, main = "Comparison of Cars Weight and MPG", x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)") + geom_point() + ggtitle("Comparison of Cars Weight and MPG") +theme(plot.title = element_text(hjust = 0.5))
 
plot + theme(axis.text.x = element_text(size = 50),axis.text.y = element_text(size = 50), plot.title = element_text(size = 35), axis.title = element_text(size = 35))

