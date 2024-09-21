#' lidar Bayesian Network
#'
#' Decision support using SAR and LiDAR machine learning target classification and Bayesian belief networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to compute posterior event probabilities for sample analyst scenarios. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ActivityIndustrialArea}{(Routine, Unusual);}
#'   \item{ActivitySiteA}{(Routine, Unusual);}
#'   \item{ActivitySiteB}{(Routine, Unusual);}
#'   \item{ThunderstormsA}{(High, Low);}
#'   \item{ThunderstormsB}{(High, Low);}
#'   \item{TrafficUnusualEvent}{(True, False);}
#'   \item{UsualRushHourTraffic}{(True, False);}
#'   \item{VehicleDensityA}{(High, Low);}
#'   \item{VehicleDensityB}{(High, Low);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Bogart, C., Solorzano, L., & Lam, S. (2022, May). Decision support using SAR and LiDAR machine learning target classification and Bayesian belief networks. In Geospatial Informatics XII (Vol. 12099, pp. 28-36). SPIE.
"lidar"
