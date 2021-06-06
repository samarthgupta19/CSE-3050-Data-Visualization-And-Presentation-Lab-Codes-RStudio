# 19BDS0042 SAMARTH GUPTA

# Basics R Codes
# Sum
300.1 + 200.3+300.34
# Squareroot
sqrt(256)
# Calculate the 10 base logratimic of 100 multiply the result with cos(pi)
log10(100) * cos(pi)
#calculating the cummulative sum
cumsum(c(2,3,4,5,6))
#calculating the cummulative sum in reverse order
cumsum(rev(c(2,3,4,5,6)))
# Alphabets with R
LETTERS[19]
letters[19]
# Last letters of the alphabet
letters[length(letters)]
# Read a dataset
Titanic
head(Titanic)
# Managing your workspace
ls()
# Simple objects
x <- 10
y <- 20
z <- x+y
z
# Inspecting the workspace in your laptop
ls()
# Vector of objects x,y and z
myvec <- c(x,y,z)
# MAx,Min,Len,Var
max(myvec)
min(myvec)
length(myvec)
var(myvec)
# work with single vector
rainfall_of_2020 <-c(0.1,0.6,0.8,0.9,0.1,0.4,0.5,0.6,0.9,0.4,0.4,0.2)
mean(rainfall_of_2020)
sd(rainfall_of_2020)
cumsum(rainfall_of_2020)
which.max(rainfall_of_2020)
which.min(rainfall_of_2020)
# Compare and combine the vectors
x <-c(1,2,5,9,11)
y <-c(2,5,1,0,23)
intersect(x,y)
# find the values that are in x but not in y
setdiff(x,y)
setdiff(y,x)
# Contains all values union
union(x,y)
# Concatination
c(x,y)
# Matrix Examples
# Construt a matrix with 10 columns and 10 rows all filled with randon numbers between 0 and 1
m <- matrix (runif(100),ncol=10)
rowMeans(m)
sd(rowMeans(m))
# Normal Distribution
m <-matrix(runif(100),ncol=10)
cm <-colMeans(m)
cm
hist(cm)
# Packages
install.packages("car")
library(car)
# help densityplot
?denstityplot
example(densityPlot)
#String
myString <- "Hello, Data Visualization!"
print ( myString)
#Comments
# My first R Programming
help() #give help regarding a command, e.g. help(hist)
dim() #gives the number of rows and the number of columns of a matrix, or a data frame
head() #gives the first 6 rows of a large matrix, or data frame
tail() #gives the last 6 rows of a large matrix, or data frame
m[ ,3] #gives the 3rd column of the matrix m
m[2, ] #gives the 2nd row of the matrix m
sum() #get the sum of the values in x by sum(x)
mean() #get the mean of the values in x by mean(x)
median() #get the median of the values in x by median(x)
sd() #get the standard deviation of the values in x
var() #get the variance of the values in x
IQR() #get the IQR of the values in x
summary() #get the summary statistics of a single variable, or of all variables in a data frame
round() #round values in x to 3 decimal places by round(x,3)
sort() #sort the values in x by giving sort(x)
unique() #get the non-duplicate values from a list, e.g. x = c(3,5,7,2,3,5,9,3) and then
unique(x) #gives 3 5 7 2 9
length(x) #gives the length of the vector x, which is 8
hist() #create a histogram of the values in x by hist(x)
stem() #create a stem and leaf plot of the values in x by stem(x)
boxplot() #create a boxplot of the values in x by boxplot(x)
plot() #scatterplot of x vs. y by plot(x,y); for more parameters see help(plot.default)
cor() #gives the linear correlation coefficient
lm() #fit a least squares regression of y (response) on x (predictor) by fit = lm(y~x)
names() #get or set the names of elements in a R object. E.g. names(fit) will give the names of the R
#object named “fit”, or
#get or set the names of variables in a data frame.
fit$coef #gives the least squares coefficients from the fit above, i.e. intercept and slope
fit$fitted #gives the fitted values for the regression fitted above
fit$residuals #gives the residuals for the regression fitted above
lines() #add a (regression) line to a plot by lines(x,fit$fitted)
abline() #add a straight line to a scatterplot
points() #add additional points (different plotting character) to a plot by points(x,y2,pch=5)
scan() #read data for one variable from a text file, e.g. y = scan(”ping.dat”)
#Don‟t forget to change to the appropriate directory first
read.table() #read spreadsheet data (i.e. more than one variable) from a text file
table() #frequency counts of entries, ideally the entries are factors(although
#it works with integers or even reals)
write() #write the values of a variable y in a file data.txt by write(y,file=”data.txt”)
log() #natural logarithm (i.e. base e)
log10() #logarithm to base 10
seq() #create a sequence of integers from 2 to 11 by increment 3 with seq(2,11,by=3)
rep() #repeat n times the value x, e.g. rep(2,5) gives 2 2 2 2 2
getwd() #get the current working directory.
setwd() #change the directory to. E.g. setwd("c:/RESEARCH/GENE.project/Chunks/")
dir() #list files in the current working directory
search() #searching through reachable datasets and packages
library() #link to a downloaded R package to the current R session. E.g. library(Biostrings) link to the
