#' Trajectories Bayesian Network
#'
#' Context-specific causal discovery for categorical data using staged trees.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling the trajectory of patients hospitalized due to COVID. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{SEX}{(male, female);}
#'   \item{ICU}{(0, 1);}
#'   \item{OUT}{(death, survived);}
#'   \item{AGE}{(child, adult, elder);}
#'   \item{RSP}{(intub, mask, no);}
#' }
#'
#'
#' @keywords DBN
#' @importClassesFrom bnlearn bn.fit
#' @references Leonelli, M., & Varando, G. (2023, April). Context-specific causal discovery for categorical data using staged trees. In International Conference on Artificial Intelligence and Statistics (pp. 8871-8888). PMLR.
"trajectories"
