library(dplyr)
library(ggplot2)
library(readxl)
library("lattice")
library(plotly)
library(janitor)

setwd("~/Desktop/STAT302/")
shinyServer <- function(input, output) {
import <- read_excel("imports.xlsx")
import_smaller <- import %>% select("Year", "Total animal foods", "Total plant foods", 
                                    "Total beverages", "Total U.S. food imports") %>% 
                  mutate_if(is.numeric, ~round(., 1)) %>% clean_names()
  
import_smaller[,-1] <- round(import_smaller[,-1],0)
head(import_smaller)
#graph <- xyplot('Total animal foods' ~ 'Year', data = import_smaller)

  output$graph <-renderPlot({ 
    plot_ly(data = import_smaller, x = ~year, y = ~total_animal_foods, mode = "markers", type = "scatter")
})
}


