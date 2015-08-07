library(shiny)


load("translation.bin") # contains the dictionary, parsed as a double list

shinyServer(function(input, output) {
  
  tr <- function(text){ # translates text into current language
    print(input$language)
    sapply(text,function(s) translation[[s]][[input$language]], USE.NAMES=FALSE)
  }
  
  #   output$distPlot <- renderPlot({
  #     plot(1:input$obs,1:input$obs, main = tr("plotTitle"))
  #     
  #   })
  
  output$uiLanguage <- renderUI({
    selectInput("uiLanguage", label = "Select language:",
                choices = c("English" = "en", "Bahasa Malaysia" = "ms", "简体中文" = "zh"),
                selected = "en")  })
  

  
  
})