###################
# server.R
# 
# For all your server needs 
###################
server <- function(input, output, session) {
  
  data_r <- reactiveValues(data = drinks, name = "drinks")
  
  observeEvent(input$data, {
    if (input$data == "drinks") {
      data_r$data <- drinks
      data_r$name <- "drinks"
    } else {
      data_r$data <- mpg
      data_r$name <- "mpg"
    }
  })
  
  result <- callModule(
    module = esquisserServer,
    id = "esquisse",
    data = data_r
  )
  
  output$module_out <- renderPrint({
    str(reactiveValuesToList(result))
  })
  
}
