#' diagnosis Bayesian Network
#'
#' An interpretable unsupervised Bayesian network model for fault detection and diagnosis.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to support the process monitoring scheme. Probabilities were given within the referenced paper, although the variances were not clearly specified. The vertices are X1, X2, ..., X16.
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Yang, W. T., Reis, M. S., Borodin, V., Juge, M., & Roussy, A. (2022). An interpretable unsupervised Bayesian network model for fault detection and diagnosis. Control Engineering Practice, 127, 105304.
"diagnosis"
