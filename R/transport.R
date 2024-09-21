#' transport Bayesian Network
#'
#' Bayesian networks: with examples in R.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling transport choices of a population. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{A}{Age (young, adult, old);}
#'   \item{S}{Sex (M, F);}
#'   \item{E}{Education (high uni);}
#'   \item{O}{Occupation (emp, self);}
#'   \item{R}{Residence (small, big);}
#'   \item{T}{Transport (car, train, other);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Scutari, M., & Denis, J. B. (2014). Bayesian networks: with examples in R. Chapman and Hall/CRC.
"transport"
