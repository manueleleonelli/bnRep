#' gasexplosion Bayesian Network
#'
#' Risk assessment of unsafe acts in coal mine gas explosion accidents based on HFACS-GE and Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to analyze unsafe human acts in coal mine gas explosion accidents. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{AccidentalViolations}{(Non-occurence, Occurence);}
#' \item{CreateAFalseImpressionToDeceiveTheRegulators}{(Non-occurence, Occurence);}
#' \item{DecisionErrors}{(Non-occurence, Occurence);}
#' \item{DeparmentsAndInstitutionsAreNotComplete}{(Non-occurence, Occurence);}
#' \item{HabitualViolations}{(Non-occurence, Occurence);}
#' \item{IllegalCommand}{(Non-occurence, Occurence);}
#' \item{InadequateEmergencyPlan}{(Non-occurence, Occurence);}
#' \item{InsufficientCracdownOnIllegalActivities}{(Non-occurence, Occurence);}
#' \item{InsufficientSupervisionOfWorkSafety}{(Non-occurence, Occurence);}
#' \item{MentalStates}{(Non-occurence, Occurence);}
#' \item{OrganizeProductionInViolationOfLawsAndRegulations}{(Non-occurence, Occurence);}
#' \item{PerceptualErrors}{(Non-occurence, Occurence);}
#' \item{PhysicalIntellectualDisability}{(Non-occurence, Occurence);}
#' \item{SafetyEducationAndTraning}{(Non-occurence, Occurence);}
#' \item{SafetySupervisionIsInadequate}{(Non-occurence, Occurence);}
#' \item{SecurityManagementConfusion}{(Non-occurence, Occurence);}
#' \item{SafetySupervisionIsInadequate}{(Non-occurence, Occurence);}
#' \item{SecurityManagementConfusion}{(Non-occurence, Occurence);}
#' \item{SkillBasedErrors}{(Non-occurence, Occurence);}
#' \item{TechnicalEnvironment}{(Non-occurence, Occurence);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Niu, L., Zhao, J., & Yang, J. (2023). Risk assessment of unsafe acts in coal mine gas explosion accidents based on HFACS-GE and Bayesian networks. Processes, 11(2), 554.
"gasexplosion"
