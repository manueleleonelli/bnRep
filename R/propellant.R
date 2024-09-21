#' propellant Bayesian Network
#'
#' A Bayesian network-based safety assessment method for solid propellant granule-casting molding process.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to assess the safety of the solid propellant granule-casting molding process. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'    \item{AbsorptionAnomaly}{(True, False);}
#'    \item{CalenderingRepellentWaterTimesAnomaly}{(True, False);}
#'    \item{CalenderingRepellingWaterTemperatureAnomaly}{(True, False);}
#'    \item{CalenderingRollDistanceAnomaly}{(True, False);}
#'    \item{CastingAnomaly}{(True, False);}
#'    \item{CastingDifferentialPressureAnomaly}{(True, False);}
#'    \item{CastingTimeAnomaly}{(True, False);}
#'    \item{CatalystGrindingAnomaly}{(True, False);}
#'    \item{CentrifugalRunningTimeAnomaly}{(True, False);}
#'    \item{CirculatingWaterTemperatureAnomaly}{(True, False);}
#'    \item{CirculationWaterTemperatureAnomaly}{(True, False);}
#'    \item{CuringAnomaly}{(True, False);}
#'    \item{CuringTemperatureAnomaly}{(True, False);}
#'    \item{CuringTimeAnomaly}{(True, False);}
#'    \item{CuttingAnomaly}{(True, False);}
#'    \item{DryingOfMedicineGranulesAnomaly}{(True, False);}
#'    \item{DryingRepellentWaterAnomaly}{(True, False);}
#'    \item{DryingRepellingWaterTemperatureAnomaly}{(True, False);}
#'    \item{DryingRepellingWaterTimeAnomaly}{(True, False);}
#'    \item{DryingSolventRemovingAnomaly}{(True, False);}
#'    \item{DryingTemperatureAnomaly}{(True, False);}
#'    \item{DryingTimeAnomaly}{(True, False);}
#'    \item{ExtrusionAnomaly}{(True, False);}
#'    \item{ExtrusionStrengthAnomaly}{(True, False);}
#'    \item{FloodingTimeAnomaly}{(True, False);}
#'    \item{FrequencyOfWaterChangeAnomaly}{(True, False);}
#'    \item{GranuleCastingMoldingAnomaly}{(True, False);}
#'    \item{GrindingTimeAnomaly}{(True, False);}
#'    \item{HoldingPressureAnomaly}{(True, False);}
#'    \item{HoldingTimeAnomaly}{(True, False);}
#'    \item{JacketTemperatureAnomaly}{(True, False);}
#'    \item{KneadingAnomaly}{(True, False);}
#'    \item{KneadingTimeAnomaly}{(True, False);}
#'    \item{LengthSettingValueAnomaly}{(True, False);}
#'    \item{LiquidPreparationAnomaly}{(True, False);}
#'    \item{MedicineGranulesDryingTemperatureAnomaly}{(True, False);}
#'    \item{MedicineGranulesDryingTimeAnomaly}{(True, False);}
#'    \item{PolishAnomaly}{(True, False);}
#'    \item{PolishTimeAnomaly}{(True, False);}
#'    \item{RepellentWaterAnomaly}{(True, False);}
#'    \item{ShineAnomaly}{(True, False);}
#'    \item{ShineTimeAnomaly}{(True, False);}
#'    \item{SolventRemovingAnomaly}{(True, False);}
#'    \item{TemperatureAnomaly}{(True, False);}
#'    \item{VacuumDegreeAnomaly1}{(True, False);}
#'    \item{VacuumDegreeAnomaly2}{(True, False);}
#'    \item{VacuumTimeAnomaly1}{(True, False);}
#'    \item{VacuumTimeAnomaly2}{(True, False);}
#'    \item{WaterAdditionAnomaly}{(True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Bi, Y., Wang, S., Zhang, C., Cong, H., Gao, W., Qu, B., & Li, J. (2023). A bayesian network-based safety assessment method for solid propellant granule-casting molding process. Journal of Loss Prevention in the Process Industries, 83, 105089.
"propellant"
