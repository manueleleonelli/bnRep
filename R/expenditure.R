#' expenditure Bayesian Network
#'
#' The FEDHC Bayesian network learning algorithm.
#'
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network modeling the monthly credit card expenditure of individuals. The code to learn the Bayesian network was given within the referenced paper (Figure 12.c). The vertices are:
#' \describe{
#' \item{Card}{Whether the application for a credit card was accepted or not;}
#' \item{Reports}{The number of major derogatory reports;}
#' \item{Age}{The age in years plus twelfths of a year;}
#' \item{Income}{The yearly income in $10,000s;}
#' \item{Share}{The ratio of monthly credit card expenditure to yearly income;}
#' \item{Expenditure}{The average monthly credit card expenditure;}
#' \item{Owner}{Whether the person owns their home or they rent;}
#' \item{Selfemp}{Whether the person is self employed or not;}
#' \item{Dependents}{The number of dependents + 1;}
#' \item{Months}{The number of months living at current address;}
#' \item{Majorcards}{The number of major credit cards held;}
#' \item{Active}{The number of active credit accounts.}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Tsagris, M. (2022). The FEDHC Bayesian network learning algorithm. Mathematics, 10(15), 2604.
"expenditure"







