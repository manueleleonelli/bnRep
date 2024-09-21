#' gonorrhoeae Bayesian Network
#'
#'
#' Policy, practice, and prediction: model-based approaches to evaluating N. gonorrhoeae antibiotic susceptibility test uptake in Australia.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network  to simulate the clinician-patient dynamics influencing antibiotic susceptibility test initiation. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{ASTTest}{(Initiated, Not initiated);}
#' \item{ClinicianExperience}{(Experienced, Unexperienced);}
#' \item{EpidemiologicalFactors}{(High risk group, Low risk group);}
#' \item{InitialTreatmentFailure}{(Treatment success, Treatment failure);}
#' \item{MedicationAdherence}{(Proper Adherence, Improper Adherence);}
#' \item{NumberPartners}{(One, Two to five, More than six);}
#' \item{PastDiagnoses}{(One, Two to four, five to nine, More than ten);}
#' \item{PersistingSymptoms}{(Symptoms persist, Symptoms resolve);}
#' \item{SexualOrientation}{(Heterosexual, Homosexual);}
#' \item{UnpromptedTest}{(Initiated, Not initiated);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Do, P. C., Assefa, Y. A., Batikawai, S. M., Abate, M. A., & Reid, S. A. (2024). Policy, practice, and prediction: model-based approaches to evaluating N. gonorrhoeae antibiotic susceptibility test uptake in Australia. BMC Infectious Diseases, 24(1), 498.
"gonorrhoeae"
