###################
# global.R
# 
###################

# LIBRARIES ----
library(promises)
library(esquisse)
library(modeldata)
library(shiny)

data("drinks")
data("mpg")

set.seed(122)
df <- data.frame(
  n = rnorm(500),
  m = rnorm(100))
