library(shiny)
library(ggplot2)

#diabetesRisk <- function(glucose) glucose / 200

plotFeature <- function(feature) 
        ggplot(mtcars, aes(mtcars[[feature]], mpg)) +geom_point()

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$feature})
    output$myPlot <- renderPlot({plotFeature(input$feature)})
}
)
