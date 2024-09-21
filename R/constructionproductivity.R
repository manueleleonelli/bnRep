#' constructionproductivity Bayesian Network
#'
#' Construction productivity prediction through Bayesian networks for building projects: case from Vietnam.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to identify causal relationship and occurrence probability of critical factors affecting construction productivity. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Accidents}{(Yes, No);}
#'   \item{AdverseWeather}{(Yes, No);}
#'   \item{Age}{(Yes, No);}
#'   \item{Attitude}{(Yes, No);}
#'   \item{EngineerQualification}{(Yes, No);}
#'   \item{Experience}{(Yes, No);}
#'   \item{HealthStatus}{(Yes, No);}
#'   \item{MaterialPresence}{(Yes, No);}
#'   \item{OwnerFinance}{(Yes, No);}
#'   \item{PlanningAndMethod}{(Yes, No);}
#'   \item{Productivity}{(Yes, No);}
#'   \item{Sex}{(Yes, No);}
#'   \item{SkilledWorkers}{(Yes, No);}
#'   \item{TaskComplexity}{(Yes, No);}
#'   \item{TechnologyLevel}{(Yes, No);}
#'   \item{WorkingFrequency}{(Yes, No);}
#'   \item{WorkingTools}{(Yes, No);}
#'   \item{Workmanship}{(Yes, No);}
#'    }
#'
#'     @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Khanh, H. D., & Kim, S. Y. (2022). Construction productivity prediction through Bayesian networks for building projects: Case from Vietnam. Engineering, Construction and Architectural Management, 30(5), 2075-2100.
"constructionproductivity"
