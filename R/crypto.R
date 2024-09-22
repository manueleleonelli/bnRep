#' crypto Bayesian Network
#'
#' Dynamic evolution of causal relationships among cryptocurrencies: an analysis via Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian modelling to exam- ine the causal interrelationships among six major cryptocurrencies. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Bitcoin}{(Down, Up);}
#'   \item{Binance_Coin}{(Down, Up);}
#'   \item{Ethereum}{(Down, Up);}
#'   \item{Tether}{(Down, Up);}
#'   \item{Litecoin}{(Down, Up);}
#'   \item{Ripple}{(Down, Up);}
#' }
#'
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Amirzadeh, R., Thiruvady, D., Nazari, A., & Ee, M. S. (2024). Dynamic evolution of causal relationships among cryptocurrencies: an analysis via Bayesian networks. Knowledge and Information Systems, 1-16.
"crypto"
