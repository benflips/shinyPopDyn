#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#


library(shiny)
library(plotly)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Geometric and exponential growth"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            radioButtons("timeType", 
                         label = "Time", 
                         choices = c("Discrete", "Continuous"), 
                         inline = TRUE),
            sliderInput("births",
                        "Births (per capita)",
                        min = 0,
                        max = 5,
                        value = 2),
            sliderInput("deaths",
                        "Deaths (per capita)",
                        min = 0,
                        max = 1,
                        value = 0.5)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("popPlot")
        )
    )
)
