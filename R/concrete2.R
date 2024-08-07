#' Concrete Bayesian Networks
#'
#' Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for evaluating the presence probability of blue concrete (Model 2.1 of the referenced paper). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Basement}{(False, True);}
#'   \item{BlueConcrete}{(False, True);}
#'   \item{BuildingClass}{(Single Family House, MultiFamily House, School Building, Other Building);}
#'   \item{ConstructionYear}{(1930-1955, 1955-1960, 1960-1968, 1968-1975, 1975-1980);}
#' }
#'
#'
#' @keywords DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Wu, P. Y., Johansson, T., Mangold, M., Sandels, C., & Mjörnell, K. (2023). Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks. Expert Systems with Applications, 222, 119812.
"concrete2"
