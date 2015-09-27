library(shiny)
library(caret)
library(randomForest)
load('fit.rData')
data1<-data.frame(matrix(ncol=61,nrow=0))
data(GermanCredit)
colnames(data1)<-names(GermanCredit)[-10]
# fit<-load('fit.rda')
data1[1,]<-as.numeric(0)
rownames(data1)<-NULL
shinyServer(
        function(input, output,session) {

              k<-eventReactive(input$do,{                      
                      data1[1,1]<-as.integer(input$Duration)
                      data1[1,2]<-as.integer(input$Amount)
                      data1[1,3]<-as.integer(input$InstallmentRatePercentage)
                      data1[1,4]<-as.integer(input$ResidenceDuration)
                      data1[1,5]<-as.integer(input$Age)
                      data1[1,6]<-as.integer(input$NumberExistingCredits)
                      data1[1,7]<-as.integer(input$NumberPeopleMaintenance)
                      data1[1,8]<-as.numeric(input$Telephone)
                      data1[1,9]<-as.numeric(input$ForeignWorker)
                      data1[1,which(names(data1)==input$id11)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id12)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id13)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id14)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id15)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id16)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id17)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id18)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id19)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id20)]<-as.numeric(1)
                      data1[1,which(names(data1)==input$id21)]<-as.numeric(1)
                     pred<-as.numeric(predict(fit,data1))
                     if(pred==1){return('good payer')}
                     if(pred==2){return('bad payer')}
                     
                        
              })

                
output$text33<-renderText(k())
              
              
        }
)