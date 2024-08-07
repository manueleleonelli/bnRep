#' BN Summary
#'
#' Summary of the Bayesian networks in \code{bnRep}.
#'
#' @format
#' A data frame with a row for each BN in \code{bnRep} and the following columns:
#' \describe{
#'   \item{Name}{Name of the R object storing the BN;}
#'   \item{Type}{Discrete or Gaussian BN;}
#'   \item{Structure}{How the graph of the BN was defined (data, fixed, experts);}
#'   \item{Probabilities}{How the probabilities of the BN were defined (data, fixed, experts);}
#'   \item{Nodes}{Number of nodes in the BN;}
#'   \item{Arcs}{Number of arcs in the BN;}
#'   \item{Parameters}{Number of free parameters in the BN;}
#'   \item{Graph}{Type of graph of the BN (NaiveBayes, ReverseNaiveBayes, TAN, Tree, ReverseTree, Generic);}
#'   \item{Year}{Year of the publication where the BN appeared;}
#'   \item{Area}{Area of the published paper where the BN appeared (Psychology, Computer Science, Medicine, Engineering, etc.);}
#'   \item{Journal}{Journal where the BN appeared;}
#'   \item{Reference}{Reference of the paper where the BN appeared.}
#' }
#'
#' @usage NULL
#' @keywords Datasets
"bnRep_summary"
