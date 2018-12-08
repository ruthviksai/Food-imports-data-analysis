library(shiny)
library(plotly)

my_ui <- fluidPage(
    tabPanel(titlePanel("Food Consumption"),
             fluid = TRUE,
          
               
                 selectInput("type_of_import", "Chose type of Import",
                             choices = list("Tota Animal Foods" = "total_animal_foods", 
                                            "Total Plant Foods" = "total_plant_foods",
                                            "Total Beverages" = "total_beverages",
                                            "Total United States Food Imports" = "total_u_s_food_imports"
                                            ), selected = "total_animal_foods"
               ),
               mainPanel(
                 plotlyOutput("graph")
               )
               
   
    
  
))
