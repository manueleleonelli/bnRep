#' concrete Bayesian Networks
#'
#' Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for evaluating the presence probability of blue concrete (Fig. E1 - Other Buildings, of the referenced paper). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{AverageDistance}{(0-300, 300-600, >600);}
#'   \item{BlueConcrete}{(False, True);}
#'   \item{ConstructionYear}{(1930-1955, 1955-1960, 1960-1968, 1968-1975, 1975-1980);}
#'    \item{FloorArea}{(0-150, 150-220, 220-360, 360-1500, >1500);}
#'    \item{NumberOfStairwells}{(0, 1, 2, 3, 4);}
#' }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords Tree
#' @importClassesFrom bnlearn bn.fit
#' @references Wu, P. Y., Johansson, T., Mangold, M., Sandels, C., & Mjornell, K. (2023). Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks. Expert Systems with Applications, 222, 119812.
"concrete7"
