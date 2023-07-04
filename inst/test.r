library(shiny)
library(shiny.react)
# library(shiny.dsfr)
 pkgload::load_all()

shinyApp(
  ui = tagList(
    # includeCSS(system.file("www/dsfr.min.css", package = "shiny.dsfr")),
    Button("Test button"),
    div(
     class = "fr-accordions-group",
     Accordion("test"),
     Accordion("test2")
    ),
    Tag("test"),
    Badge("test")
  ),
  server = function(input, output) {}
)