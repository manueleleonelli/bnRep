#' megacities Bayesian Network
#'
#' Air pollution risk assessment related to fossil fuel-driven vehicles in megacities in China by employing the Bayesian network coupled with the fault tree method.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to quantitatively assess the risk factors of excess vehicle emissions and their impact on air quality for China's typical megacities. Probabilities were given within the referenced paper (the model refers to Beijing in 2014). The vertices are:
#' \describe{
#' \item{X1}{Lack of supervision and policy guide (True, False);}
#' \item{X2}{Excess vehicles (True, False);}
#' \item{X3}{Severe traffic jam (True, False);}
#' \item{X4}{Aging of catalytic unit and combustor (True, False);}
#' \item{X5}{Vehicle desing defect (True, False);}
#' \item{X6}{Examination defect (True, False);}
#' \item{X7}{Non-strict supervision (True, False);}
#' \item{X8}{Oil refinery capability defect (True, False);}
#' \item{X9}{Market demand (True, False);}
#' \item{X10}{Excess heavy trucks (True, False);}
#' \item{X11}{Excess yellow label cars (True, False);}
#' \item{M1}{Consumption of unqualified oil (True, False);}
#' \item{M2}{Bad traffic situation (True, False);}
#' \item{M3}{Emission by vehicles with defects (True, False);}
#' \item{M4}{Severe emission of high pollution vehicles (True, False);}
#' \item{M5}{Production of inferior oil (True, False);}
#' \item{M6}{Excess high pollution vehicles using (True, False);}
#' \item{ExcessVehicleEmission}{(True, False);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Li, H., Huang, W., Qian, Y., & Klemes, J. J. (2023). Air pollution risk assessment related to fossil fuel-driven vehicles in megacities in China by employing the Bayesian network coupled with the Fault Tree method. Journal of Cleaner Production, 383, 135458.
"megacities"
