#' covidtest Bayesian Network
#'
#' Discrete latent variables discovery and structure learning in mixed Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A conditional linear-Gaussian Bayesian network to predict the outcome of a covid test. The DAG structure was taken from the referenced paper and the probabilities learned from data (earliest version in the repository, missing data dropped). The vertices are:
#' \describe{
#' \item{asthma}{(FALSE, TRUE);}
#' \item{autoimmune_dis}{(FALSE, TRUE);}
#' \item{cancer}{(FALSE, TRUE);}
#' \item{covid19_test_results}{(Negative, Positive);}
#' \item{ctab}{(FALSE, TRUE);}
#' \item{diabetes}{(FALSE, TRUE);}
#' \item{diarrhea}{(FALSE, TRUE);}
#' \item{fever}{(FALSE, TRUE);}
#' \item{htn}{(FALSE, TRUE);}
#' \item{labored_respiration}{(FALSE, TRUE);}
#' \item{loss_of_taste}{(FALSE, TRUE);}
#' \item{pulse}{}
#' \item{sob}{(FALSE, TRUE);}
#' \item{sore_throat}{(FALSE, TRUE);}
#' \item{temperature}{}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords CLGBN
#' @importClassesFrom bnlearn bn.fit
#' @references Peled, A., & Fine, S. (2021). Discrete Latent Variables Discovery and Structure Learning in Mixed Bayesian Networks. In 20th IEEE International Conference on Machine Learning and Applications (pp. 248-255). IEEE.
"covidtest"
