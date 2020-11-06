library(shiny)

shinyUI(
    navbarPage("shiny assignment",
               tabPanel("shiny analysis of variables",
                        fluidPage(
                            titlePanel("relation btw variables and mpgs"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("No. of cys" = "cyl",
                                                  "Disp" = "dis",
                                                  "Gh" = "hp",
                                                  "Rar" = "rear",
                                                  "Wgt" = "wt",
                                                  "qmt" = "qsec",
                                                  "Vs" = "vs",
                                                  "Trnsm" = "am",
                                                  "No. of fg" = "gear",
                                                  "No. of carbs" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "outliers of boxplot", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("plottings of boxplot", plotOutput("mpgBoxPlot")),
                                                tabPanel("modelling regression", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("details the Data given in our assignment",
                        
                        h3("weekly assignment of coursera "),
                        helpText("It is given that i work in  Motor Trend,an automobile industry to look into the data belonging to the cars, to do analysis and to find out the relationships",
                                 "btw vars and mpgs. to calculate,analyse and find out that if which is better, automatic or manual transmission  for MPG. Also to find out the  MPG diff btw automatic and manual transmissions"),
                        h3("Info"),
                        p("This is a data frame with having thirtytwo observations upon eleven variables."),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("info of the data given",
                        h1("tests of roads - cars of motors"),
                        hr(),
                        h3("Detailed meaning"),
                        helpText("This data is taken from the nineteen seventy four Motor Trend US magazine,",
                                 " which contains consumption of fuel and ten attributes of automobile design and performance",
                                 " for thirtytwo automobiles nineteen seventy three to nineteen seventy four."),
                        h3("this is of the form"),
                        p("The data frame having thirty two observations upon eleven variables."),
                        
                        p("  [, 1]   mpg         Miles per gallon"),
                        p("  [, 2]	 cyl	 No. of cys"),
                        p("  [, 3]	 dis	 Disp"),
                        p("  [, 4]	 hpp	 Gh"),
                        p("  [, 5]	 rear	 Rar"),
                        p("  [, 6]	 wtg	 Wgt"),
                        p("  [, 7]	 qsec	 qmt"),
                        p("  [, 8]	 vs	 Vs"),
                        p("  [, 9]	 am	 Trnsm (0 = automatic, 1 = manual)"),
                        p("  [,10]	 gear	 No. of fg"),
                        p("  [,11]	 carb	 No. of carbs"),
                        
                        h3("this info can be obtained from the source"),
                        
                        p("  Building multiple regression models interactively. Biometrics. by Henderson and Velleman")
               ),
               tabPanel("info of my assignment on github repository",
                        a("https://github.com/saipraneethmba/developing-data-product-week4"),
                        hr(),
                        h4("It is the  first time i created a shiny app"),
                        h4("I uploaded this in my github repository")
               )
    )
)