#' curacao Bayesian Networks
#'
#'
#' Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to determine land use suitability and potential conflicts for emerging land uses (Conservation BN). The probabilities were given in the referenced paper (input nodes are given a uniform distribution). The vertices are:
#' \describe{
#' \item{CulturalSiteProximity}{(low, med, high);}
#' \item{FloraRichness}{(low, med, high);}
#' \item{KeySpeciesPresence}{(no, yes);}
#' \item{NeighborhoodConservationValue}{(low, high);}
#' \item{NeighborhoodNaturalLandCover}{(low, med, high);}
#' \item{SpeciesRelatedConservationValue}{(low, high);}
#' \item{SuitabilityForConservation}{(no, yes);}
#' \item{VisitorDemand}{(low, med, high);}
#' \item{WatershedConservationValue}{(low, high);}
#' \item{WSAboveMarineProtectedArea}{(no, yes);}
#' \item{WSIncludesOtherKeyDesignations}{(no, yes);}
#' \item{WSIncludesRAMSARArea}{(no, yes);}
#' \item{WSLandscapeVariability}{(low, med, high);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Steward, R., Chopin, P., & Verburg, P. H. (2024). Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao. Environmental Science & Policy, 156, 103733.
"curacao1"
