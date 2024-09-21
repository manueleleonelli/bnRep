#' covidtech Bayesian Network
#'
#' The YODO algorithm: An eﬃcient computational framework for sensitivity analysis in Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model the relationship between the use of technology and the psychological effects of forced social isolation during the COVID-19 pandemic. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{AGE}{Age of respondent (<25, >=25);}
#'   \item{GENDER}{Gender of respondent (Male, Female);}
#'   \item{BELONGINGNESS}{How often the word we is used (Low, Medium, High);}
#'   \item{ANG_IRR}{Perceived level of anger/irritability (Low, Medium, High);}
#'   \item{SOCIAL}{Perceived social support (Low, Medium, High);}
#'   \item{ANXIETY}{Level of anxiety (Low, Medium, High);}
#'   \item{BOREDOM}{Level of boredom (Low, Medium, High);}
#'   \item{LONELINESS}{Perceived loneliness (Low, Medium, High);}
#'   \item{TECH_FUN_Q}{Use of communication technology for fun in quarantine (Low, Medium, High);}
#'   \item{TECH_FUN_PQ}{Use of communication technology for fun pre-quarantine (Low, Medium, High);}
#'   \item{TECH_WORK_Q}{Use of communication technology for work in quarantine (Low, High);}
#'   \item{TECH_WORK_PQ}{Use of communication technology for work pre-quarantine (Low, High);}
#'   \item{OUTSIDE}{Times outside per week (0, 1, >=2);}
#'   \item{SQUARE_METERS}{Home square meters (<80, >=80);}
#'   \item{FAMILY_SIZE}{Number of individuals at home (1, 2, >=3);}
#'   \item{DAYS_ISOLATION}{Days since lockdown (0-10, 11-20, >20);}
#'   \item{REGION}{Region of residence (Lombardy, Other);}
#'   \item{OCCUPATION}{Occupation (Other, Smartworking, Student, Office work);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ballester-Ripoll, R., & Leonelli, M. (2023). The YODO algorithm: An efficient computational framework for sensitivity analysis in Bayesian networks. International Journal of Approximate Reasoning, 159, 108929.
"covidtech"
