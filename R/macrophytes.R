#' macrophytes Bayesian Network
#'
#'
#' Mechanical removal of macrophytes in freshwater ecosystems: Implications for ecosystem structure and function.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network o assess the implications of macrophyte removal on interrelated ecosystem properties across a wide range of environmental conditions. The probabilities were given within the referenced paper (missing probabilities were given a uniform distribution). The vertices are:
#' \describe{
#' \item{BenthicFishForaging}{(Low, Moderate, High);}
#' \item{Disturbance}{(Low, Moderate, High);}
#' \item{Ecosystem}{(Standing floating, Standing submerged, Flowing submerged);}
#' \item{EcosystemServices}{(Flooding, Birds, Nutrient retention, Angling, Swimming, Boating, Hydropower, Irrigation, Invasive species);}
#' \item{EpiphyticInvertebrates}{(Low, Moderate, High);}
#' \item{Flow}{(Low, Moderate, High);}
#' \item{Light}{(Low, High);}
#' \item{NutrientLoading}{(Low, Moderate, High);}
#' \item{Phytoplankton}{(Low, Moderate, High);}
#' \item{PiscivorousFish}{(Present, Absent);}
#' \item{PiscivorousFishPredation}{(Low, High)}
#' \item{PlanktivorousFish}{(Low, High);}
#' \item{PlantRemoval}{(None, Partial, Full;)}
#' \item{Resources}{(Low, Moderate, High);}
#' \item{Zooplankton}{(Low, Moderate, High);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Thiemer, K., Schneider, S. C., & Demars, B. O. (2021). Mechanical removal of macrophytes in freshwater ecosystems: Implications for ecosystem structure and function. Science of the Total Environment, 782, 146671.
"macrophytes"
