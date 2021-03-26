###################
# sidebar.R
# 
# Create the sidebar menu options for the ui.
###################
sidebar <- dashboardSidebar(
  sidebarMenu(


    menuItem("Dashboard",
             tabName = "dashboard",
             icon = icon("dashboard")),
    menuItem("Data Selection",
             tabName = "Tab_Data_Selection",
             icon = icon("database")),
    menuItem("Correlation Matrix",
             tabName = "Tab_Correlation_Matrix",
             icon = icon("th")),
    menuItem("Settings",
             tabName = "Tab_Settings",
             icon = icon("cog")),
    #menuItem("Widgets", tabName = "widgets", icon = icon("th"))
    

    
    hr()
    
 
      # radioButtons(
      #   inputId = "data",
      #   label = "Data to use:",
      #   choices = c("drinks", "mpg"),
      #   inline = TRUE
      # )
    
    
  )
)
