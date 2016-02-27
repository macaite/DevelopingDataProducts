shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Iris Predictor"),
    
    sidebarPanel(
      numericInput('sepal.l', 'Sepal Length',value = 5, min = 4.3, max = 7.9, step = 0.1),
      numericInput('sepal.w', 'Sepal Width', value = 3,min = 2, max = 4.4, step = 0.1),
      numericInput('petal.l', 'Petal Length', value = 4.3,min = 1, max = 6.9, step = 0.1),
      numericInput('petal.w', 'Petal Width', value = 1.3, min = 0.1, max = 2.5, step = 0.1),
      submitButton("Submit")
      ),
    mainPanel(
      h3('Predicted result'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction"),
      h4('How to use the Predictor'),
      h5('Simply adust the inputs of your iris on the left and press the Submit Button'),
      h5('Now view your input details and iris type prediction above')
    )
  )
)