#' Launch the Bayesian Network Viewer App
#'
#' This function launches the Shiny app that allows users to interactively view and filter Bayesian networks.
#' @importFrom DT datatable DTOutput renderDT
#' @import bnlearn
#' @import shiny dplyr
#' @importFrom shinythemes shinytheme
#' @importFrom shinyjs useShinyjs
#' @export
app <- function() {
  shiny::runApp(system.file("shiny", "app.R", package = "bnRep"))
}
