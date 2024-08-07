#' Beatles Bayesian Network
#'
#' Measuring coherence with Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian modelling a situation where a member of the Beatles band might be dead. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ExactlyOneBeatlesIsDead}{(TRUE, FALSE);}
#'   \item{GeorgeIsAlive}{(TRUE, FALSE);}
#'   \item{JohnIsAlive}{(TRUE, FALSE);}
#'   \item{PaulIsAlive}{(TRUE, FALSE);}
#'   \item{RingoIsAlive}{(TRUE, FALSE);}
#' }
#'
#'
#' @keywords ReverseNaiveBayes DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Kowalewska, A., & Urbaniak, R. (2023). Measuring coherence with Bayesian networks. Artificial Intelligence and Law, 31(2), 369-395.
"beatles"
