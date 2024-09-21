#' burglar Bayesian Network
#'
#'
#' Strategies for selecting and evaluating information.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling a simple burglary scenario (Model 1, Table 2). The network was available from an associated repository. The vertices are:
#' \describe{
#' \item{Burglar}{(Suspect 1, Suspect 2, Suspect3);}
#' \item{PrimaryItemStolen}{(Jewellery, Electronics, Money);}
#' \item{BurglaryTime}{(Day, Night);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Liefgreen, A., Pilditch, T., & Lagnado, D. (2020). Strategies for selecting and evaluating information. Cognitive Psychology, 123, 101332.
"burglar"
