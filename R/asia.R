#' Asia Bayesian Network
#'
#' Local Computation with Probabilities on Graphical Structures and their Application to Expert Systems.
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
#'
#' @keywords DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Lauritzen, S. L., & Spiegelhalter, D. J. (1988). Local computations with probabilities on graphical structures and their application to expert systems. Journal of the Royal Statistical Society: Series B (Methodological), 50(2), 157-194.
"asia"
