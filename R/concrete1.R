#' concrete Bayesian Networks
#'
#' Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for evaluating the presence probability of blue concrete (Model 1.1 of the referenced paper). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Basement}{(False, True);}
#'   \item{BlueConcrete}{(False, True);}
#'   \item{BuildingClass}{(Single Family House, MultiFamily House, School Building, Other Building);}
#'   \item{FloorArea}{(0-150, 150-220, 220-360, 360-1500, >1500);}
#' }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Wu, P. Y., Johansson, T., Mangold, M., Sandels, C., & Mjornell, K. (2023). Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks. Expert Systems with Applications, 222, 119812.
"concrete1"
