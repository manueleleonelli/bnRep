#' Get the list of available Bayesian network files
#'
#' This function lists all the .rda files in the data directory.
#'
#' @return A character vector of network file names.
#'
#'@export
get_network_list <- function() {
  network_files <- bnRep_summary$Name
  return(network_files)
}
