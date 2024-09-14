#' @title Message for the User
#'
#' @description Prints out a friendly reminder message to the user.
#'
#' @usage NULL
#' @return NULL
#'
.onAttach <- function(...) {
  ver <- utils::packageVersion("bnRep")
  packageStartupMessage("This is bnRep version ", ver)
  packageStartupMessage("")
  packageStartupMessage("- See https://github.com/manueleleonelli/bnRep if you want to contribute to the project.")
  packageStartupMessage("")
  packageStartupMessage("- If you are using any Bayesian network from bnRep, remember to cite:")
  packageStartupMessage("")
  packageStartupMessage("Leonelli, M. (2024) bnRep: A repository of Bayesian networks from the academic literature. ArXiv Preprint")
  packageStartupMessage("")
}
