#' wheat Bayesian Network
#'
#' Embedding expert opinion in a Bayesian network model to predict wheat yield from spring-summer weather.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network  to predict wheat yield. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{MaximumTemperature}{(Low, Medium, High);}
#'   \item{MeanTemperature}{(Moderate, Other);}
#'   \item{NDVIinMarch}{(Low, Medium, High, Very High);}
#'   \item{Rainfall}{(Dry, Average, Very Wet, Drought and Very Wet);}
#'   \item{Yield}{(Very Low, Low, Average, High, Very High).}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseNaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Mahmood, S. A., Karampoiki, M., Hammond, J. P., Paraforos, D. S., Murdoch, A. J., & Todman, L. (2023). Embedding expert opinion in a Bayesian network model to predict wheat yield from spring-summer weather. Smart Agricultural Technology, 4, 100224.
"wheat"
