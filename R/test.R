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

#' @export
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
Button <-   function(...) {
    shiny.react::reactElement(
      module = "Button",
      name = "Button",
      props = shiny.react::asProps(...),
      deps = dsfrDependency()
    )
  }


#' @export
Accordion <- function(...) {
    shiny.react::reactElement(
      module = "Accordion",
      name = "Accordion",
      props = shiny.react::asProps(...),
      deps = dsfrDependency()
    )
  }


#' @export
Badge <- function(...) {
    shiny.react::reactElement(
      module = "Badge",
      name = "Badge",
      props = shiny.react::asProps(...),
      deps = dsfrDependency()
    )
  }


#' @export
Tag <- function(...) {
    shiny.react::reactElement(
      module = "Tag",
      name = "Tag",
      props = shiny.react::asProps(...),
      deps = dsfrDependency()
    )
  }