#' curacao Bayesian Networks
#'
#'
#' Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to determine land use suitability and potential conflicts for emerging land uses (Tourism BN). The probabilities were given in the referenced paper (input nodes are given a uniform distribution). The vertices are:
#' \describe{
#' \item{CoastalView}{(no, yes);}
#' \item{DistanceToTourismCore}{(distant, nearby, inside);}
#' \item{ImmediateBeachAccess}{(no, yes);}
#' \item{NaturalAmenities}{(low, high);}
#' \item{NeighborhoodSafetyScore}{(low, medium, high);}
#' \item{ProximityToPOIs}{(far, near, immediate);}
#' \item{ProximityToSouthernCoast}{(far, near, immediate);}
#' \item{RoadsWithin1KM}{(no, yes);}
#' \item{SiteInfrastructure}{(low, high);}
#' \item{SuitabilityForTourism}{(no, yes);}
#' \item{UtilityAccess}{(no, yes);}
#' \item{ViewExtent}{(low, medium, high);}
#' \item{ViewQuality}{(low, high);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Steward, R., Chopin, P., & Verburg, P. H. (2024). Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao. Environmental Science & Policy, 156, 103733.
"curacao2"
