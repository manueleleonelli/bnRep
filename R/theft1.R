#' theft Bayesian Networks
#'
#' Evaluating methods for setting a prior probability of guilt.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network representing a legal scenario. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{EredHanded}{(F, T);}
#'   \item{EseenCS}{(F, T);}
#'   \item{EWallet}{(F, T);}
#'   \item{Guilty}{(F, T);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references van Leeuwen, L., Verheij, B., Verbrugge, R., & Renooij, S. (2023). Evaluating Methods for Setting a Prior Probability of Guilt. In Legal Knowledge and Information Systems (pp. 63-72). IOS Press.
"theft1"
