#' curacao Bayesian Networks
#'
#'
#' Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to determine land use suitability and potential conflicts for emerging land uses (Urban fabric BN). The probabilities were given in the referenced paper (input nodes are given a uniform distribution). The vertices are:
#' \describe{
#' \item{AccessToPublicTransportation}{(no, yes);}
#' \item{AirNuisance}{(no, yes);}
#' \item{CoastalView}{(no, yes);}
#' \item{LuxuryAmenities}{(low, high);}
#' \item{NearbySupportingFunctions}{(low, medium, high);}
#' \item{NeighborhoodFactors}{(low, high);}
#' \item{NeighborhoodSafetyScore}{(low, medium, high);}
#' \item{NoiseNuisance}{(no, yes);}
#' \item{PollutedSoils}{(no, yes);}
#' \item{PrimaryRoads}{(no, yes);}
#' \item{ProximityToBeach}{(no, yes);}
#' \item{ProximityToCoast}{(far, near, immediate);}
#' \item{SiteFavorability}{(low, high);}
#' \item{SlopeLimited}{(no, yes);}
#' \item{SmallRoads}{(no, yes);}
#' \item{SuitabilityForUrbanFabric}{(no, yes);}
#' \item{TransportationAccess}{(low, high);}
#' \item{ViewExtent}{(low, medium, high);}
#' \item{ViewQuality}{(low, high);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Steward, R., Chopin, P., & Verburg, P. H. (2024). Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao. Environmental Science & Policy, 156, 103733.
"curacao3"
