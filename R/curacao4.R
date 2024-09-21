#' curacao Bayesian Networks
#'
#'
#' Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to determine land use suitability and potential conflicts for emerging land uses (Conventional agriculture BN). The probabilities were given in the referenced paper (input nodes are given a uniform distribution). The vertices are:
#' \describe{
#' \item{AgriculturalDensity}{(low, med, high);}
#' \item{AllRoadAccess}{(no, yes);}
#' \item{BuiltUpDensity}{(low, med, high);}
#' \item{CoUserInteractionConstraints}{(low, high);}
#' \item{EnvironmentalConstraints}{(yes, no);}
#' \item{Geology}{(colluvial clay, diabase or other, limestone bare rock);}
#' \item{GroundwaterDepth}{(less than 25m, between 25 and 60m, over 60m);}
#' \item{InfrastructureConstraints}{(low, high);}
#' \item{ProductivityConstraints}{(low, high);}
#' \item{SiteConstraints}{(low, high);}
#' \item{Slope}{(flat, moderate, steep);}
#' \item{SuitabilityConventionalAgriculture}{(no, yes);}
#' \item{UtilitiesAccess}{(no, planned, yes);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Steward, R., Chopin, P., & Verburg, P. H. (2024). Supporting spatial planning with a novel method based on participatory Bayesian networks: An application in Curacao. Environmental Science & Policy, 156, 103733.
"curacao4"
