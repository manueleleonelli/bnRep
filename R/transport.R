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
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Scutari, M., & Denis, J. B. (2014). Bayesian networks: with examples in R. Chapman and Hall/CRC.
"transport"
