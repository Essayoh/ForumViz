
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    weeks <- c("Week 1", "Week 2", "Week 3", "Week 4")
    values    <- c(input$val1, input$val2, input$val3, input$val4)
    df = data.frame(weeks, values)
    avg <- (input$val1 + input$val2 + input$val3 + input$val4)/4
    title <- input$title

    qplot(y = values, data=df, main=title, xlab="Week", ylab="Response Time (hours)") +
    geom_smooth(color="#5ac8c4", size=2) +
    theme_minimal() + 
    geom_hline(yintercept=avg, show_guide=TRUE, alpha=.75, color="steelblue", linetype="dashed") +
    geom_text(aes(1,avg,label = avg, hjust = -1, vjust = -1, fontface="bold")) +
    geom_text(aes(1, avg, label = "avg", hjust = -6, vjust = -1))
  })

})
