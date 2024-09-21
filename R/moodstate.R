#' moodstate Bayesian Network
#'
#' Inference of mood state indices by using a multimodal high-level information fusion technique.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to perform high-level information fusion. Probabilities were given within the referenced paper (one node is not included). The vertices are:
#' \describe{
#'   \item{Anxiety}{(0-2, 3-5);}
#'   \item{DepressiveState}{(TRUE, FALSE);}
#'   \item{EEG}{(>0, <0);}
#'   \item{Energy}{(0-2, 3-5);}
#'   \item{Irritability}{(0-3, 4-5);}
#'   \item{MoodState}{(+3, +2, +1, 0, -1, -2, -3);}
#'   \item{Sleep}{(<6 Hours, >6 Hours;}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Tai, C. H., Chung, K. H., Teng, Y. W., Shu, F. M., & Chang, Y. S. (2021). Inference of mood state indices by using a multimodal high-level information fusion technique. IEEE Access, 9, 61256-61268.
"moodstate"
