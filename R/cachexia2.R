#' Cachexia Bayesian Networks
#'
#' Model-preserving sensitivity analysis for families of Gaussian distributions.
#'
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian networks comparing the dependence of metabolomics for people who do not suffer of Cachexia. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{A}{Adipate;}
#'   \item{B}{Betaine;}
#'   \item{F}{Fumarate;}
#'   \item{GC}{Glucose;}
#'   \item{GM}{Glutamine;}
#'   \item{V}{Valine;}
#' }
#'
#'
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Görgen, C., & Leonelli, M. (2020). Model-preserving sensitivity analysis for families of Gaussian distributions. Journal of Machine Learning Research, 21(84), 1-32.
"cachexia2"
