#' stocks Bayesian Network
#'
#'
#' Gaussian Bayesian network model of healthcare, food and energy sectors in the pandemic: Turkiye case.
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network to explore the causal relations between the healthcare, food, and energy sectors. The probabilities were given in the paper. The vertices are:
#' \describe{
#' \item{AEFES}{}
#' \item{AKSEN}{}
#' \item{CCOLA}{}
#' \item{ENJSA}{}
#' \item{KERVT}{}
#' \item{LKMNH}{}
#' \item{MPARK}{}
#' \item{ODAS}{}
#' \item{PENGD}{}
#' \item{TUKAS}{}
#' \item{ULKER}{}
#' \item{ULUUN}{}
#' \item{ZOREN}{}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Sener, E., & Demir, I. (2024). Gaussian Bayesian network model of healthcare, food and energy sectors in the pandemic: Turkiye case. Heliyon, 10(1).
"stocks"
