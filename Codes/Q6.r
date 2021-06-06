# 19BDS0042 SAMARTH GUPTA

# Association rule for Market Basket Model
# We use Transactional Data
# Product Recommendation in Online Store
# Suggest Items to customer,Music Recommendation system,Identifies items which are close
# Market Basket Analysis in a Groceries store
# We use Sparce MAtrix ()
install.packages("arules")
# load up the packages
require(arules)
data(package="arules")
Groceries
Groc<-read.transactions("Groceries.csv", sep=",")
Groc
summary(Groc)
head(Groc)
# Transactions in sparse matrix format
1582*119
1582*119*0.02609146
# Inspecting the Transactions
# inspect first 3
inspect(Groc [100:500])
inspect(Groc [1000:1005])
# in the Transaction the item is half it is 50% Support
# we use frequencies for support
itemFrequency(Groc [,1])
itemFrequency(Groc [,2])
itemFrequency(Groc [,3])
itemFrequency(Groc [,4])
# Frequency * total no of Transactions
0.0006321113*188258
itemFrequency(Groc[,1:6])
# Graph Representation
itemFrequencyPlot(Groc, support=0.20)
# minimum of 10% support
itemFrequencyPlot(Groc, support=0.10)
itemFrequencyPlot(Groc,topN=5)
itemFrequencyPlot(Groc,topN=10)
itemFrequencyPlot(Groc,topN=20)