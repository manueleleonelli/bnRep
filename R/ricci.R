#' ricci Bayesian Network
#'
#' A survey on datasets for fairness-aware machine learning.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling the results of a promotion exam within a fire department. The DAG was taken from the referenced paper and the probabilities learned from the associated dataset (the variable Promoted was constructed manually). The vertices are:
#' \describe{
#' \item{Combine}{The combined score (<70, >=70);}
#' \item{Oral}{The oral exam schore (<70, >=70);}
#' \item{Position}{The desired promotion (Lieutenant, Captain);}
#' \item{Promoted}{Whether an individual obtains a promotion (FALSE, TRUE);}
#' \item{Race}{(White, Non-White);}
#' \item{Written}{The written exam score (<70, >=70);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Le Quy, T., Roy, A., Iosifidis, V., Zhang, W., & Ntoutsi, E. (2022). A survey on datasets for fairness-aware machine learning. Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery, 12(3), e1452.
"ricci"
