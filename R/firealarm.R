#' Firealarm Bayesian Network
#'
#' When do numbers really matter?.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model a simple fire alarm system. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Fire}{(true, false);}
#'   \item{Tampering}{(true, false);}
#'   \item{Smoke}{(true, false);}
#'   \item{Alarm}{(true, false);}
#'   \item{Leaving}{(true, false);}
#'   \item{Report}{(true, false);}
#' }
#'
#'
#' @keywords DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Hei Chan, Adnan Darwiche (2002). "When do numbers really matter?". Journal of Artificial Intelligence Research 17 (265-287).
"firealarm"
