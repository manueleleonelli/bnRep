#' vessel Bayesian Networks
#'
#' Analysis of fishing vessel accidents with Bayesian network and Chi-square methods.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to understand the occurrence of accidents in fishing vessels and to estimate the occurrence of accidents in variable conditions (Sinking, Fig. 1). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{CarryingLoadAboveTransportLimits}{(Yes, No);}
#' \item{DesignDefect}{(Yes, No);}
#' \item{HuntingEquipmentOverload}{(Yes, No);}
#' \item{LossOfBuoyancy}{(Yes, No);}
#' \item{LossOfStability}{(Yes, No);}
#' \item{LossOfWaterTightness}{(Present, Absent);}
#' \item{Overload}{(Yes, No);}
#' \item{PlannedMaintenance}{(Completed, Uncompleted);}
#' \item{Sinking}{(Yes, No);}
#' \item{UnstableLoading}{(Yes, No);}
#' \item{UsedHuntingEquipment}{(Proper, Improper);}
#'  \item{VesselAge}{(Old, New);}
#'   \item{VesselPipelines}{(Corroded, Normal);}
#'    \item{VesselStructure}{(Worn, Normal);}
#'     \item{WaterIntake}{(Yes, No);}
#'      \item{WeatherAndSeaConditions}{(Bad, Good);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ugurlu, F., Yildiz, S., Boran, M., Ugurlu, O., & Wang, J. (2020). Analysis of fishing vessel accidents with Bayesian network and Chi-square methods. Ocean Engineering, 198, 106956.
"vessel1"
