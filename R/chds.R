#' chds Bayesian Network
#'
#' Refining a Bayesian network using a chain event graph.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network looking at the effect the family’s social background, the economic status and the number of family life events have on the child’s health which is measured by rates of hospital admission. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{Social}{Social background (High, Low);}
#'   \item{Economic}{Economic status (High, Low);}
#'   \item{Events}{Number of life events (High, Average, Low);}
#'   \item{Admission}{Rate of hospital admissions (Yes, No);}
#' }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords Tree
#' @importClassesFrom bnlearn bn.fit
#' @references Barclay, L. M., Hutton, J. L., & Smith, J. Q. (2013). Refining a Bayesian network using a chain event graph. International Journal of Approximate Reasoning, 54(9), 1300-1309.
"chds"
