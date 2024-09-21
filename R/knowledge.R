#' knowledge Bayesian Network
#'
#' Dynamic knowledge inference based on Bayesian network learning.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to predict whether students would pass specific courses. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Math}{(Pass, Fail);}
#' \item{C}{(Pass, Fail);}
#' \item{Java}{(Pass, Fail);}
#' \item{Database}{(Pass, Fail);}
#' \item{Android}{(Pass, Fail);}
#' \item{Web}{(Pass, Fail);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Wang, D., AmrilJaharadak, A., & Xiao, Y. (2020). Dynamic knowledge inference based on Bayesian network learning. Mathematical Problems in Engineering, 2020(1), 6613896.
"knowledge"
