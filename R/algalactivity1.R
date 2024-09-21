#' algalactivity Bayesian Networks
#'
#' Influence of resampling techniques on Bayesian network performance in predicting increased algal activity.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to to predict chlorophyll-a (chl-a) using a range of water quality parameters as predictors (Fig. 6 of the referenced paper). Probabilities were given within the referenced paper (a uniform was given to the vertex Chl_a since it was missing). The vertices are:
#' \describe{
#'   \item{C}{(0, 1);}
#'   \item{Chl_a}{(0, 1);}
#'   \item{DO}{(0, 1);}
#'   \item{N}{(0, 1);}
#'   \item{P}{(0, 1);}
#'   \item{pH}{(0, 1);}
#'   \item{Te}{(0, 1);}
#'   \item{Tu}{(0, 1);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Rezaabad, M. Z., Lacey, H., Marshall, L., & Johnson, F. (2023). Influence of resampling techniques on Bayesian network performance in predicting increased algal activity. Water Research, 244, 120558.
"algalactivity1"
