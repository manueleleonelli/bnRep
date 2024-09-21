#' enrollment Bayesian Network
#'
#'
#' Research on evaluation methods for sustainable enrollment plan configurations in Chinese universities based on Bayesian networks.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for sustainable enrollment plan configurations aimed at enhancing the advanced education rate. The probabilities were given in the referenced paper. The vertices are:
#' \describe{
#' \item{AdvancedEducationRate}{(0, 1);}
#' \item{AverageAdmissionScore}{(0, 1, 2);}
#' \item{CoursePassRate}{(0, 1, 2);}
#' \item{EmploymentRate}{(0, 1, 2);}
#' \item{FirstTimeGraduationRate}{(0, 1, 2);}
#' \item{StudentTeacherRatio}{(0, 1, 2);}
#' \item{TransferRate}{(0, 1, 2);}
#' \item{EnrollmentQuota}{(-2, -1, 0, 1, 2);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Wang, K., Wang, T., Wang, T., & Cai, Z. (2024). Research on Evaluation Methods for Sustainable Enrollment Plan Configurations in Chinese Universities Based on Bayesian Networks. Sustainability, 16(7), 2998.
"enrollment"
