#This is the server.R for the project in "Developing Data Products", CourseEra
#Author: d1m2r3

#The server design closely follows the one introduced in class

#First it loads the mandatory shiny library and mtcars data
# It receives the number of cylinders "nCyl" input by the user, from UI.R
#It calculates the average fuel economy and power for all cars with a given 
#number of cylinders



#Since the mtcars dataframe is the most important part, we want to access it
# only once
# 
# It uses the "reactive" method of programming to achieve efficiency
# The subset data frame, m1, for a given number of cylinders is calculated only once,
# as a "reactive" to the input "nCyl". 
# 
# It passes the output of number of cylinders (for verification), calculated mpg
# and hp back to the UI.R script for display to the user

library(shiny)
data(mtcars)

fe1 <- 0.0
pow1 <- 0.0                 


shinyServer(
        function(input, output) {

                #n1 <- reactive({as.numeric(input$nCyl)})
                 m1 <- reactive({ mtcars[mtcars$cyl == as.numeric(input$nCyl),]})
                 #fe1 <- mean(m1$mpg)
                 #pow1 <- mean(m1$hp) 
                
                
                output$otext0 <- renderText({as.numeric(input$nCyl)})
                output$otext1 <- renderText({mean(m1()$mpg)})
                output$otext2 <- renderText({mean(m1()$hp)})
                 

        }
)
