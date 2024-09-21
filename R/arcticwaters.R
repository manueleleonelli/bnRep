#' arcticwaters Bayesian Network
#'
#' An object-oriented Bayesian network model for the quantitative risk assessment of navigational accidents in ice-covered Arctic waters.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the quantitative risk assessment of multiple navigational accidents in ice-covered Arctic waters. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{AidNavigationFailure}{(No, Yes);}
#'   \item{AirTemperature}{(<0 degrees, >0 degrees);}
#'   \item{C_BesettingInIce}{(Significant, Severe, Catastrophic);}
#'   \item{C_Collision}{(Significant, Severe, Catastrophic);}
#'   \item{C_Grounding}{(Significant, Severe, Catastrophic);}
#'   \item{C_ShipIceCollision}{(Significant, Severe, Catastrophic);}
#'   \item{ChannelDepth}{(Inadequate, Adequate);}
#'   \item{ChartUpdating}{(No, Yes);}
#'   \item{CommunicationEquipmentFailure}{(No, Yes);}
#'   \item{DriftIce}{(No, Yes);}
#'   \item{EnvironmentalObstacles}{(No, Yes);}
#'   \item{Fatigued}{(No, Yes);}
#'   \item{Fog}{(No, Yes);}
#'   \item{GrossTonnage}{((0,500], (500,3000], (3000,10000], >10000);}
#'   \item{IceConcentration}{(<3/10, 4/10-6/10, >7/10);}
#'   \item{IceCondition}{(Poor, Good);}
#'   \item{IceStrength}{(Low, Medium, High);}
#'   \item{IceThickness}{(<0.5m, >0.5m);}
#'   \item{IceType}{(Thin Ice, Medium Ice, Old Ice);}
#'   \item{InadequateKnowledge}{(No, Yes);}
#'   \item{JudgmentFailure}{(No, Yes);}
#'   \item{LackCommunication}{(No, Yes);}
#'   \item{LackSafetyMeasures}{(No, Yes);}
#'   \item{LackSituationalAwareness}{(No, Yes);}
#'   \item{MechanicalEquipmentFailure}{(No, Yes);}
#'   \item{NavigatorFailure}{(No, Yes);}
#'   \item{Negligence}{(No, Yes);}
#'   \item{P_BesettingInIce}{(No, Yes);}
#'   \item{P_Collision}{(No, Yes);}
#'   \item{P_Grounding}{(No, Yes);}
#'   \item{P_ShipIceCollision}{(No, Yes);}
#'   \item{PowerFailure}{(No, Yes);}
#'   \item{PropellerFailure}{(No, Yes);}
#'   \item{RadarFailure}{(No, Yes);}
#'   \item{Rain}{(No, Yes);}
#'   \item{SeaCurrent}{(No, Yes);}
#'   \item{SeaTemperature}{(<0 degrees, >0 degrees);}
#'   \item{ShipType}{(Oil Tanker, General Cargo Ship, Passenger Ship, Icebreaker, Others);}
#'   \item{SteeringFailure}{(No, Yes);}
#'   \item{StrongWind}{(No, Yes);}
#'   \item{UnsafeAct}{(No, Yes);}
#'   \item{UnsafeCondition}{(No, Yes);}
#'   \item{UnsafeSpeed}{(No, Yes);}
#'   \item{Visibility}{(Poor, Good);}
#'   \item{WaterwayCondition}{(Poor, Good);}
#'   \item{WeatherCondition}{(Poor, Good);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Fu, S., Zhang, Y., Zhang, M., Han, B., & Wu, Z. (2023). An object-oriented Bayesian network model for the quantitative risk assessment of navigational accidents in ice-covered Arctic waters. Reliability Engineering & System Safety, 238, 109459.
"arcticwaters"
