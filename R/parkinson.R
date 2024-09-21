#' parkinson Bayesian Network
#'
#' AI reveals insights into link between CD33 and cognitive impairment in Alzheimer's disease.
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network to simulate a down-expression of the putative drug target CD33, including potential impact on cognitive impairment and brain pathophysiology. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Cluster_1}{}
#'   \item{Cluster_2}{}
#'   \item{Cluster_3}{}
#'   \item{Cluster_4}{}
#'   \item{Cluster_6}{}
#'   \item{Cluster_7}{}
#'   \item{Cluster_8}{}
#'   \item{Cluster_9}{}
#'   \item{Cluster_11}{}
#'   \item{Cluster_14}{}
#'   \item{Cluster_15}{}
#'   \item{Cluster_16}{}
#'   \item{Cluster_17}{}
#'   \item{Cluster_18}{}
#'   \item{Cluster_19}{}
#'   \item{Cluster_20}{}
#'   \item{Cluster_21}{}
#'   \item{Cluster_25}{}
#'   \item{Cluster_26}{}
#'   \item{Cluster_27}{}
#'   \item{cognition}{}
#'   \item{PatDemo_educ}{}
#'   \item{PatDemo_sex}{}
#'   \item{PatDemo_apoe}{}
#'   \item{PatDemo_age}{}
#'   \item{PatDemo_brainregion}{}
#'   \item{REL}{}
#'   \item{PPARG}{}
#'   \item{TRAF1}{}
#'   \item{GRIN1}{}
#'   \item{CASP7}{}
#'   \item{NAV3}{}
#'   \item{DLG4}{}
#'   \item{CD33}{}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Raschka, T., Sood, M., Schultz, B., Altay, A., Ebeling, C., & Frohlich, H. (2023). AI reveals insights into link between CD33 and cognitive impairment in Alzheimer's Disease. PLOS Computational Biology, 19(2), e1009894.
"parkinson"
