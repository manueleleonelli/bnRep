#' ropesegment Bayesian Network
#'
#' Availability optimization of a dragline subsystem using Bayesian network.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to analyze the availability of the rope segment. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'  \item{DragRopeFault}{(TRUE, FALSE);}
#'  \item{DragChainLinkBroken}{(TRUE, FALSE);}
#'  \item{DragHitchShacklePinOut}{(TRUE, FALSE);}
#'  \item{DumpRopeFault}{(TRUE, FALSE);}
#'  \item{DumpSocketPinOut}{(TRUE, FALSE);}
#'  \item{HoistRopeSystem}{(TRUE, FALSE);}
#'  \item{HoistChainPinOut}{(TRUE, FALSE);}
#'  \item{DragSubsystem}{(TRUE, FALSE);}
#'  \item{DumpSubsystem}{(TRUE, FALSE);}
#'  \item{HoistSubsystem}{(TRUE, FALSE);}
#'  \item{RopeSegment}{(TRUE, FALSE);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords  ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Jana, D., Kumar, D., Gupta, S., & Gupta, K. K. (2024). Availability optimization of a dragline subsystem using Bayesian network. Journal of The Institution of Engineers (India): Series D, 105(1), 77-88.
"ropesegment"
