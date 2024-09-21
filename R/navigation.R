#' navigation Bayesian Network
#'
#' Safety analysis of RNP approach procedure using fusion of FRAM model and Bayesian belief network.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to demonstrate the existing variability in functions that are part of the complex navigation system. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ToAcquireGPSsignal}{(Accurate, Acceptable, Inaccurate);}
#'   \item{ToCheckAircraftPositionExecutingRNPProcedure}{(Accurate, Acceptable, Inaccurate);}
#'   \item{ToKeepAircraftOnProgrammedRoute}{(Accurate, Acceptable, Inaccurate);}
#'   \item{ToShowAircraftPositionBasedOnGPSSignal}{(Accurate, Acceptable, Inaccurate);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'@keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Oliveira, D., Moraes, A., Junior, M. C., & Marini-Pereira, L. (2023). Safety analysis of RNP approach procedure using fusion of FRAM model and Bayesian belief network. The Journal of Navigation, 76(2-3), 286-315.
"navigation"
