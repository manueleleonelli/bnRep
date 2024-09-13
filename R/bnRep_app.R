#' Launch the Bayesian Network Viewer App
#'
#' This function launches the Shiny app that allows users to interactively view and filter the Bayesian networks repository
#' @importFrom DT datatable DTOutput renderDT
#' @import bnlearn
#' @import shiny dplyr
#' @importFrom shinythemes shinytheme
#' @importFrom shinyjs useShinyjs
#' @export
bnRep_app <- function() {
  shiny::runApp(system.file("shiny", "app.R", package = "bnRep"))
}
