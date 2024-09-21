#' turbine Bayesian Networks
#'
#' Potential use of Bayesian Networks for estimating relationship among rotational dynamics of floating offshore wind turbine tower in extreme environmental conditions.
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network for the estimation of technical relationships among structural dynamic responses of the tower of a floating spar-type offshore wind turbine. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{PtfmPitch}{Platform pitch tilt angular (rotational) displacement;}
#'   \item{PtfmRoll}{Platform roll tilt angular (rotational) displacement;}
#'   \item{PtfmSurge}{Platform horizontal surge (translational) displacement;}
#'   \item{PtfmSway}{Platform horizontal sway (translational) displacement;}
#'   \item{TTDspFA}{Tower-top/yaw bearing fore-aft (translational) deflection (relative to the undeflected position);}
#'   \item{TTDspPtch}{Tower-top/yaw bearing angular (rotational) pitch deflection (relative to the undeflected position);}
#'   \item{TTDspRoll}{Tower-top/yaw bearing angular (rotational) roll deflection (relative to the undeflected position);}
#'   \item{TTDspSS}{Tower-top/yaw bearing side-to-side (translation) deflection (relative to the undeflected position);}
#'   \item{TwrBsFxt}{Tower base fore-aft shear force;}
#'   \item{TwrBsFyt}{Tower base side-to-side shear force;}
#'   \item{TwrBsMxt}{Nonrotating tower-top/yaw bearing roll moment;}
#'   \item{TwrBsMyt}{Nonrotating tower-top/yaw bearing pitch moment;}
#'   \item{YawBrFxp}{Tower-top/yaw bearing fore-aft (nonrotating) shear force;}
#'   \item{YawBrFyp}{Tower-top/yaw bearing side-to-side (nonrotating) shear force;}
#'   \item{YawBrMxp}{Nonrotating tower-top/yaw bearing roll moment;}
#'   \item{YawBrMyp}{Nonrotating tower-top/yaw bearing pitch moment;}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Rostam-Alilou, A. A., Zhang, C., Salboukh, F., & Gunes, O. (2022). Potential use of Bayesian Networks for estimating relationship among rotational dynamics of floating offshore wind turbine tower in extreme environmental conditions. Ocean Engineering, 244, 110230.
"turbine1"
