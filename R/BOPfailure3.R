#' BOPfailure Bayesian Networks
#'
#' Providing a comprehensive approach to oil well blowout risk assessment.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for risk assessment of oil well blowout (Fig. 4 of the referenced paper). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Kick_Detection_Failure}{(F, S);}
#'   \item{X1}{Mud volume/ flow change (F, S);}
#'   \item{X2}{Circulation pressure change (F, S);}
#'   \item{X3}{Gas-cut (F, S);}
#'   \item{X4}{Mud property change (F, S);}
#'   \item{X5}{Rate of Penetration (ROP) change Failure (F, S);}
#'   \item{X6}{Mud tank (F, S);}
#'   \item{X7}{Flow Failure (F, S);}
#'   \item{X8}{Pump Failure (F, S);}
#'   \item{X9}{Pump Rate (Stroke Per Minute: SPM) (F, S);}
#'   \item{X10}{Mud density (F, S);}
#'   \item{X11}{Mud conductivity (F, S);}
#'   \item{X12}{Failure of tank level indicator (float system) (F, S);}
#'   \item{X13}{Failure of an operator to notice the tank level change (F, S);}
#'   \item{X14}{Failure of flow meter (F, S);}
#'   \item{X15}{Failure of an operator to notice the flow meter (F, S);}
#'   \item{X16}{Failure of pressure gage (F, S);}
#'   \item{X17}{Failure of an operator to notice a change in SPM (F, S);}
#'   \item{X18}{Failure of stroke meter (F, S);}
#'   \item{X19}{Failure of an operator to notice a change in P.R (F, S);}
#'   \item{X20}{Failure of gas detector (F, S);}
#'   \item{X21}{Failure of an operator to notice the gauge (F, S);}
#'   \item{X22}{Failure of the density meter (F, S);}
#'   \item{X23}{Failure of an operator to the density meter (F, S);}
#'   \item{X24}{Failure of resistivity (F, S);}
#'   \item{X25}{Failure of an operator to notice the conductivity change (F, S);}
#'   \item{X26}{Failure of the ROP indicator (F, S);}
#'   \item{X27}{Failure of the ROP change (F, S);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Satiarvand, M., Orak, N., Varshosaz, K., Hassan, E. M., & Cheraghi, M. (2023). Providing a comprehensive approach to oil well blowout risk assessment. Plos One, 18(12), e0296086.
"BOPfailure3"
