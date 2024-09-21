#' phdarticles Bayesian Network
#'
#' The R package stagedtrees for structural learning of stratified staged trees.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling factors affecting the number of publications of PhD students. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{Articles}{Number of articles during the last three years of PhD (0, 1-2, >2);}
#'   \item{Gender}{(male, female);}
#'   \item{Kids}{If the student has at least one kid 5 or younger (yes, no);}
#'   \item{Married}{(yes, no));}
#'   \item{Mentor}{Number of publications of the student's mentor (low, medium, high);}
#'   \item{Prestige}{Prestige of the university (high, low);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Carli, F., Leonelli, M., Riccomagno, E., & Varando, G. (2022). The R Package stagedtrees for Structural Learning of Stratified Staged Trees. Journal of Statistical Software, 102, 1-30.
"phdarticles"
