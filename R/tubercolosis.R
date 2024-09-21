#' tubercolosis Bayesian Network
#'
#'
#' A decision support system for tuberculosis prevalence in South Africa.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to educate, inform, and prescribe measures to take when visiting a high prevalence location. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Location}{(Nkangala, Gert Sibande, Ehlanzeni);}
#' \item{Gender}{(Male, Female);}
#' \item{AgeGroup}{(0 to 35, 35 to 65, More than 65);}
#' \item{Tubercolosis}{(Pulmonary, ExtraPulmonary);}
#' \item{TreatmentOutcome}{(Alive, Died);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'@keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Razwiedani, M., & Kogeda, O. P. (2021). A Decision Support System for Tuberculosis Prevalence in South Africa. In Computational Science and Its Applications. Springer International Publishing.
"tubercolosis"
