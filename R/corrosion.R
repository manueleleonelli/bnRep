#' corrosion Bayesian Network
#'
#' Dynamic Bayesian network model to study under-deposit corrosion.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to understand different risk factors and their interdependencies in under-deposit corrosion and how the interaction of these risk factors leads to asset failure due to under-deposit corrosion. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{BurstPressure}{(High, Low);}
#'   \item{Chloride}{(High, Moderate, Low);}
#'   \item{DefectDepth}{(Yes, No);}
#'   \item{DefectLength}{(Yes, No);}
#'   \item{FlowVelocity}{(High, Moderate, Low);}
#'   \item{InorganicDeposits}{(Absent, Present);}
#'   \item{MEG}{(Absent, Present);}
#'   \item{MixedDeposits}{(Absent, Present);}
#'   \item{OD}{(High, Low);}
#'   \item{OperatingPressure}{(High, Moderate, Low);}
#'   \item{OperatingTemperature}{(High, Moderate, Low);}
#'   \item{OrganicDeposits}{(Absent, Present);}
#'   \item{PartialPressureCO2}{(High, Moderate, Low);}
#'   \item{pH}{(Acid, Neutral, Basic);}
#'   \item{PipeFailure}{(Yes, No);}
#'   \item{ShearingForce}{(High, Moderate, Low);}
#'   \item{SolidDeposits}{(High, Moderate, Low);}
#'   \item{SteelGrade}{(High, Low);}
#'   \item{SuspendedDeposits}{(High, Moderate, Low);}
#'   \item{UDCCorrRate}{(High, Moderate, Low);}
#'   \item{UnderDepositGalvanicCell}{(Poor, Fair, Good, Excellent);}
#'   \item{WallThicknessLoss}{(Yes, No).}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Dao, U., Sajid, Z., Khan, F., & Zhang, Y. (2023). Dynamic Bayesian network model to study under-deposit corrosion. Reliability Engineering & System Safety, 237, 109370.
"corrosion"
