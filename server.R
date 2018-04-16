
library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot1 <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- quakes$mag
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = 'red', border = 'white', xlim=c(4,7),
         xlab="Richter Scale", ylab="Count", main="Quake Magnitude Histogram")
    
  })

})
