#' Concrete Bayesian Networks
#'
#' Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for evaluating the presence probability of blue concrete (Model 3.1 of the referenced paper). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{AverageDistance}{(0-150, 150-220, 220-360, 360-1500, >1500)}
#'   \item{BlueConcrete}{(False, True);}
#'    \item{FloorArea}{(0-150, 150-220, 220-360, 360-1500, >1500);}
#' }
#'
#'
#' @keywords DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Wu, P. Y., Johansson, T., Mangold, M., Sandels, C., & Mjornell, K. (2023). Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks. Expert Systems with Applications, 222, 119812.
"concrete3"
