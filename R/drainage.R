#' drainage Bayesian Network
#'
#'
#' Fuzzy Bayesian network fault diagnosis method based on fault tree for coal mine drainage system.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for fault diagnosis of a coal mine drainage system. The probabilities were available from a repository. The vertices are:
#' \describe{
#' \item{AbnormalFlow}{(T, F);}
#' \item{AirLeakageOfShaftSeal}{(T, F);}
#' \item{GetValveFailure}{(T, F);}
#' \item{ImpellerDamaged}{(T, F);}
#' \item{LowSpeed}{(T, F);}
#' \item{LowVoltage}{(T, F);}
#' \item{MotorFault}{(T, F);}
#' \item{PipelineFailure}{(T, F);}
#' \item{PipelineRupture}{(T, F);}
#' \item{Silting}{(T, F);}
#' \item{WaterPumpFailure}{(T, F);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Shi, X., Gu, H., & Yao, B. (2024). Fuzzy Bayesian Network Fault Diagnosis Method Based on Fault Tree for Coal Mine Drainage System. IEEE Sensors Journal.
"drainage"
