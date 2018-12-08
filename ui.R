library(shiny)
library(plotly)
library(DT)

my_ui <- fluidPage(
    tabPanel(titlePanel("Food Consumption"),
             fluid = TRUE,
             "The first three graphs show the U.S imports of different food categories from 1999 to 2017.", 
             "The last graph sums up all the categories and shows the total food imports and ",
             strong("TRENDS"), "over the years",
             h3("Graph Between Year and Animal Foods Imported"),   
             plotlyOutput("graph1"),
             h3("Graph Between Year and Plant Foods Imported"),   
                 plotlyOutput("graph2"),
             h3("Graph Between Year and Beverages Imported"),   
                 plotlyOutput("graph3"),
             h3("Graph Between Year and Total Year Imports and Trends Across"),   
                  plotlyOutput("graph4")
               ),
    tabPanel("DataSets Used: Imports in the United States",
             h2("Food imports in the United States"),
             DT::dataTableOutput("mytable")
           ) ,
    h2("Data Sets Used"),
    "https://catalog.data.gov/dataset/u-s-food-imports",
    h2("Github Repo Link"),
    "https://github.com/ruthvs1324/STAT302"
    
)

