#' dustexplosion Bayesian Network
#'
#' Scenario derivation and consequence evaluation of dust explosion accident based on dynamic Bayesian network.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the accurate solution of scenario state probability. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{AccidentDoNotOccur}{(True, False);}
#'   \item{AccidentUnderControl}{(True, False);}
#'   \item{BlastWavesThroughPipes}{(True, False);}
#'   \item{BuildingDamage}{(I, II, III, IV);}
#'   \item{Casualties}{(I, II, III, IV);}
#'   \item{CombustibleDustAccumulates}{(True, False);}
#'   \item{DirectEconomicLosses}{(I, II, III, IV);}
#'   \item{DustAccumulationUnderControl}{(True, False);}
#'   \item{DustCloudDisappearance}{(True, False);}
#'   \item{DustExplosionIntensityCoefficient}{(I, II, III, IV, V);}
#'   \item{EndOfRescue}{(True, False);}
#'   \item{EnvironmentalImpact}{(I, II, III, IV);}
#'   \item{EquipmentDamage}{(I, II, III, IV);}
#'   \item{ExplosionPreventionMeasures}{(True, False);}
#'   \item{ExtinctionOfSpark}{(True, False);}
#'   \item{IgnitingTheDustCloud}{(True, False);}
#'   \item{InitiateEmergencyResponse}{(True, False);}
#'   \item{Misoperation}{(True, False);}
#'   \item{NoExplosionControlMeasures}{(True, False);}
#'   \item{OpenFireExtinguished}{(True, False);}
#'   \item{PreventFurtherExpansion}{(True, False);}
#'   \item{RestrictedSpace}{(True, False);}
#'   \item{SparkDetectorExtinguishSparks}{(True, False);}
#'   \item{SparkOccurence}{(True, False);}
#'   \item{StrengthenDustControl}{(True, False);}
#'   \item{TriggerSecondaryExplosion}{(True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Pang, L., Zhang, M., Yang, K., & Sun, S. (2023). Scenario derivation and consequence evaluation of dust explosion accident based on dynamic Bayesian network. Journal of Loss Prevention in the Process Industries, 83, 105055.
"dustexplosion"
