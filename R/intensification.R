#' intensification Bayesian Network
#'
#' Modeling intensification decisions in the Kilombero Valley floodplain: A Bayesian belief network approach.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to or identifying determinants of intensification and their interrelationships. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{AccessToCredi}{(No, Yes);}
#'   \item{AgeofHHHead}{(25-35, 35-45, 45-55, >55);}
#'   \item{Choice_Of_Intensification_Strategy}{(ApplyFertilizer, ApplyImprovedSeed, CropMultipleTimes, None, UseIrrigation, UseIrrigationAndFertilizerApplication);}
#'   \item{CommercializationIndex}{(<30%, 30-60%, >60%);}
#'   \item{CropChoice}{(Maize, Rice, RiceAndMaize, RiceMaizeAndVegit, Vegitables, VegitAndMaize, VegitAndRice);}
#'   \item{DistanceToBigMarket}{(<15km, 15-30km, >30km);}
#'   \item{ExpectedPriceOfMaize}{(0, 0-800, 800-861.111, 861.111-1111.11);}
#'   \item{ExpectedPriceOfRice}{(0 to 1000, 1000 to 1200, 1200 to 1500, 1500 to 1900);}
#'   \item{FarmerType}{(AgroPastoralist, Diversifier, Subsistence);}
#'   \item{Income}{(0-160, 160-280, 280-600, 600-15800);}
#'   \item{LabourInManDays}{(<120, 120-220, 220-400, >400);}
#'   \item{PercentOfNonFarmIncome}{(None, <30%, >30%);}
#'   \item{ShareOfHiredLabour}{(<10%, 10-60%, >60%);}
#'   \item{SizeOfCropLand}{(<3Ha, 3-6Ha, 6-9Ha, >9Ha);}
#'   \item{SizeOfHousehold}{(<4, 4-7, >7);}
#'   \item{TopographicWetnessIndex}{(14-18, 18-23, 23-32);}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Gebrekidan, B. H., Heckelei, T., & Rasch, S. (2023). Modeling intensification decisions in the Kilombero Valley floodplain: A Bayesian belief network approach. Agricultural Economics, 54(1), 23-43.
"intensification"
