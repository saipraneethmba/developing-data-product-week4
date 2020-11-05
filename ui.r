library(shiny)

shinyUI(
    navbarPage("Shiny Applications",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("relation btw variables and mpgs"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("No. of cylinders" = "cy",
                                                  "Displacement (cu.in.)" = "dis",
                                                  "Gross horsepower" = "hpp",
                                                  "Rear axle ratio" = "rear",
                                                  "Weight (lb/1000)" = "wtg",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "No. of forward gears" = "gear",
                                                  "No. of carburetors" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("About the Data Set",
                        
                        h3("weekly assignment of coursera "),
                        helpText("It is given that i work in  Motor Trend,an automobile industry to look into the data belonging to the cars, to do analysis and to find out the relationships",
                                 "btw vars and mpgs. to calculate,analyse and find out that if which is better, automatic or manual transmission  for MPG. Also to find out the  MPG diff btw automatic and manual transmissions"),
                        h3("Important"),
                        p("This is a data frame with having 32 observations upon eleven variables."),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("More Data Details",
                        h1("Motor Trend Car Road Tests"),
                        hr(),
                        h3("Description"),
                        helpText("This data is taken from the 1974 Motor Trend US magazine,",
                                 " which contains consumption of fuel and ten attributes of automobile design and performance",
                                 " for 32 automobiles (1973-74 models)."),
                        h3("Format"),
                        p("The data frame having thirty two observations upon eleven variables."),
                        
                        p("  [, 1]   mpg         Miles per gallon"),
                        p("  [, 2]	 cy	 No. of cylinders"),
                        p("  [, 3]	 dis	 Displacement (cu.in.)"),
                        p("  [, 4]	 hpp	 Gross horsepower"),
                        p("  [, 5]	 rear	 Rear axle ratio"),
                        p("  [, 6]	 wtg	 Weight (lb/1000)"),
                        p("  [, 7]	 qsec	 1/4 mile time"),
                        p("  [, 8]	 vs	 V/S"),
                        p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                        p("  [,10]	 gear	 No. of forward gears"),
                        p("  [,11]	 carb	 No. of carburetors"),
                        
                        h3("Source"),
                        
                        p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
               ),
               tabPanel("Github Details",
                        a("https://github.com/saipraneethmba/developing-data-product-week4"),
                        hr(),
                        h4("It is the  first time i created a shiny app"),
                        h4("I uploaded this in my github repository")
               )
    )
)