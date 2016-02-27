library(randomForest);library(e1071);library(caret)
data(iris);training=iris
modFit <- train(Species~ .,data=training,method="rf",prox=TRUE)
irisPredict <- function(inData){
  iris = predict(modFit,inData)
iris[1]
}
createDataFrame <- function(sl,sw,pl,pw){
  Sepal.Length = c(sl)
  Sepal.Width = c(sw)
  Petal.Length = c(pl)
  Petal.Width = c(pw)
  df = data.frame(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width)
  df
}

shinyServer(
    function(input, output) {
      output$inputValue <- renderPrint(createDataFrame(input$sepal.l,input$sepal.w,input$petal.l,input$petal.w))
      output$prediction <- renderPrint(irisPredict(createDataFrame(input$sepal.l,input$sepal.w,input$petal.l,input$petal.w)))
  }
)