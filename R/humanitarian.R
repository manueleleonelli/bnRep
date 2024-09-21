#' humanitarian Bayesian Network
#'
#' You only derive once (YODO): Automatic differentiation for efficient sensitivity analysis in Bayesian networks.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to assess the country-level risk associated with humanitarian crises and disasters. The Bayesian network is learned  as in the referenced paper. The vertices are:
#' \describe{
#'   \item{RISK}{(low, medium, high);}
#'   \item{EARTHQUAKE}{(low, medium, high);}
#'   \item{FLOOD}{(low, medium, high);}
#'   \item{TSUNAMI}{(low, medium, high);}
#'   \item{TROPICAL_CYCLONE}{(low, medium, high);}
#'   \item{DROUGHT}{(low, medium, high);}
#'   \item{EPIDEMIC}{(low, medium, high);}
#'   \item{PCR}{Projected conflict risk (low, medium, high);}
#'   \item{CHVCI}{Current highly violent conflict intensity (low, medium, high);}
#'   \item{D_AND_D}{Development and deprivation (low, medium, high);}
#'   \item{ECON_DEP}{Economic dependency (low, medium, high);}
#'   \item{UNP_PEOPLE}{Unprotected people (low, medium, high);}
#'   \item{HEALTH_COND}{Health conditions (low, medium, high);}
#'   \item{CHILDREN_U5}{(low, medium, high);}
#'   \item{RECENT_SHOCKS}{(low, medium, high);}
#'   \item{FOOD_SECURITY}{(low, medium, high);}
#'   \item{OTHER_VULN_GROUPS}{Other vulnerable groups (low, medium, high);}
#'   \item{GOVERNANCE}{(low, medium, high);}
#'   \item{COMMUNICATION}{(low, medium, high);}
#'   \item{PHYS_INFRA}{Physical infrastructure (low, medium, high);}
#'   \item{ACCESS_TO_HEALTH}{(low, medium, high);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ballester-Ripoll, R., & Leonelli, M. (2022, September). You only derive once (YODO): automatic differentiation for efficient sensitivity analysis in Bayesian networks. In International Conference on Probabilistic Graphical Models (pp. 169-180). PMLR.
"humanitarian"
