#' accidents Bayesian Network
#'
#' Analysis of maritime transport accidents using Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to provide transport authorities and ship owners with useful insights for maritime accident prevention. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{AccidentType}{(Collision, Grounding, Flooding, Fire/Explosion, Capsize, Contact/Crush, Sinking, Overboard, Others);}
#' \item{EquipmentDevice}{(Devices and equipment on board operate correctly, Devices and equipment not fully utilised or operated correctly);}
#' \item{ErgonomicDesign}{(Ergonomic friendly, Ergonomic impact of innovative bridge design);}
#' \item{FairwayTraffic}{(Good, Poor);}
#' \item{GrossTonnage}{(Less than 300, 300-1000, More than 1000, NA);}
#' \item{HullType}{(Steel, Wood, Aluminium, Others);}
#' \item{Information}{(Effective and updated information provided, Insufficient or lack of updated information);}
#' \item{Length}{(Less than 100, More than 100, NA);}
#' \item{SeaCondition}{(Good, Poor);}
#' \item{ShipAge}{(0,5, 6-10, 11-15, 16-20, More than 20, NA);}
#' \item{ShipOperation}{(Towing, Loading/Unloading, Pilotage, Manoeuvring, Fishing, At anchor, On passage, Others);}
#' \item{ShipSpeed}{(Normal, Fast);}
#' \item{ShipType}{(Passenger vessel, Tug, Barge, Fishing vessel, Container ship, Bulk carrier, RORO, Tanker or chemical ship, Cargo ship, Others);}
#' \item{TimeOfDay}{(7am to 7pm, Other);}
#' \item{VesselCondition}{(Good, Poor);}
#' \item{VoyageSegment}{(In port, Departure, Arrival, Mid-water, Transit, Others);}
#' \item{WeatherCondition}{(Good, Poor);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Fan, S., Yang, Z., Blanco-Davis, E., Zhang, J., & Yan, X. (2020). Analysis of maritime transport accidents using Bayesian networks. Proceedings of the Institution of Mechanical Engineers, Part O: Journal of Risk and Reliability, 234(3), 439-454.
"accidents"
