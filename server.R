library(lattice)

shinyServer(function(input, output) {
  
  d = dataflat2014
  data.week = aggregate(PTS~WEEK + PLAYER,data = d, FUN = mean)
  data.year = aggregate(PTS~YEAR + PLAYER,data = d, FUN = mean)
  
   output$plot <- renderPlot({
    if (input$xaxis=="Year"){
      xyplot(PTS ~ YEAR, data = data.year, groups = PLAYER, type = "l", lwd = 2, main = "FF Points by Year")
    } else xyplot(PTS ~ WEEK, data = data.week, groups = PLAYER, type = "l", lwd = 2, main = "FF Points by Week")
  })
})
