#' Covidrisk Bayesian Network
#'
#'  Highly Efficient Structural Learning of Sparse Staged Trees
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to to investigate how various country risks and risks associated to the COVID-19 epidemics relate to each other. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{HAZARD}{(low, high);}
#'   \item{VULNERABILITY}{(low, high);}
#'   \item{COPING}{(low, high);}
#'   \item{RISK}{(low, high);}
#'   \item{ECONOMIC}{(low, high);}
#'   \item{BUSINESS}{(low, high);}
#'   \item{POLITICAL}{(low, high);}
#'   \item{COMMERCIAL}{(low, high);}
#'   \item{FINANCING}{(low, high);}
#' }
#'
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Leonelli, M., & Varando, G. (2022, September). Highly efficient structural learning of sparse staged trees. In International Conference on Probabilistic Graphical Models (pp. 193-204). PMLR.
"covidrisk"
