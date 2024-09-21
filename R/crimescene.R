#' crimescene Bayesian Network
#'
#' How did the DNA of a suspect get to the crime scene? A practical study in DNA transfer during lock-picking.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to study DNA transfer during lock-picking. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'  \item{Hypothesis}{(Prosecutor, Defense);}
#'  \item{SuspectCutTheFoil}{(Yes, No);}
#'  \item{SuspectDNAOnFoilFromCutting}{(Yes, No);}
#'  \item{SuspectDNAOnFoilFromPicking}{(Yes, No);}
#'  \item{SuspectPickedLock}{(Yes, No);}
#'  \item{UnknownPickedLock}{(Yes, No);}
#'  \item{UnknownCutTheFoil}{(Yes, No);}
#'  \item{UnknownDNAOnFoil}{(Yes, No);}
#'  \item{DNAFoundOnFoil}{(Suspect DNA On Foil, Suspect And Unknown DNA On Foil, Unknown DNA On Foil, No DNA On Foil);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Mayuoni-Kirshenbaum, L., Waiskopf, O., Finkelstein, N., & Pasternak, Z. (2022). How did the DNA of a suspect get to the crime scene? A practical study in DNA transfer during lock-picking. Australian Journal of Forensic Sciences, 54(1), 15-25.
"crimescene"
