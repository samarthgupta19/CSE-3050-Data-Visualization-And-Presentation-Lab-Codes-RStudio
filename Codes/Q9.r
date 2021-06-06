# 19BDS0042 SAMARTH GUPTA

library(ggplot2)
head(iris)
stripchart(iris$Sepal.Length,
main = 'STRIP CHART 19BDS0042',
xlab = 'Sepal Length',col = 'black',pch = 1,
method = 'jitter')
#HISTOGRAM:
hist(iris$Sepal.Width, freq=NULL, density=NULL, breaks=12,
xlab="Sepal Width", ylab="Frequency", main="Histogram 19BDS0042")
#BOXPLOT:
boxplot(Sepal.Length~Species,data=iris,
xlab="Species", ylab="Sepal Length", main="Boxplot 19BDS0042")
#SCATTERPLOT:
plot(x=iris$Sepal.Length, y=iris$Sepal.Width,
xlab="Sepal Length", ylab="Sepal Width", main="SCATTER PLOT 19BDS0042")
#NORMAL QQ PLOTS:
qqnorm(iris$Petal.Length)
qqline(iris$Petal.Length)
#HEATMAP:
irisMatix <- as.matrix(iris[1:110, 1:4])
irisTransposedMatrix <- t(irisMatix)[,nrow(irisMatix):1]
image(1:4, 1:110, irisTransposedMatrix)
#DENDOGRAMS:
y <- as.matrix(iris[,-5])[6*(1:25),]
rownames(y) <- iris$Species[6*(1:25)]
par(mfrow=c(2,3))
plot(hclust(dist(y),method="single"))
plot(hclust(dist(y),method="complete"))
plot(hclust(dist(y),method="average"))
plot(hclust(dist(y)^2,method="single"))
plot(hclust(dist(y)^2,method="complete"))
plot(hclust(dist(y)^2,method="average"))