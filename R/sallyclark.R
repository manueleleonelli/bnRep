#' sallyclark Bayesian Network
#'
#' Measuring coherence with Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian modelling the evidence from the Sally Clark trial. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ABrusing}{(TRUE, FALSE);}
#'   \item{ADisease}{(TRUE, FALSE);}
#'   \item{AMurder}{(TRUE, FALSE);}
#'   \item{BBruising}{(TRUE, FALSE);}
#'   \item{BDisease}{(TRUE, FALSE);}
#'   \item{BMurder}{(TRUE, FALSE);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'@keywords Tree
#' @importClassesFrom bnlearn bn.fit
#' @references Kowalewska, A., & Urbaniak, R. (2023). Measuring coherence with Bayesian networks. Artificial Intelligence and Law, 31(2), 369-395.
"sallyclark"
