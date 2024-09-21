#' vaccine Bayesian Network
#'
#' Sensitivity analysis in multilinear probabilistic models.
#'
#' @usage NULL
#'
#' @format
#' A (synthetic) discrete Bayesian network modeling a vaccine scenario. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Screening_Test}{(Negative, Positive);}
#'   \item{Disease}{(Healthy, Mildly, Severly);}
#'   \item{Vaccine}{(No, Yes);}
#'   }
#'
#'  @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Leonelli, M., Gorgen, C., & Smith, J. Q. (2017). Sensitivity analysis in multilinear probabilistic models. Information Sciences, 411, 84-97.
"vaccine"
