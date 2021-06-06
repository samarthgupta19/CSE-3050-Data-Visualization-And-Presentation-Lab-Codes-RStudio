# 19BDS0042 SAMARTH GUPTA

# DECISION TREE FOR IRIS DATASET
str(iris)
summary(iris)
library(rpart)
library(rpart.plot)
v <- iris$Species
table(v)
set.seed(522)
iris[, 'train'] <- ifelse(runif(nrow(iris)) < 0.75, 1, 0)
trainSet <- iris[iris$train == 1,]
testSet <- iris[iris$train == 0, ]
trainColNum <- grep('train', names(trainSet))
trainSet <- trainSet[, -trainColNum]
testSet <- testSet[, -trainColNum]
treeFit <- rpart(Species~.,data=trainSet,method = 'class')
print(treeFit)
#DECISION TREE BEFORE PRUNING
rpart.plot(treeFit, box.col=c("yellow", "red"))
Prediction1 <- predict(treeFit,newdata=testSet[-5],type = 'class')
library(caret)
# FINDING CONFUSION MATRIX
confusionMatrix(Prediction1,testSet$Species)
printcp(treeFit)
#PRUNING
opt <- which.min(treeFit$cptable[,'xerror'])
cp <- treeFit$cptable[opt, 'CP']
pruned_model <- prune(treeFit,cp)
#DECISION TREE AFTER PRUNING
rpart.plot(pruned_model, box.col=c("yellow", "red"))
rpart_pruned_predict <- predict(pruned_model, newdata=testSet[-5],type = 'class')
mn2 <- mean(rpart_pruned_predict==testSet$Species)
mn2
confusionMatrix(rpart_pruned_predict,testSet$Species)