#' Load a Bayesian network
#'
#' This function loads a selected Bayesian network file.
#'
#' @param network_name The name of the network file to load.
#' @return A bn.fit object representing the Bayesian network.
#' @export
load_network <- function(network_name) {
  # Ensure the network_name is a valid dataset
  if (!network_name %in% get_network_list()) {
    stop("Network file does not exist.")
  }

  # Load the dataset

   #   data(list = network_name, package = "bnRep")

  # The loaded object will have the same name as the dataset
  bn <- get(network_name)

  return(bn)
}
