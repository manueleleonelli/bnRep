#' bullet Bayesian Network
#'
#'
#' Combined interpretation of objective firearm evidence comparison algorithms using Bayesian network.
#'
#'  @usage NULL
#'
#' @format
#' A discrete Bayesian network to leverage the strengths of individual approaches to evaluate the similarity of features on two bullets. The network was available in a repository. The vertices are:
#' \describe{
#' \item{Conclusion}{(NotSource, Source);}
#' \item{CCF}{Cross-correlation function (CCF_0_1, CCF_1_2, CCF_2_3, CCF_3_4, CCF_4_5, CCF_5_6, CCF_6_7, CCF_7_8, CCF_8_9, CCF_9_10);}
#' \item{CMPS}{Congruent matching profile segments (CMPS_0, CMPS_1, CMPS_2, CMPS_3, ... , CMPS_27);}
#' \item{RF}{Random forest (RF_0_1, RF_1_2, RF_2_3, RF_3_4, RF_4_5, RF_5_6, RF_6_7, RF_7_8, RF_8_9, RF_9_10);}
#' \item{CMS}{Consecutively matching striae (CMS_0, CMS_1, .... , CMS_29);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords TAN
#' @importClassesFrom bnlearn bn.fit
#' @references Spaulding, J. S., & LaCasse, L. S. (2024). Combined interpretation of objective firearm evidence comparison algorithms using Bayesian networks. Journal of Forensic Sciences.
"bullet"
