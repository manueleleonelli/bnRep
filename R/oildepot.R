#' oildepot Bayesian Network
#'
#' Dynamic risk analysis of oil depot storage tank failure using a fuzzy Bayesian network model.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for failure risk analysis of oil storage tank leakage. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{X1}{ (True, False);}
#'   \item{X2}{ (True, False);}
#'    \item{X3}{ (True, False);}
#'     \item{X4}{ (True, False);}
#'      \item{X5}{ (True, False);}
#'       \item{X6}{ (True, False);}
#'        \item{X7}{ (True, False);}
#'         \item{X8}{ (True, False);}
#'          \item{X9}{ (True, False);}
#'           \item{X10}{ (True, False);}
#'   \item{X11}{ (True, False);}
#'   \item{X12}{ (True, False);}
#'   \item{X13}{ (True, False);}
#'   \item{X14}{ (True, False);}
#'   \item{X15}{ (True, False);}
#'   \item{X16}{ (True, False);}
#'   \item{X17}{ (True, False);}
#'   \item{X18}{ (True, False);}
#'   \item{X19}{ (True, False);}
#'   \item{X20}{ (True, False);}
#'   \item{X21}{ (True, False);}
#'   \item{X22}{ (True, False);}
#'   \item{X23}{ (True, False);}
#'   \item{X24}{ (True, False);}
#'   \item{X25}{ (True, False);}
#'   \item{M1}{Internal corrosion (True, False);}
#'   \item{M2}{External corrosion (True, False);}
#'   \item{M3}{Liquid level exceeded safe level (True, False);}
#'   \item{M4}{Equipment failure (True, False);}
#'   \item{M5}{Personnel issue (True, False);}
#'   \item{M6}{Not found in time (True, False);}
#'   \item{M7}{Corrosion (True, False);}
#'   \item{M8}{Overfill (True, False);}
#'   \item{M9}{Environment (True, False);}
#'   \item{M10}{Design defect (True, False);}
#'   \item{M11}{Equipment ageing (True, False);}
#'   \item{M12}{Tank hazard (True, False);}
#'   \item{M13}{Lax supervision (True, False);}
#'   \item{M14}{Rules and regulation (True, False);}
#'   \item{M15}{Inadequate management (True, False);}
#'   \item{TankLeakage}{(True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Zhou, Q. Y., Li, B., Lu, Y., Chen, J., Shu, C. M., & Bi, M. S. (2023). Dynamic risk analysis of oil depot storage tank failure using a fuzzy Bayesian network model. Process Safety and Environmental Protection, 173, 800-811.
"oildepot"
