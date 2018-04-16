
# 16 April 2018
#
# This simple shiny app allows for interactive histograms based on earthquake data near Fiji.
# The data is taken from the "quakes" dataset, which is included in the standard R "datasets" library.
#
# At the console, runApp() will launch the application, in which the user can change the granularity
# of the histogram bins. The graph displaying the histogram of earthquake magnitudes will then be 
# automatically updated.

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Earthquakes Near Fiji"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "# of Bins for Quake Magnitude:",
                   min = 1,
                   max = 25,
                   value = 15)
          ),
    mainPanel( plotOutput("distPlot1") )

  )
))
