#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(colourpicker);
library(shinyBS);
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30), # could be delete
            colourInput('colour_line', "Specifiy color", value='red'), # could be delete
            selectInput("Y value", "Specifiy Variable", names(dat1)[-(1:3)], 
                        multiple = TRUE,
                        selectize = TRUE,
                        #selected = colnames[5]
                        ), # ID,CAPTION, CHOICES
            uiOutput("ycol")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            # plotOutput("distPlot")
            plotlyOutput("distPlot")
        )
    )
))



