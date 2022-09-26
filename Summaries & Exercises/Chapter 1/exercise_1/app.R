
rm(list = ls())
library(shiny)
library(tidyverse)
ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)
server <- function(input, output, session){
  output$greeting <- renderText({
    str_c("Hello ", input$name)
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
