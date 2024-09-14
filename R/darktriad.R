#' darktriad Bayesian Network
#'
#' Bayesian Network modeling for Dark Triad, aggression, and empathy.
#'
#' @usage NULL
#'
#' @format
#' A conditional linear Gaussian Bayesian network to examine the validity of the constructed models as predictable. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Age}{}
#' \item{Gender}{(Male, Female);}
#' \item{Machiavellianism}{}
#' \item{Fantasy}{}
#' \item{EmotionalSusceptibility}{}
#' \item{Narcissism}{}
#' \item{Psychopathy}{}
#' \item{SelfOrientedEmotionalReactivity}{}
#' \item{VerbalAggression}{}
#' \item{PerspectiveTaking}{}
#' \item{OtherOrientedEmotional}{}
#' \item{PhysicalAggression}{}
#' \item{Hostility}{}
#' \item{Anger}{}
#'  }
#'
#'
#' @keywords CLGBN
#' @importClassesFrom bnlearn bn.fit
#' @references Zaitsu, W. (2024). Bayesian Network modeling for Dark Triad, aggression, and empathy. Personality and Individual Differences, 230, 112805.
"darktriad"
