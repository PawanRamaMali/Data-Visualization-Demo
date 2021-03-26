# body.R ##################  
# 
# 

body <- dashboardBody(
  tabItems(
    
    ### 1st tab content #####################
    #  Dashboard ----

    tabItem(
      tabName = "dashboard",

          tabsetPanel(
            tabPanel(
              title = "Build Plots",
              esquisserUI(
                id = "esquisse",
                header = FALSE, # dont display gadget title
                choose_data = FALSE # dont display button to change data
              )
            ),
            tabPanel(
              title = "output",
              verbatimTextOutput("module_out")
            )

        
        
      )
    ),
    
    ### 2nd  tab content #####################
    # Data Selection ---- 
    
    tabItem(
      tabName = "Tab_Data_Selection",
        
      div( 
        h3("Explore a Dataset"),
        
        shiny::selectInput(
          inputId = "dataset_choice",
          label   = "Data Connection",
          choices = c("StackOverflow",
                      "Car Prices",
                      "Sacramento Housing",
                      "Drinks")
        )),
        
        hr(),
        
        # Moved to settings Panel
        # checkboxInput("show_rownames",
        #               label = "Show row numbers"),
        # checkboxInput("show_features_responsive",

        br(),
        br(),
      
        dataTableOutput("show_data")
        
   
    ),
    
    ### 3rd  tab content #####################
    # Correlation ---- 
    
    tabItem(
      tabName = "Tab_Correlation_Matrix",
      h3("Correlation Matrix"),
      
        plotlyOutput("corrplot", height = 700)
        
    
    ),
    
    
    ########################
    # 4th tab content
    ########################
    tabItem(
      tabName = "Tab_Settings",
      h3("Settings"),
        h4("DataTable Options"),
        hr(),
        checkboxInput("show_rownames",
                      label = "Show row numbers"),
        checkboxInput("show_features_responsive",
                      label = "Responsive Layout")
        
       , 
      shinythemes::themeSelector()
    )
  )
)