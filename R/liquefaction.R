#' liquefaction Bayesian Network
#'
#' A continuous Bayesian network regression model for estimating seismic liquefaction-induced settlement of the free-field ground.
#'
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network to predict seismic liquefaction-induced settlement. The Bayesian network is learned using the data available from the referenced paper. The vertices are:
#' \describe{
#'   \item{Ds}{}
#'    \item{GWT}{}
#'     \item{lnamax}{}
#'      \item{lnR}{}
#'       \item{lnt}{}
#'   \item{Mw}{}
#'    \item{N160}{}
#'     \item{S}{}
#'      \item{Sigmav}{}
#'      \item{Ts}{}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Hu, J., Xiong, B., Zhang, Z., & Wang, J. (2023). A continuous Bayesian network regression model for estimating seismic liquefaction-induced settlement of the free-field ground. Earthquake Engineering & Structural Dynamics, 52(11), 3216-3237.
"liquefaction"
