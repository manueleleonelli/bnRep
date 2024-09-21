#' soillead Bayesian Network
#'
#'
#' Lead distribution in urban soil in a medium-sized city: household-scale analysis.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to classify residential parcels by risk of exceeding residential gardening standards. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{SoilPbAbove100ppm}{(0,1);}
#' \item{BlackPercentage}{(Below 0.355, 0.355-0.727, Above 0.727);}
#' \item{DistanceToMajorRoad}{(Below 500, 500-1000, Above 1000);}
#' \item{HouseAge}{(Below 4.2, 4.2-7.9, Above 7.9);}
#' \item{HouseValue}{(Below 1.292, 1.292-2.859, Above 2.859);}
#' \item{MedianHouseholdIncome}{(Below 0.255, 0.255-0.470, Above 0.470);}
#' \item{SoilClay}{(Below 26.14, 26.14-33.125, Above 33.125);}
#' \item{SoilPH}{(Below 5.316, 5.316-5.974, Above 5.974);}
#' \item{SoilSamplingLocation}{(Dripline, Streetside, Yard);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Obeng-Gyasi, E., Roostaei, J., & Gibson, J. M. (2021). Lead distribution in urban soil in a medium-sized city: household-scale analysis. Environmental Science & Technology, 55(6), 3696-3705.
"soillead"
