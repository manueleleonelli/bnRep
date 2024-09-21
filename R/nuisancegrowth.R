#' nuisancegrowth Bayesian Network
#'
#' Drivers of perceived nuisance growth by aquatic plants.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network approach to integrate the perception of nuisance with the consequences of plant removal. Probabilities were given within the referenced paper (missing entries were given uniform probabilities). The vertices are:
#' \describe{
#'   \item{Activity}{(Swimming, Boating, Angling, Biodiversity, Aesthetics, Bird-watching);}
#'    \item{BenthicFishForaging}{(Low, Moderate, High);}
#'     \item{Disturbance}{(Low, Moderate, High);}
#'      \item{Ecosystem}{(Standing floating, Standing submerged, Flowing submerged);}
#'       \item{EpiphyticInvertebrates}{(Low, Medium, High);}
#'        \item{Flow}{(Low, Medium, High);}
#'         \item{Light}{(Low, High);}
#'   \item{MacrophyteGrowth}{(Very low, Low, Medium, High, Very high);}
#'    \item{MacrophyteRemoval}{(None, Partial Full);}
#'     \item{MacrophyteSpecies}{(Elodea nuttallii, Pontederia crassipes, Ludwigia, Juncus bulbosus, Sagittaria sagittifolia);}
#'      \item{NutrientLoading}{(Low, Moderate, High);}
#'       \item{Perception}{(Nuisance, No nuisance);}
#'        \item{Phytoplankton}{(Low, Moderate, High);}
#'         \item{PiscivorousFish}{(Absent, Present);}
#'         \item{PiscivorousFishPredation}{(Low, High);}
#'         \item{PlanktivorousFish}{(Low, High);}
#'         \item{Resources}{(Low, Moderate, High);}
#'         \item{RespondentType}{(Resident, Visitor);}
#'         \item{Zooplankton}{(Low, Moderate, High);}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Thiemer, K., Immerzeel, B., Schneider, S., Sebola, K., Coetzee, J., Baldo, M., ... & Vermaat, J. E. (2023). Drivers of perceived nuisance growth by aquatic plants. Environmental Management, 71(5), 1024-1036.
"nuisancegrowth"
