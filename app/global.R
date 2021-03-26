###################
# global.R
# 
###################

# LIBRARIES ----
library(promises)
library(esquisse)

library(shiny)


# Shiny
library(shiny)
library(bslib)

# Modeling
library(modeldata)
library(DataExplorer)

# Widgets
library(plotly)

# Core
library(tidyverse)
#if (!require("DT")) install.packages('DT')
library(DT)


# LOAD DATASETS ----
utils::data("stackoverflow",
            "car_prices",
            "Sacramento",
    
            "drinks",
    
            package = "modeldata")

data_list = list(
  "StackOverflow" = stackoverflow,
  "Car Prices"    = car_prices,
  "Sacramento Housing" = Sacramento,
 # "Titanic" = Titanic,
  "Drinks" = drinks#,
 # "mpg" = mpg,
)
