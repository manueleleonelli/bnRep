#' asia Bayesian Network
#'
#' Local computation with probabilities on graphical structures and their application to expert systems.
#'
#' @usage NULL
#'
#' @format
#' A synthetic discrete Bayesian network to model the relationships between lung diseases and visits to Asia. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Bronchitis}{(True, False);}
#'    \item{Dyspnea}{(True, False);}
#'     \item{Lung_Cancer}{(True, False);}
#'      \item{Smoker}{(True, False);}
#'       \item{Tubercolosis}{(True, False);}
#'        \item{TubercolosisOrCancer}{(True, False);}
#'         \item{Visit_To_Asia}{(True, False);}
#'          \item{XRay_Result}{(True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Lauritzen, S. L., & Spiegelhalter, D. J. (1988). Local computations with probabilities on graphical structures and their application to expert systems. Journal of the Royal Statistical Society: Series B (Methodological), 50(2), 157-194.
"asia"
