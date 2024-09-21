#' lawschool Bayesian Network
#'
#' A survey on datasets for fairness-aware machine learning.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling law school admission records. The DAG was taken from the referenced paper and the probabilities learned from the associated dataset. The vertices are:
#' \describe{
#' \item{fam_inc}{The student's family income bracket (1, 2, 3, 4, 5);}
#' \item{fulltime}{Whether the student will work full-time or part-time (1, 2);}
#' \item{lsat}{The student's LSAT score (<=37, 37);}
#' \item{male}{Whether the student is male or female (female, male);}
#' \item{pass_bar}{Whether the student passed the bar exam on the first try (negative, positive);}
#' \item{racetxt}{Race (non-white, white);}
#' \item{tier}{Tier (1, 2, 3, 4, 5, 6);}
#' \item{ugpa}{The student's undergraduate GPA (<3,3, >=3.3);}
#' \item{zfygpa}{The first year law school GPA (<=0, >0);}
#' \item{zgpa}{The cumulative law school GPA (<=0, >0);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Le Quy, T., Roy, A., Iosifidis, V., Zhang, W., & Ntoutsi, E. (2022). A survey on datasets for fairness-aware machine learning. Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery, 12(3), e1452.
"lawschool"
