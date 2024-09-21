#' coral Bayesian Networks
#'
#'
#' Assessing coral reef condition indicators for local and global stressors using Bayesian networks.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the evaluation of threats to reef condition globally (population bleaching). The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{CoralPopulationBleached}{(Less than 0, 0-0.086, 0.086-0.265, 0.265-0.507, More than 0.507);}
#' \item{AcidificationThreat}{(Low, High);}
#' \item{CoastalDevelopmentThreat}{(Low, Medium, High);}
#' \item{ManagementEffectiveness}{(Ineffective, Partial, Effective);}
#' \item{MarineBasedPollutionThreat}{(Low, Medium, High);}
#' \item{Overfishing}{(Low, Medium, High);}
#' \item{ThermalStress}{(None, Severe);}
#' \item{WatershedBasedPollutionThreat}{(Low, Medium, High);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords TAN
#' @importClassesFrom bnlearn bn.fit
#' @references Carriger, J. F., Yee, S. H., & Fisher, W. S. (2021). Assessing coral reef condition indicators for local and global stressors using Bayesian networks. Integrated Environmental Assessment and Management, 17(1), 165-187.
"coral5"
