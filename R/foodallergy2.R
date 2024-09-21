#' foodallergy Bayesian Networks
#'
#' Prevalence of self-reported food allergy in Tunisia: General trends and probabilistic modeling.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to to estimate conditional probabilities of each food allergy when other food allergies are present (adults only). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Cereals}{(T, F);}
#'   \item{Eggs}{(T, F);}
#'   \item{Fruits}{(T, F);}
#'   \item{Milk}{(T, F);}
#'   \item{Nuts}{(T, F);}
#'   \item{Peanuts}{(T, F);}
#'   \item{Seafood}{(T, F);}
#'   \item{Veg_Leg}{(T, F);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Belmabrouk, S., Abdelhedi, R., Bougacha, F., Bouzid, F., Gargouri, H., Ayadi, I., ... & Rebai, A. (2023). Prevalence of self-reported food allergy in Tunisia: General trends and probabilistic modeling. World Allergy Organization Journal, 16(9), 100813.
"foodallergy2"
