library(shiny)

# Define server logic required to draw a histogram of the exponential function
shinyServer(function(input, output) {
    
    
    output$distPlot <- renderPlot({
        #x    <- faithful[, 2]  # Old Faithful Geyser data
        bins <- input$bins
        mns <- NULL
        n <- input$ntrials
        lambda <- input$lambda
        nsim <- input$nsim
        #n <- 40
        #lambda <- 0.2
        
        for (i in 1 : nsim) mns = c(mns, mean(rexp(n,lambda)))
        
        # draw the histogram with the specified number of bins
        hist(mns, breaks = bins, col = 'skyblue', border = 'white', xlab="Means", main="Simulated Distribution")
        
        
    })
})