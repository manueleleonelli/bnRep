#' soil Bayesian Network
#'
#'
#' Characteristic study of some parameters of soil irrigated by magnetized waters.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network  to display the water treatment impact on soil characteristics. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Depth}{(0-20, 20-40);}
#' \item{EC}{(Less than 1.4, More than 1.4);}
#' \item{Intensity}{(Less than 0.3, More than 0.3);}
#' \item{Length}{(Less than 20, More than 20);}
#' \item{pH}{(Less than 7.7, More than 7.7);}
#' \item{W}{(Less than 10, More than 10);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ben Amor, H., Elaoud, A., Ben Hassen, H., Ben Salah, N., Masmoudi, A., & Elmoueddeb, K. (2020). Characteristic study of some parameters of soil irrigated by magnetized waters. Arabian Journal of Geosciences, 13, 1-11.
"soil"
