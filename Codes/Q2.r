# 19BDS0042 SAMARTH GUPTA

#Load ggplot2
library(ggplot2)
# Create data
data <- data.frame(
name=c("A","B","C","D","E") ,
value=c(3,12,5,18,45) )
# Barplot
ggplot(data, aes(x=name, y=value)) +
geom_bar(stat = "identity")
#Histograms can be built with ggplot2 with geom_histogram() function
#It requires only 1 numeric variable as input.
#This function auto cuts the variable in bins and count the number of data point per bin
# library
library(ggplot2)
# dataset:
data=data.frame(value=rnorm(100))
# basic histogram
p <- ggplot(data, aes(x=value)) +
geom_histogram()
p
# Boxplot
#The ggplot2 library allows to make a boxplot using geom_boxplot().
#specify a quantitative variable for the Y axis, and a qualitative variable for the X axis .
# Load ggplot2
library(ggplot2)
# The mtcars dataset is natively available
# head(mtcars)
# A really basic boxplot.
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) +
geom_boxplot(fill="slateblue", alpha=0.2) +
xlab("cyl")
# heatmaps with ggplot2
# using the geom_tile() function.
# Input data must be a long format where each row provides an observation.
# At least 3 variables are needed per observation:
# x: position on the X axis ,y: position on the Y axis
# fill: the numeric value that will be translated in a color
library(ggplot2)
# Dummy data
x <- LETTERS[1:20]
y <- paste0("var", seq(1,20))
data <- expand.grid(X=x, Y=y)
data$Z <- runif(400, 0, 5)
# Heatmap
ggplot(data, aes(X, Y, fill= Z)) +
geom_tile()
# Basic line plot
library(plotly)
x <- c(1:100)
random_y <- rnorm(100, mean = 0)
data <- data.frame(x, random_y)
fig <- plot_ly(data, x = ~x, y = ~random_y, type = 'scatter', mode = 'lines')
fig
