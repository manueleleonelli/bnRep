#' beams Bayesian Network
#'
#' Bayesian networks and their application to the reliability of FRP strengthened beams.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network assess the structural reliability of bridge systems (Figure 2). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{BeamShearSpan}{(Low, High);}
#'   \item{FRPSheetsSpacing}{(Low, High);}
#'   \item{ModelOfFailure}{(Rupture, Debonding, Pass);}
#'   \item{ProbabilityOfFailure}{(Fail, Pass);}
#'   \item{ShearGain}{(Low, Medium, High);}
#'   \item{WrappingScheme}{(Grooving, Side Bonding, Three Side Bonding, Three Side Bonding With Anchoring, Full Wrapping);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Obaid, O., & Leblouba, M. (2022, March). Bayesian Networks and Their Application to the Reliability of FRP Strengthened Beams. In International Civil Engineering and Architecture Conference (pp. 277-284). Singapore: Springer Nature Singapore.
"beam1"
