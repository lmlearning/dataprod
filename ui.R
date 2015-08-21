library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Explore the Exponential Distribution"),
    
    # Sidebar with a slider input for the number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 10,
                        max = 200,
                        value = 100),
        numericInput(inputId = "lambda",
                     label  = "Lambda",
                     value = 0.2),
        numericInput(inputId = "nsim",
                     label = "Number of simulations:",
                     value = 1000,
                     min = 100,
                     max = 10000
                     
        ),
        numericInput(inputId = "ntrials",
                     label = "Number of trials:",
                     value = 40
            
        )),
        
        mainPanel(
            plotOutput("distPlot"),
            div("This application allows you to play around with the exponential distribution. It simulates random draws from the distribution and generates a histogram based on the results."),
            br(),
            p("You can adjust the following parameters (results are re-computed immediately):"),
            p("* Number of bins used in the histogram"),
            p("* The rate of the exponential distribution, denoted as Lambda"),
            p("* The number of discrete simulations to run"),
            p("* How many trials are generated as part of each simulation")
        )
    )
))