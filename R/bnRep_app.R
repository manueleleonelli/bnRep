#' Launch the Bayesian Network Viewer App
#'
#' This function launches the Shiny app that allows users to interactively view and filter the Bayesian networks repository.
#'
#' @return The function calls a Shiny app to plot networks in \code{bnRep} and explore the database of networks stored in \code{bnRep_summary}.
#'
#' @importFrom DT datatable DTOutput renderDT
#' @import bnlearn
#' @import qgraph
#' @import shiny dplyr
#' @import Rgraphviz
#' @importFrom shinythemes shinytheme
#' @importFrom shinyjs useShinyjs
#' @export
bnRep_app <- function() {
  shiny::runApp(system.file("shiny", "app.R", package = "bnRep"))
}
