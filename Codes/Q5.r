# 19BDS0042 SAMARTH GUPTA

# Time series Data Visualization
#Getting stock dataset
#Load the needed packages
#quantitative trader in the development, testing, and deployment of statistically based trading models
install.packages("quantmod")
# provides methods and tools for displaying and analysing univariate time series forecasts
install.packages("forecast")
#gives programatic control of Excel files using R
install.packages("xlsx")
#for time series analysis and computational finance
install.packages("tseries")
# It contains functions for performing decomposition and forecasting with exponential smoothing, arima, moving average models
install.packages("timeSeries")
# structure of data manipulation that provides a uniform set of verbs, helping to resolve the most frequent data manipulation hurdles
install.packages("dplyr")
#Objects can be created by calls of the function garchFit
#timeDate, timeSeries, fBasics. Imports: fastICA, Matrix, graphics, methods, stats, utils
install.packages("fGarch")
#Prophet is robust to missing data and shifts in the trend, and typically handles outliers well
install.packages("prophet")
library(prophet)
library(quantmod)
library(forecast)
library("xlsx")
library(tseries)
library(timeSeries)
library(dplyr)
library(fGarch)
getSymbols("AMZN", src="yahoo", from="2015-01-01")
AMZN
# Arima: Autoregresive Integrating Moving Average
# Identification: With the time dataset we try to incorporate a relevant research model.
# The objective is to find the best values reproducting the time set variable to forecast.
# Analysis and Differentiation
# Adjusting ARIMA model:
# Prediction
# ADF Augmented Dickey-Fuller Test
# Conduct ADF test for dataset
print(adf.test(AMZN$AMZN.Close))
# auto Arima
auto.arima(AMZN$AMZN.Close, lambda = "auto")
#We apply auto arima to the dataset
modelfit <- auto.arima(AMZN$AMZN.Close, lambda = "auto")
#Dataset forecasting for the next 30 days
price_forecast <- forecast(modelfit, h=30)
#Dataset forecasting plot for the next 30 days
plot(price_forecast)
#Dataset forecast mean first 5 values
head(price_forecast$mean)
#Dataset forecast lower first 5 values
head(price_forecast$lower)
#Dataset forecast upper first 5 values
tail(price_forecast$upper)
#Dividing the data into train and test, applying the model
N = length(AMZN$AMZN.Close)
n = 0.7*N
train = AMZN$AMZN.Close[1:n, ]
test = AMZN$AMZN.Close[(n+1):N, ]
trainarimafit <- auto.arima(train, lambda = "auto")
predlen=length(test)
trainarimafit <- forecast(trainarimafit, h=predlen)
#Plotting mean predicted values vs real data
meanvalues <- as.vector(trainarimafit$mean)
precios <- as.vector(test$AMZN.Close)
plot(meanvalues, type= "l", col= "red")
lines(precios, type = "l")