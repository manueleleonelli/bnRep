#' flood Bayesian Network
#'
#' A trade-off between farm production and flood alleviation using land use tillage preferences as a natural flood management (NFM) strategy.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to analyse land use tillage practices for flood management, considering climate, soilscape, slope, and farming systems. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Bulk_Density}{(0 to 0.25, 0.25 to 0.5, 0.5 to 0.75, 0.75 to 1, 1 to 1.25, 1.25 to 1.5);}
#'   \item{Daily_Runoff}{(0 to 18, 18 to 36, 36 to 54, 54 to 72);}
#'   \item{Erosion}{(High, Low);}
#'   \item{Farm_Yield}{(Positive, Negative);}
#'   \item{Flood_Alleviation}{(Positive, Negative);}
#'   \item{Land_Use}{(Arable, Arable With Grass, Grassland, Woodland);}
#'   \item{Nutrients}{(High, Low);}
#'   \item{Product_Weight}{(0 to 2550, 2550 to 5100, 5100 to 7650, 7650 to 10200);}
#'   \item{Rainfall}{(0 to 0.4, 0.4 to 0.8, 0.8 to 1.2, 1.2 to 1.6, 1.6 to 2, 2 to 2.4, 2.4 to 2.8);}
#'   \item{Runoff}{(0 to 7.7, 7.7 to 15.4);}
#'   \item{Senesced}{(0 to 77.5, 77.5 to 155, 155 to 232.5, 232.5 to 310);}
#'   \item{Slope}{(Flat, Sloped);}
#'   \item{SOMC}{(0 to 1.833e5, 1.833e5 to 3.666e5, 3.666e5 to 5.499e5, 5.499e5 to 7.322e5, 7.322e5 to 9.165e5);}
#'   \item{Temperature}{(7.5 to 8.54, 8.54 to 9.06, 9.06 to 9.58, 9.58 to 10.1, 10.1 to 10.62);}
#'   \item{Texture}{(Loamy, Clay);}
#'   \item{Tillage}{(Conservational, Conventional);}
#'   \item{VESS}{(Fragile, Intact, Firm, Compact, Very Compact);}
#'   \item{Water}{(0 to 159, 159 to 318, 318 to 477, 477 to 636);}
#'   \item{Water_Stress}{(0 to 3.66, 3.66 to 7.32, 7.32 to 10.98, 10.98 to 14.64);}
#'   \item{Weeds}{(Present, Absent);}
#'   \item{Weight}{(0 to 5000, 5000 to 10000, 10000 to 15000, 15000 to 20000, 20000 to 25000);}
#'   \item{Yield}{(Decrease, Increase);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ali, Q. (2023). A trade-off between farm production and flood alleviation using land use tillage preferences as a natural flood management (NFM) strategy. Smart Agricultural Technology, 6, 100361.
"flood"
