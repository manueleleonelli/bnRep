#' medicaltest Bayesian Network
#'
#' Global sensitivity analysis of uncertain parameters in Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network representing a synthethic example of two medical tests. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Test1}{(no, yes);}
#'   \item{Test2}{(no, yes);}
#'   \item{Disease}{(no, yes);}
#' }
#'
#'
#' @keywords ReverseNaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Ballester-Ripoll, R., & Leonelli, M. (2024). Global Sensitivity Analysis of Uncertain Parameters in Bayesian Networks. arXiv preprint arXiv:2406.05764.
"medicaltest"
