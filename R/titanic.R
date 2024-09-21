#' titanic Bayesian Network
#'
#' The R Package stagedtrees for Structural Learning of Stratified Staged Trees.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling the survival of the Titanic passengers. The Bayesian network was learned as in the referenced paper. The vertices are:
#' \describe{
#'    \item{Class}{(1st, 2nd, 3rd, Crew);}
#'    \item{Sex}{(Male, Female);}
#'    \item{Age}{(Child, Adult);}
#'    \item{Survived}{(No, Yes).}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Carli, F., Leonelli, M., Riccomagno, E., & Varando, G. (2022). The R Package stagedtrees for Structural Learning of Stratified Staged Trees. Journal of Statistical Software, 102, 1-30.
"titanic"
