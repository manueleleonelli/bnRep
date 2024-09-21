#' projectmanagement Bayesian Network
#'
#' Project Complexity and Risk Management (ProCRiM): Towards modelling project complexity driven risk paths in construction projects.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to identify critical risks and selecting optimal risk mitigation strategies at the commencement stage of a project. Probabilities were given within the referenced paper (uniform priors were given to root nodes). The vertices are:
#' \describe{
#'   \item{C1}{Lack of experience with the involved team (YES, NO);}
#'   \item{C2}{Use of innovative technology (YES, NO);}
#'   \item{C3}{Lack of experience with technology (YES, NO);}
#'   \item{C4}{Strict quality requirements (YES, NO);}
#'   \item{C5}{Multiple contracts (YES, NO);}
#'   \item{C6}{Multiple stakeholders and variety of perspectives (YES, NO);}
#'   \item{C7}{Political instability (YES, NO);}
#'   \item{C8}{Susceptibility to natural disasters (YES, NO);}
#'   \item{R1}{Contactor's lack of experience (YES, NO);}
#'   \item{R2}{Suppliers' default (YES, NO);}
#'   \item{R3}{Delays in design and regulatory approvals (YES, NO);}
#'   \item{R4}{Contract related problems (YES, NO);}
#'   \item{R5}{Economic issues in country (YES, NO);}
#'   \item{R6}{Major design changes (YES, NO);}
#'   \item{R7}{Delays in obtaining raw material (YES, NO);}
#'   \item{R8}{Non-availability of local resources (YES, NO);}
#'   \item{R9}{Unexpected events (YES, NO);}
#'   \item{R10}{Increase in raw material price (YES, NO);}
#'   \item{R11}{Changes in project specifications (YES, NO);}
#'   \item{R12}{Conflicts with project stakeholders (YES, NO);}
#'   \item{R13}{Decrease in productivity (YES, NO);}
#'   \item{R14}{Delays/interruptions (YES, NO);}
#'   \item{O1}{Decrease in quality of work (YES, NO);}
#'   \item{O2}{Low market share/reputational issues (YES, NO);}
#'   \item{O3}{Time overruns (YES, NO);}
#'   \item{O4}{Cost overruns (YES, NO);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Qazi, A., Quigley, J., Dickson, A., & Kirytopoulos, K. (2016). Project Complexity and Risk Management (ProCRiM): Towards modelling project complexity driven risk paths in construction projects. International Journal of Project Management, 34(7), 1183-1198.
"projectmanagement"
