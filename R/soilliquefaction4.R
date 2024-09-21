#' soilliquefaction Bayesian Networks
#'
#' Application of machine learning algorithms for the evaluation of seismic soil liquefaction potential.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to evaluate the earthquake-induced liquefaction potential of soil based on the cone penetration test field case history records (Fig. 1.d). The data was available in the reference paper and was discretized as suggested in the paper. The DAGs were given in the paper and probabilities were learned using the Bayes method with imaginary sample size of one. The vertices are:
#' \describe{
#' \item{ConePenetrationResistance}{(small, medium, big, super);}
#' \item{EartquakeMagnitude}{(medium, strong, big, super);}
#' \item{LiquefactionPotential}{(no, yes);}
#' \item{MeanGrainSize}{(medium, strong, big, super);}
#' \item{PeakGroundAcceleratione}{(low, medium, high, super);}
#' \item{TotalVerticalStress}{(small, medium, big, super);}
#' \item{VerticalEffectiveStress}{(small, medium, big, super);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Ahmad, M., Tang, X. W., Qiu, J. N., Ahmad, F., & Gu, W. J. (2021). Application of machine learning algorithms for the evaluation of seismic soil liquefaction potential. Frontiers of Structural and Civil Engineering, 15, 490-505.
"soilliquefaction4"
