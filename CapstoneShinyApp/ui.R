## Capstone: Coursera Data Science
## Final Project

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
        fluidPage(
        titlePanel("Capstone Final Project Predection Words In English"),
        tabsetPanel(
                tabPanel("Abstract Of The Application",
                                 
                                br(),
                                strong("Introduction About Project From Coursera"),
                                h1("Now, Round the world people are spending an increasing amount of 
                                   time on their mobile devices for email, social networking, 
                                   banking and a whole range of other activities. But typing on 
                                   mobile devices can be a serious pain. SwiftKey, our corporate 
                                   partner in this capstone, builds a smart keyboard that makes it 
                                   easier for people to type on their mobile devices. One cornerstone 
                                   of their smart keyboard is predictive text models. ")
                                 
                                ),        
                
                
                 tabPanel("Prediction Application",
                sidebarLayout(
                        sidebarPanel(
                                helpText("*Insert word or sentence to predict what's after that*"),
                                hr(),
                                textInput("inputText", "++Input Text Box Input any word or scentence Here++",value = ""),
                                hr(),
                                helpText("1 - Once you enter word or sentence in left text box it will show predicted.", 
                                         hr(),
                                         hr(),
                                         "2 - You should enter word or scentence to show predection in the result.",
                                         hr(),
                                         hr(),
                                         "3 - The Result of predection will show in the right"),
                                hr(),
                                hr()
                        ),
                        mainPanel(
                                h2("Predicted Word"),
                                verbatimTextOutput("prediction"),
                                strong("NB : Please insert Text Only In English"),
                                strong(code(textOutput('Live Writing Scentence'))),
                                br(),
                                br(),
                                br(),
                                strong("What's N-grams used to predict upper predection"),
                                strong(code(textOutput('sentence2'))),
                                hr(),
                                hr(),
                                hr(),
                                img(src = 'logo.jpg', height = 100, width = 500),
                                hr(),
                                hr(),
                                hr(),
                                strong("Special thanks for Swiftkey for its Awesome dataset"))
                        ))
                )
        )
)

