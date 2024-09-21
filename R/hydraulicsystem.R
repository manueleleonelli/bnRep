#' hydraulicsystem Bayesian Network
#'
#' Analysis and assessment of risks to public safety from unmanned aerial vehicles using fault tree analysis and Bayesian network.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to to analyze time series hydraulic system operation reliability. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{YellowHydraulicSystem}{(True, False);}
#'   \item{GreenHydraulicSystem}{(True, False);}
#'   \item{BlueHydraulicSystem}{(True, False);}
#'   \item{HydraulicSystem}{(True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords  ReverseNaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Pan, W. H., Feng, Y. W., Liu, J., & Lu, C. (2023). Operation reliability monitoring towards fault diagnosis of airplane hydraulic system using quick access recorder flight data. Measurement Science and Technology, 34(5), 055111.
"hydraulicsystem"
