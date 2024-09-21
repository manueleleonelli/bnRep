#' nuclearwaste Bayesian Network
#'
#' Comprehensiveness of scenarios in the safety assessment of nuclear waste repositories.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to obtain bounds on the probability that the reference safety threshold is violated. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'  \item{BarrierDegradation}{(Fast, Slow);}
#'  \item{ChemicalDegradation}{(Fast, Slow);}
#'  \item{CrackAperture}{(Micro, Macro);}
#'  \item{DiffusionCoefficient}{(Low, High);}
#'  \item{DistributionCoefficient}{(Low, High);}
#'  \item{Earthquake}{(BDBE, Major);}
#'  \item{HydraulicConductivity}{(Low, Medium, High);}
#'  \item{MonolithDegradation}{(Very Fast, Fast, Slow);}
#'  \item{WaterFlux}{(Low, High);}
#'  \item{DoseRate}{(Violated, Not Violated);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Tosoni, E., Salo, A., Govaerts, J., & Zio, E. (2019). Comprehensiveness of scenarios in the safety assessment of nuclear waste repositories. Reliability Engineering & System Safety, 188, 561-573.
"nuclearwaste"
