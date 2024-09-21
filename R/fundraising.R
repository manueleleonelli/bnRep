#' fundraising Bayesian Network
#'
#' A coupled mathematical model of the dissemination route of short-term fund-raising fraud.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to analyze the dissemination, identification, and causation of fund-raising fraud. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{FailureInvest}{(Yes, No);}
#'   \item{FinancialFraud}{(Yes, No);}
#'   \item{LackAwareness}{(Yes, No);}
#'   \item{LackKnowledge}{(Yes, No);}
#'   \item{LackRegulation}{(Yes, No);}
#'   \item{OverTrust}{(Yes, No);}
#'   \item{PatsyInvestment}{(Yes, No);}
#'   \item{PromotionalMessages}{(Yes, No);}
#' }
#'
#'  @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Yang, S., Su, K., Wang, B., & Xu, Z. (2022). A coupled mathematical model of the dissemination route of short-term fund-raising fraud. Mathematics, 10(10), 1709.
"fundraising"
