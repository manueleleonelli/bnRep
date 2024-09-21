#' foodsecurity Bayesian Network
#'
#' Coherent combination of probabilistic outputs for group decision making: an algebraic approach.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modelling a food security scenario. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'    \item{Cost}{}
#'   \item{EducationalAttainment}{}
#'    \item{Health}{}
#'    \item{SocialCohesion}{}
#'}
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Leonelli, M., Riccomagno, E., & Smith, J. Q. (2020). Coherent combination of probabilistic outputs for group decision making: an algebraic approach. OR Spectrum, 42(2), 499-528.
"foodsecurity"
