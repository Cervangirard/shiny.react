library(shiny)
library(shiny.react)
library(shiny.dsfr)

shinyApp(
  ui = tagList(
    # includeCSS(system.file("www/dsfr.min.css", package = "shinKUy.dsfr")),
    Button("Test button")
  ),
  server = function(input, output) {}
)