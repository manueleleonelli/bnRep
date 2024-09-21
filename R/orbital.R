#' orbital Bayesian Network
#'
#' Approaching ntention prediction of orbital maneuver based on dynamic Bayesian network.
#'
#' @usage NULL
#'
#' @format
#' A (dynamic) discrete Bayesian network to to help operators recognize the approaching intention quickly and systemically. Probabilities were given within the referenced paper. Ten time slices of the dynamic network are constructed. The vertices in the first time slice are:
#' \describe{
#'   \item{ApproachingIntentionT1}{(Hover, Attach, Capture, Approach);}
#'   \item{LocationT1}{(Within the threat range, Outside the threat range);}
#'   \item{ManeuverT1}{(Maneuver, Non-maneuver);}
#'   \item{RelativeVelocityT1}{(Fast, Slow);}
#'   \item{HeadingT1}{(0-110 degress, 110 degrees);}
#'   \item{RelativeDistanceT1}{(Far, Near);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'@keywords Tree
#' @importClassesFrom bnlearn bn.fit
#' @references Shibo, C. H. E. N., Jun, L. I., Yaen, X. I. E., Xiande, W. U., Shuhang, L. E. N. G., & Ruochu, Y. A. N. G. (2023). Approaching Intention Prediction of Orbital Maneuver Based on Dynamic Bayesian Network. Transactions of Nanjing University of Aeronautics & Astronautics, 40(4).
"orbital"
