#' bankruptcy Bayesian Network
#'
#'
#' Using Bayesian networks for bankruptcy prediction: Some methodological issues.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for bankruptcy prediction. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{BankruptcyStatus}{(FALSE, TRUE);}
#' \item{AuditorsOpinion}{(FALSE, TRUE);}
#' \item{StockReturn}{(Low, Medium, High);}
#' \item{NetIncomeRate}{(Low, Medium, High);}
#' \item{IndustryFailureRate}{(Low, Medium, High);}
#' \item{MarketableSecurities}{(Low, Medium, High);}
#' \item{FirmSize}{(Low, Medium, High);}
#' \item{NetIncomeNegative}{(FALSE, TRUE);}
#' \item{CashAssets}{(Low, Medium, High);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Sun, L., & Shenoy, P. P. (2007). Using Bayesian networks for bankruptcy prediction: Some methodological issues. European Journal of Operational Research, 180(2), 738-753.
"bankruptcy"
