# Building Shiny App

shinyUI(fluidPage(
  titlePanel(title = "Sample Application Form", windowTitle = 'Welcome to Shiny!!'),
    sidebarLayout(  
      sidebarPanel(("Enter Your Personal Details"),
                    textInput("Name", "Enter Your Name", ""),
                    textInput("Age", "Enter Your Age", "" ),
                    textInput("Date Of Birth", "Enter Your Date of Birth", ""),
                    radioButtons("Gender", "Select the Gender", list("Male", "Female", "TransGender")),
                    sliderInput("Temperature", min = 25, max = 48, value = c(34, 45), label = "Temp in Fahrenheit"),
                    selectInput("StateNames", "Select State", c("Select","Mumbai", "Kolkatta", "New Delhi", "Banglore", "Pune","Patna", "Chennai"), selected = "Select", selectize = FALSE,),
                    width = 10),position = "left", fluid = T,
                    
      mainPanel(("Personal Information"),
               textOutput("MyName"),
               textOutput("MyAge"),
               textOutput("dob"),
               textOutput("mygender"),
               textOutput("mytemp"),
               textOutput("states"))
      
    )
  )
)

