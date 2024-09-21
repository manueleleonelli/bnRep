#' rockquality Bayesian Network
#'
#' A probability prediction method for the classification of surrounding rock quality of tunnels with incomplete data using Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network  to predict the probability for the classification of surrounding rock quality of tunnel with incomplete data. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{BQ}{Basic quality of rock mass  (Num1, Num2, Num3, Num4, Num5);}
#'   \item{Groundwater}{(DryWet, MoistDripping, RainlikeDripping, TubularGushing);}
#'   \item{InSituStress}{(Low, Medium, High, ExtremelyHigh);}
#'   \item{RockHardness}{(Hard, SlightlyHard, SlightlySoft, Soft, ExtremelySoft);}
#'   \item{RockMassIntegrity}{(Complete, SlightlyComplete, SlightlyBroken, Broken, ExtremelyBroken);}
#'   \item{RockMassStructure}{(State1, State2, State3, State4, State5);}
#'   \item{RockQuality}{(I, II, III, IV, V);}
#'   \item{StructuralPlaneIntegrity}{(Good, Ordinary, Bad, VeryBad);}
#'   \item{WeatheringDegree}{(Fresh, Slight, Medium, Severe, Extreme).}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'@keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Ma, J., Li, T., Li, X., Zhou, S., Ma, C., Wei, D., & Dai, K. (2022). A probability prediction method for the classification of surrounding rock quality of tunnels with incomplete data using Bayesian networks. Scientific Reports, 12(1), 19846.
"rockquality"
