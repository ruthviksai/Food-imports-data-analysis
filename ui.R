library(shiny)
library(plotly)
library(DT)

my_ui <- fluidPage(
    tabPanel("DataSets Used: Imports in the United States",
             h2("U.S. Food Imports (1999-2017)"),
             DT::dataTableOutput("mytable")
    ) ,
    tabPanel(titlePanel("Food Consumption"),
             fluid = TRUE,
             "The first three graphs show the U.S imports of different food categories from 1999 to 2017.", 
             "The last graph sums up all the categories and shows the total food imports and ",
             strong("TRENDS"), "over the years",
             h3("Graph Between Animal Foods Imported and Year"),   
                 plotlyOutput("graph1"),
             h3("Graph Between Beverages Imported and Year"),   
                 plotlyOutput("graph2"),
             h3("Graph Between Plant Foods Imported and Year"),   
                 plotlyOutput("graph3"),
             h3("Graph Between U.S. Total Food imports and Year"),   
                plotlyOutput("graph4")
               ),
    h2("Data Sets Used"),
    "https://catalog.data.gov/dataset/u-s-food-imports",
    h2("Github Repo Link"),
    "https://github.com/ruthvs1324/STAT302"
    
)



