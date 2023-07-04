#' @export
dsfrDependency <- function() {
  htmltools::htmlDependency(
    name = "dsfr",
    version = "1.9.3",
    package = "shiny.dsfr",
    src = "www",
    script = "dsfr.js",
    stylesheet = "dsfr.min.css"
  )
}

#' @exporta
component <- function(name) {
  function(...) {
    shiny.react::reactElement(
      module = "@codegouvfr/react-dsfr",
      name = name,
      props = shiny.react::asProps(...),
      deps = dsfrDependency()
    )
  }
}

#' @export
Button <- component("Button")
