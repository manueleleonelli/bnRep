#' rockburst Bayesian Network
#'
#'
#' Dynamic early warning of rockburst using microseismic multi-parameters based on Bayesian network.
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network to give early-warning of rockbursts. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Rockburst}{(No, Yes);}
#' \item{MMAV}{(Sligth, Medium, Strong);}
#' \item{SRAV}{(Small, Medium, Big);}
#' \item{ASAV}{(Small, Medium, Big);}
#' \item{DSDAV}{(Small, Medium, Big);}
#' \item{SEAV}{(Low, Medium, High);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords TAN
#' @importClassesFrom bnlearn bn.fit
#' @references Li, X., Mao, H., Li, B., & Xu, N. (2021). Dynamic early warning of rockburst using microseismic multi-parameters based on Bayesian network. Engineering Science and Technology, an International Journal, 24(3), 715-727.
"rockburst"
