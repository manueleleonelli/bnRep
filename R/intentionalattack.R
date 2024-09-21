#' intentionalattacks Bayesian Network
#'
#' Probability elicitation for Bayesian networks to distinguish between intentional attacks and accidental technical failures.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling a floodgate in the Netherlands. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{X1}{Weak physical access-control (True, False);}
#'   \item{X2}{Sensor data integrity verification (True, False);}
#'   \item{U1}{Lack of physical maintenance (True, False);}
#'   \item{U2}{Well-written maintenance procedure (True, False);}
#'   \item{Y}{Major cause for sensor sends incorrect water level measurements (Intentional Attack, Accidental Technical Failure);}
#'   \item{Z1}{Abnormalities in the other locations (True, False);}
#'   \item{Z2}{Sensor sends correct water level measurements after cleaning the sensor (True, False)}
#'   \item{Z3}{Sensor sends correct water level measurements after recalibrating the sensor (True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Chockalingam, S., Pieters, W., Teixeira, A. M., & van Gelder, P. (2023). Probability elicitation for Bayesian networks to distinguish between intentional attacks and accidental technical failures. Journal of Information Security and Applications, 75, 103497.
"intentionalattacks"

