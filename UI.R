#This file is for the Project in "Developing Data Products" course
#Author: d1m2r3

#The User interface closely follows the design introduced in the class

#It uses a sidebar-mainbar design

#It is meant for a simple analysis of the mtchars data set

#The sidebar is for user input
#It displays basic instructions, and collects the main input (number of cyliders)
# and passes it on to the server.R script


library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Developing Data Products project "),
        sidebarPanel(

                h3(' Fuel economy and Power of Cars'),
                h4('How do they change with number of cylinders?'),
                textInput(inputId = "nCyl", label = "Enter number of cylinders: 4, 6, or 8"),
                h5('Note: If you enter other values, you will get NaN'),
                h6('Project submitted by d1m2r3')
                 ), 
        
        mainPanel(
                h2('Results from the mtcars data set'),
                p(' For number of cylinders: '),
                textOutput('otext0'),
                p('   '),
                p(' Average fuel economy, miles per gallon: '), 
                textOutput('otext1'),
                p('  '),
                p('  '),
                p(' Average power, in hp: '),
                textOutput('otext2'),
                p('   ')

                
        )
))
