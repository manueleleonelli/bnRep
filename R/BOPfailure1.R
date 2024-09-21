#' BOPfailure Bayesian Networks
#'
#' Providing a comprehensive approach to oil well blowout risk assessment.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for risk assessment of oil well blowout (Fig. 5 of the referenced paper). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{BOP_System_Failure}{(F, S);}
#'   \item{X1}{BOP stack failure (F, S);}
#'   \item{X2}{Valve failure (F, S);}
#'   \item{X3}{BOP control system failure (F, S);}
#'   \item{X4}{Line failure (F, S);}
#'   \item{X5}{Choke manifold failure (F, S);}
#'   \item{X6}{Annular preventer (F, S);}
#'   \item{X7}{Ram preventer (F, S);}
#'   \item{X8}{Kill valve fail (F, S);}
#'   \item{X9}{Choke valve fail (F, S);}
#'   \item{X10}{Choke line fail (F, S);}
#'   \item{X11}{Kill line fail (F, S);}
#'   \item{X12}{Upper annular preventer fails (F, S);}
#'   \item{X13}{Lower annular preventer fails (F, S);}
#'   \item{X14}{Upper pipe ram fail (F, S);}
#'   \item{X15}{Middle pipe ram fail (F, S);}
#'   \item{X16}{Lower pipe ram failure (F, S);}
#'   \item{X17}{Blind shear ram failure (F, S);}
#'   \item{X18}{Power system failure (F, S);}
#'   \item{X19}{4Way valve failure (F, S);}
#'   \item{X20}{Remote panel valve failure (F, S);}
#'   \item{X21}{Signal line failure (F, S);}
#'   \item{X22}{Accumulator line failure (F, S);}
#'   \item{X23}{Air-driven pump failure (F, S);}
#'   \item{X24}{Electric pump failure (F, S);}
#'   \item{X25}{Choke valve failure (F, S);}
#'   \item{X26}{Hydraulic choke valve failure (F, S);}
#'   \item{X27}{Gate valve failure (F, S);}
#'   \item{X28}{Choke remote panel failure (F, S);}
#'   \item{X29}{Hydraulic choke valve failure (F, S);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Satiarvand, M., Orak, N., Varshosaz, K., Hassan, E. M., & Cheraghi, M. (2023). Providing a comprehensive approach to oil well blowout risk assessment. Plos One, 18(12), e0296086.
"BOPfailure1"
