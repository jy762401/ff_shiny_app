library(lattice)

shinyUI(navbarPage("Fantasy Football League Stats",
                   tabPanel("Plot",
                            sidebarLayout(
                              sidebarPanel(
                                radioButtons("xaxis", "Horizontal Axis",
                                             c("Week", "Year")
                                )#,
                                #checkboxGroupInput("players", "Players:",
                                #                   levels(dataflat2014$PLAYER), selected = levels(dataflat2014$PLAYER)
                                #)
                              ),
                              mainPanel(
                                plotOutput("plot")
                              )
                            )
                   ),
                   tabPanel("About",
                            "This very simple module shows average points scored either by year (2009-2014) or by week (1-16)"
                   )
                   
          )
)
