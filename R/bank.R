#' bank Bayesian Network
#'
#' Structural learning of simple staged trees.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model whether customers subscribe to a product after being contacted by direct marketing campaigns of a Portuguese banking institution. The Bayesian network is learned via data as stated in the paper. The vertices are:
#' \describe{
#'   \item{marital}{Marital status (divorced, married, single, unknown);}
#'   \item{education}{Education (no_uni, uni);}
#'   \item{contact}{Type of direct marketing contact (cellular, telephone);}
#'   \item{subscription}{(no, yes);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Leonelli, M., & Varando, G. (2024). Structural learning of simple staged trees. Data Mining and Knowledge Discovery, 38(3), 1520-1544.
"bank"
