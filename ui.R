
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Making Forums Graphs - with Shiny!"),

  # Sidebar with numeric inputs
  sidebarLayout(
    sidebarPanel(
      selectInput("title", label = h3("Graph Title:"), 
                  choices = list("Weekday Modlook" = "Weekday Modlook",
                                 "Weekend Modlook" = "Weekend Modlook",
                                 "Weekday Twitter" = "Weekday Twitter",
                                 "Weekend Twitter" = "Weekend Twitter"
                                 ), 
                  selected = 1),
      numericInput("val1", 
                   "Week One:", 
                   0, 
                   min = 0, 
                   max = 100,
                   width= "200px"),
      numericInput("val2", 
                   "Week Two:", 
                   0, 
                   min = 0, 
                   max = 100,
                   width= "200px"),
      numericInput("val3", 
                   "Week Three:", 
                   0, 
                   min = 0, 
                   max = 100,
                   width= "200px"),
      numericInput("val4", 
                   "Week Four:", 
                   0, 
                   min = 0, 
                   max = 100,
                   width= "200px")
      ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
