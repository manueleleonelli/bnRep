#' perioperative Bayesian Network
#'
#'
#' Development of a perioperative medication suspension decision algorithm based on Bayesian networks.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the estimation of the drug suspension period even in the presence of competing risks. The probabilities were available from a repository. The vertices are:
#' \describe{
#' \item{DrugSuspension}{(0 days, 5 days, 7 days);}
#' \item{ThromboticRisk}{(High, Medium, Low);}
#' \item{BleedingRisk}{(High, Null);}
#' \item{PlateletCount}{(High, Medium, Low);}
#' \item{AbnormalAPTT}{(High, Medium, Low);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Kawaguchi, S., Fukuda, O., Kimura, S., Yeoh, W. L., Yamaguchi, N., & Okumura, H. (2024, January). Development of a Perioperative Medication Suspension Decision Algorithm Based on Bayesian Networks. In 2024 IEEE/SICE International Symposium on System Integration (SII) (pp. 7-12). IEEE.
"perioperative"
