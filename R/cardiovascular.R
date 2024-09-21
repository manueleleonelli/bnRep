#' cardiovascular Bayesian Network
#'
#' A Bayesian network model for predicting cardiovascular risk.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network allowing for making inferences and predictions about cardiovascular risk factors. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Age}{(18-24", 24-34, 34-44, 44-54, 54-64, 64-74);}
#'   \item{Anxiety}{(No, Yes);}
#'   \item{BodyMassIndex}{(Normal, Obese, Overweight, Underweight);}
#'   \item{Depression}{(No, Yes);}
#'   \item{Diabetes}{(No, Yes);}
#'   \item{EducationLevel}{(1, 2, 3);}
#'   \item{Hypercholesterolemia}{(No, Yes);}
#'   \item{Hypertension}{(No, Yes);}
#'   \item{PhysicalActivity}{(Insufficiently Active, Regularly Active);}
#'   \item{Sex}{(Female, Male);}
#'   \item{SleepDuration}{(6-9hours, <6hours, >9hours);}
#'   \item{SmokerProfile}{(Ex_Smoker, Non_Smoker, Smoker);}
#'   \item{SocioeconomicStatus}{(1, 2, 3);}
#' }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ordovas, J. M., Rios-Insua, D., Santos-Lozano, A., Lucia, A., Torres, A., Kosgodagan, A., & Camacho, J. M. (2023). A Bayesian network model for predicting cardiovascular risk. Computer Methods and Programs in Biomedicine, 231, 107405.
"cardiovascular"
