#Author: Nyasia Argrow, Date: 3/27/2025, Purpose: Perform ANOVA Test.

#Load a library dplyr
library(dplyr)

#Store the HTTP link in a variable called PATH
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Read the CSV file from above link
df <- read.csv(PATH,row.names=NULL)

df[,c(2:4)]