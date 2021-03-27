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


rm(list=ls())
## Setting Upload Size to 1GB
options(shiny.maxRequestSize = 1000000000)
options("esquisse.display.mode" = "browser")

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
