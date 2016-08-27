library(shiny)

# Define UI for cars mpg driver exploration
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("MPG Driver Explorer"),
  
    sidebarPanel(
            "This app lets you explore the relationship between miles per gallon and various other car features in the mtcars package.",
            tags$br(),
            tags$br(),
            selectInput("feature", "Choose a feature to compare to mpg", 
                        c("Cylinders" = "cyl",
                        "Transmission" = "am",
                        "Gears" = "gear",
                        "Displacement" = "disp",
                        "Horsepower" = "hp",
                        "Rear axle ratio" = "drat",
                        "weight" = "wt",
                        "Quarter mile time" = "qsec",
                        "V/S" = "vs",
                        "Number of Carburetors" = "carb")
                        ),
            submitButton('Submit'),
            wellPanel(
                    helpText(   a("Link to code on Github",     href="https://github.com/daddyprasad5/dataproductsproject")
                    )
            )
    ),
    mainPanel(
        h4('You chose to compare mpg to...'),
        verbatimTextOutput("inputValue"),
        plotOutput('myPlot', width = "75%", height = "350px")  
    )
  )
)

