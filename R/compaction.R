#' compaction Bayesian Network
#'
#'
#' A Bayesian approach toward the use of qualitative information to inform on-farm decision making: The example of soil compaction.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network  to highlight the financial consequences of failing to adopt controlled traffic farming management for a particular agricultural enterprise. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{ClayContent}{(Very Low, Low, Medium, High, Very High);}
#' \item{CompactionRisk}{(Low, Medium, High);}
#' \item{CompactionVulnerability}{(Low, Medium, High);}
#' \item{InherentSusceptibility}{(Low, Medium, High);}
#' \item{SoilWetness}{(Dry, Moist, Wet);}
#' \item{TotalExposure}{(Low, Medium, High);}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Roberton, S. D., Lobsey, C. R., & Bennett, J. M. (2021). A Bayesian approach toward the use of qualitative information to inform on-farm decision making: the example of soil compaction. Geoderma, 382, 114705.
"compaction"
