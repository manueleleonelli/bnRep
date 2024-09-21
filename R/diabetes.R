#' ciabetes Bayesian Network
#'
#' Sensitivity and robustness analysis in Bayesian networks with the bnmonitor R package.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to predict whether or not a patient has diabetes, based on certain diagnostic measurements. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{AGE}{Age (Low, High);}
#'   \item{DIAB}{Test for diabetes (Neg, Pos);}
#'   \item{GLUC}{Plasma glucose concentration (Low, High);}
#'   \item{INS}{2-hour serum insulin (Low, High);}
#'   \item{MASS}{Body mass index (Low, High);}
#'   \item{PED}{Diabetes pedigree function (Low, High);}
#'   \item{PREG}{Number of times pregnant (Low, High);}
#'   \item{PRES}{Diastolic blood pressure (Low, High);}
#'   \item{TRIC}{Triceps skin fold thickness (Low, High);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Leonelli, M., Ramanathan, R., & Wilkerson, R. L. (2023). Sensitivity and robustness analysis in Bayesian networks with the bnmonitor R package. Knowledge-Based Systems, 278, 110882.
"diabetes"
