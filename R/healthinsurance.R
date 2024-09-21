#' healthinsurance Bayesian Network
#'
#' Discrete latent variables discovery and structure learning in mixed Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A conditional linear-Gaussian Bayesian network to predict health insurance charges. The DAG structure was taken from the referenced paper and the probabilities learned from data. The vertices are:
#' \describe{
#' \item{age}{}
#' \item{bmi}{}
#' \item{charges}{}
#' \item{children}{(0, 1, 2, 3, 4, 5)}
#' \item{region}{(northeast, northwest, southeast, southwest);}
#' \item{sex}{(female, male);}
#' \item{smoker}{(no, yes);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords CLGBN
#' @importClassesFrom bnlearn bn.fit
#' @references Peled, A., & Fine, S. (2021). Discrete Latent Variables Discovery and Structure Learning in Mixed Bayesian Networks. In 20th IEEE International Conference on Machine Learning and Applications (pp. 248-255). IEEE.
"healthinsurance"
