#' salmonella Bayesian Networks
#'
#' Patterns of antimicrobial resistance in Salmonella isolates from fattening pigs in Spain.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to show the existence of dependencies between resistance to antimicrobials. Probabilities were given within the referenced paper. The vertices are (s stands for susceptible, r for resistant):
#' \describe{
#'   \item{CHL}{Chloramphenicol (s, r);}
#'   \item{CIP}{Ciprofloxacin (s, r);}
#'   \item{CTX}{Cefotaxime (s, r);}
#'   \item{FFC}{Florfenicol (s, r);}
#'   \item{GEN}{Gentamicin (s, r);}
#'   \item{NAL}{Nalidixic acid (s, r);}
#'   \item{TET}{Tetracycline (s, r);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Teng, K. T. Y., Aerts, M., Jaspers, S., Ugarte-Ruiz, M., Moreno, M. A., Saez, J. L., ... & Alvarez, J. (2022). Patterns of antimicrobial resistance in Salmonella isolates from fattening pigs in Spain. BMC Veterinary Research, 18(1), 333.
"salmonella1"
