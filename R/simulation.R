#' simulation Bayesian Network
#'
#' Integration of fuzzy reliability analysis and consequence simulation to conduct risk assessment.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to assist asset managers in evaluating the risk arising from the operations. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{JointFailure}{(True, False);}
#'   \item{PressureRegulatorLeakage}{(True, False);}
#'   \item{SealFailure}{(True, False);}
#'   \item{ValveActivation}{(True, False);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseNaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Leoni, L., & De Carlo, F. (2023). Integration of fuzzy reliability analysis and consequence simulation to conduct risk assessment. Journal of Loss Prevention in the Process Industries, 83, 105081.
"simulation"
