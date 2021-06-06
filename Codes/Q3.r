#19BDS0042 SAMARTH GUPTA

# Stastical Analysis
# Simple Calculations
2+2
4/2
3*2^(-0.8)
sqrt(2)
pi
log(2)
log(9, base = 3)
exp(1.1)
cos(sqrt(0.9))
# Conversions
a <- pi
b <- 0.5
sin(a*b)
# MEAN syntax mean(x, trim = 0, na.rm = FALSE, ...)
# x is the input vector.
# trim is used to drop some observations from both end
# of the sorted vector.
# na.rm is used to remove the missing values from the input vector.
# Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find Mean.
result.mean <- mean(x)
print(result.mean)
# MEDIAN median(x, na.rm = FALSE)
# Create the vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find the median.
median.result <- median(x)
print(median.result)
19BDS0042 SAMARTH GUPTA
# MODE
# Create the function.
getmode <- function(v){
uniqv <- unique(v)
uniqv[which.max(tabulate(match(v, uniqv)))]
}
# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
# Calculate the mode using the user function.
result <- getmode(v)
print(result)
library(dplyr)
library(ggplot2)
library(openintro)
data(mtcars)
mtcars
mtcars $mpg
qplot(x=mpg,y=gear,data=mtcars,geom = "line")