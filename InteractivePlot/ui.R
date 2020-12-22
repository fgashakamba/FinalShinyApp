#
# This app gives the user an interface to interact with a plot
# The user can change with variables to regress against the HP
#

library(shiny)

# Load the cars data
data("mtcars")
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Interact with MTCars data"),

    # Sidebar with a checkbox to select which variables to regress
    sidebarPanel(
        radioButtons("choice", "Choose variable to use:",
                     c("Horse Power" = "hp",
                       "Engine size (Displacement" = "disp")
        )
    ),

    # Show the plot
    mainPanel(
        plotOutput("MyPlot")
    )
))
