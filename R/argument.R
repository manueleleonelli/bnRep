#' argument Bayesian Network
#'
#' Towards an empirically informed normative Bayesian scheme-based account of argument from expert opinion.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network formalizing Walton's re-constructed set of critical questions. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'  \item{DecisionProcess}{(Not based on evidence, Integrative complexity, Absence of integrative complexity);}
#'  \item{DeliberativePractice}{(FALSE, TRUE);}
#'  \item{ExpertAssertsHypothesis}{(FALSE, TRUE);}
#'  \item{Feedback}{(FALSE, TRUE);}
#'  \item{GenuineExpertise}{(FALSE, TRUE);}
#'  \item{Hypothesis}{(FALSE, TRUE);}
#'  \item{ObjectiveEvidence}{(FALSE, TRUE);}
#'  \item{RegularPractice}{(FALSE, TRUE);}
#'  \item{Validity}{(High, Medium, High);}
#'  \item{WellInformedPractice}{(FALSE, TRUE);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Pei, K. N., & Chin, C. S. A. (2023). Towards an empirically informed normative Bayesian scheme-based account of argument from expert opinion. Thinking & Reasoning, 29(4), 726-759.
"argument"
