#' beams Bayesian Network
#'
#' Bayesian networks and their application to the reliability of FRP strengthened beams.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network assess the structural reliability of bridge systems (Figure 3). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{BeamWidth}{(Low, High);}
#'   \item{ConcreteStrength}{(Low, High);}
#'   \item{ProbabilityOfFailure}{(Fail, Pass);}
#'   \item{Reinforcement}{(Low, High);}
#'   \item{TempAndHumidity}{(Low, High);}
#'   \item{WaterCementRatio}{(Low, High);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Obaid, O., & Leblouba, M. (2022, March). Bayesian Networks and Their Application to the Reliability of FRP Strengthened Beams. In International Civil Engineering and Architecture Conference (pp. 277-284). Singapore: Springer Nature Singapore.
"beam2"
