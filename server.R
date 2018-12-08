library(dplyr)
library(ggplot2)
library(readxl)
library("lattice")
library(plotly)
library(janitor)
library(DT)

setwd("~/Desktop/STAT302/")
import <- read_excel("imports.xlsx")
import_smaller <- import %>% select("Year", "Total animal foods", "Total plant foods", 
                                    "Total beverages", "Total U.S. food imports") %>% 
  mutate_if(is.numeric, ~round(., 1)) %>% clean_names()

import_smaller[,-1] <- round(import_smaller[,-1],0)
shinyServer <- function(input, output) {
  
import_smaller[,-1] <- round(import_smaller[,-1],0)
#graph <- xyplot('Total animal foods' ~ 'Year', data = import_smaller)

  output$graph1 <-renderPlotly({ 
    plot_ly(data = import_smaller, x = ~year, y = ~total_animal_foods, mode = "markers", type = "scatter")
    
    })
  output$graph2 <-renderPlotly({ 
    plot_ly(data = import_smaller, x = ~year, y = ~total_plant_foods, mode = "markers", type = "scatter")
    
  })
  output$graph3 <-renderPlotly({ 
    plot_ly(data = import_smaller, x = ~year, y = ~total_beverages, mode = "markers", type = "scatter")
    
  })
  output$graph4 <-renderPlotly({ 
    plot_ly(data = import_smaller, x = ~year, y = ~total_u_s_food_imports, mode = "markers", type = "scatter")
    
  })
  output$mytable = DT::renderDataTable({
    import_smaller
  })
}


