#' engines Bayesian Network
#'
#'
#' A fuzzy Bayesian network risk assessment model for analyzing the causes of slow-down processes in two-stroke ship main engines.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to assess the factors contributing to the engine's slow-down processes. The probabilities were given in the referenced paper. The vertices are:
#' \describe{
#' \item{H1}{Oil mist high density (yes, no);}
#' \item{H2}{Scavenge air box fire (yes, no);}
#' \item{H3}{Piston cooling oil non flow (yes, no);}
#' \item{H4}{Cylinder lube oil non flow (yes, no);}
#' \item{H5}{Cylinder cooling fresh water low pressure (yes, no);}
#' \item{H6}{Cylinder cooling fresh water high temperature (yes, no);}
#' \item{H7}{Main lube oil low pressure (yes, no);}
#' \item{H8}{Thrust pad high temperature (yes, no);}
#' \item{H9}{Piston cooling oil high temperature (yes, no);}
#' \item{H10}{Exhaust gas high temperature (yes, no);}
#' \item{H11}{Stern tube bearing high temperature (yes, no);}
#' \item{H}{(yes, no);}
#'  }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Bashan, V., Yucesan, M., Gul, M., & Demirel, H. (2024). A fuzzy Bayesian network risk assessment model for analyzing the causes of slow-down processes in two-stroke ship main engines. Ships and Offshore Structures, 19(5), 670-686.
"engines"
