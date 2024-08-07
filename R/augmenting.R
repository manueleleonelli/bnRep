#' Augmenting Bayesian Network
#'
#' Augmenting Learning Components for Safety in Resource Constrained Autonomous Robots
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to estimate the probability that the car will remain on track, given its current state and control actions. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{CmdSteeringOnTurn}{(Leaf, Straight, Right);}
#'   \item{CurrentPosition}{(Near, On , Far);}
#'   \item{CurrentSteering}{(Straight, Left, Right);}
#'   \item{CurrentVelocity}{(Slow, Medium, Fast);}
#'   \item{InTrack}{(Yes, No);}
#'   \item{SafeTurnRegion}{(Yes, No);}
#' }
#'
#'
#' @keywords DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Ramakrishna, S., Dubey, A., Burruss, M. P., Hartsell, C., Mahadevan, N., Nannapaneni, S., ... & Karsai, G. (2019, May). Augmenting learning components for safety in resource constrained autonomous robots. In 2019 IEEE 22nd International Symposium on Real-Time Distributed Computing (ISORC) (pp. 108-117). IEEE.
"augmenting"
