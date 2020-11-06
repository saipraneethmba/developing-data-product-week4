library(shiny)
library(datasets)

t <- mtcars
t$am <- factor(t$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
    
    p1 <- reactive({
        paste("mpg ~", input$variable)
    })
    
    p2 <- reactive({
        paste("mpg ~", "as.integer(", input$variable, ")")
    })
    
    q <- reactive({
        lm(as.formula(p2()), data=t)
    })
    
    output$caption <- renderText({
        p1()
    })
    
    output$mpgBoxPlot <- renderPlot({
        boxplot(as.formula(p1()), 
                data = t,
                outline = input$outliers)
    })
    
    output$q <- renderPrint({
        summary(q())
    })
    
    output$mpgPlot <- renderPlot({
        with(t, {
            plot(as.formula(p2()))
            abline(q(), col=2)
        })
    })
    
})