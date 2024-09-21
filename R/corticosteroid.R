#' corticosteroid Bayesian Network
#'
#'
#' Corticosteroid discontinuation, complete clinical response and remission in juvenile dermatomyositis.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to compute the conditional probability of complete clinical response and remission. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{FinalCSDCAchieved}{(Achieved, Not Achieved);}
#' \item{CCRAchieved}{(Achieved, Not Achieved);}
#' \item{RemissionAchieved}{(Achieved, Not Achieved);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Kishi, T., Warren-Hicks, W., Bayat, N., Targoff, I. N., Huber, A. M., Ward, M. M., ... & with the Childhood Myositis Heterogeneity Study Group. (2021). Corticosteroid discontinuation, complete clinical response and remission in juvenile dermatomyositis. Rheumatology, 60(5), 2134-2145.
"corticosteroid"
