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
  
  # Main Server ----
  
  rv <- reactiveValues()
  
  observe({
    
    if(input$show_features_responsive){
      features <-  c("Responsive")
    }
    else
      features <-  c("FixedHeader")
    
    rv$data_set <- data_list %>% pluck(input$dataset_choice)
    output$show_data <- renderDataTable({
      rv$data_set %>%
        datatable(rownames = input$show_rownames,
                  options = list(scrollX = TRUE),
                  extensions = features)
    })
    
  })
  
  output$corrplot <- renderPlotly({
    
    g <- DataExplorer::plot_correlation(rv$data_set)
    
    plotly::ggplotly(g)
  })
  
  
  
  
}
