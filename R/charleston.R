#' charleston Bayesian Network
#'
#'
#' Parameterization framework and quantiﬁcation approach for integrated risk and resilience assessments.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for risk and resilience assessment of climate change impacts within the Charleston Harbor Watershed of South Carolina (Region 3). The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{AbilityToEvacuate}{(Zero, Low, Medium, High);}
#' \item{ActiveHurricane}{(No, Yes);}
#' \item{DrowningMortality}{(Zero, Low, Medium, High);}
#' \item{EvacuationRequired}{(Zero, Low, Medium, High);}
#' \item{ExtremePrecipitation}{(Zero, Low, Medium, High);}
#' \item{ExtremePrecipitationNonHurricane}{(Zero, Low, Medium, High);}
#' \item{FloodExposure}{(Zero, Low, Medium, High);}
#' \item{FloodHazard}{(Zero, Low, Medium, High);}
#' \item{FloodPreparedness}{(No, Yes);}
#' \item{HurricaneCategory}{(Zero, Low, Medium, High);}
#' \item{NuisanceFloodExposure}{(Zero, Low, Medium, High);}
#' \item{NuisanceFloodFrequency}{(Zero, Low, Medium, High);}
#' \item{NuisanceFloodHazard}{(Zero, Low, Medium, High);}
#' \item{PersonalVehicle}{(No, Yes);}
#' \item{PhysicalFloodProtection}{(No, Yes);}
#' \item{PopulationLocation}{(Zero, Low, Medium, High);}
#' \item{RegionWithCoastline}{(No, Yes);}
#' \item{RiskToHumanHealth}{(Zero, Low, Medium, High);}
#' \item{RoadwayAccessibility}{(Zero, Low, Medium, High);}
#' \item{RoadwayLocation}{(Zero, Low, Medium, High);}
#' \item{SeaLevelRise}{(Zero, Low, Medium, High);}
#' \item{StormSurge}{(Zero, Low, Medium, High);}
#' \item{StormSurgeProtection}{(No, Yes);}
#' \item{TideLevelAboveHighTide}{(Zero, Low, Medium, High);}
#'  }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Cains, M. G., & Henshel, D. (2021). Parameterization framework and quantification approach for integrated risk and resilience assessments. Integrated Environmental Assessment and Management, 17(1), 131-146.
"charleston"
