shinyServer(
  function(input, output){
    
    # Rendering for Name    
    output$MyName <- renderText(input$Name)
    
    # Rendering for Age    
    output$MyAge <- renderText(input$Age)
    
    # Rendering for DOB
    output$dob <- renderText(input$`Date Of Birth`)
    
    # Rendering for Gender
    output$mygender <-  renderText(input$gender)
    
    # Rendering for Gender
    output$mytemp <- renderText(input$Temperature)
    
    # Rendering for states        
    output$states <- renderText(input$StateNames)
    
    
  }
)