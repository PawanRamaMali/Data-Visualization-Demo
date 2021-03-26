###################
# body.R
# 
# Create the body for the ui. 
# If you had multiple tabs, you could split those into their own
# components as well.
###################
body <- dashboardBody(
  tabItems(
    
    ########################
    # First tab content
    ########################
    tabItem(
      tabName = "dashboard",
      fluidRow(
        mainPanel(
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
        )
        
        
      )
    ),
    
    ########################
    # Second tab content
    ########################
    tabItem(
      tabName = "widgets",
      h2("Widgets tab content")
    )
  )
)