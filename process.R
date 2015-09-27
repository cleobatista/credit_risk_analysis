library(randomForest)
library(caret)
data(GermanCredit)

#check missing values
GermanCredit[rowSums(is.na(GermanCredit)) > 0,]

inTrain<-createDataPartition(GermanCredit[,10],p=0.8,list=FALSE)
train<-GermanCredit[inTrain,]
test<-GermanCredit[-inTrain,]

train_control<-trainControl(method='cv',number=10)
fit<-randomForest(Class~.,data=train,ntree=10)
pred<-predict(fit,test)
confusionMatrix(pred,test[,10])

save(fit,file='fit.rData')
