library(shiny)
library(shinythemes)
library(shinyBS)  # devtools::install_github("ebailey78/shinyBS")
library(ggplot2)


shinyUI(
  fluidPage(  theme = shinytheme("readable"), 
              img(src='seaco2.png', align = "right", height = 65*1.2, width = 360*1.2),
              
              titlePanel(title=h2("My SEACO"), windowTitle="My SEACO"),
              
              
              sidebarLayout(
                
                sidebarPanel(
                  uiOutput("uiLanguage"),
                  
                ),
                
                mainPanel()
              )
  )
)