
library(shiny)
library(ggplot2)

# Define server logic required to draw the plot
shinyServer(function(input, output) {

    output$MyPlot <- renderPlot({
        y <- mtcars$mpg
        if(input$choice == "disp"){
            x <- mtcars$disp
        }
        else {
            x <- mtcars$hp
        }
        g <- ggplot(mtcars, aes(x = x, y = y))
        g <- g + geom_point() + geom_smooth()
        g

    })
})