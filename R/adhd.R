#' adhd Bayesian Network
#'
#' Development of a computerized adaptive testing for ADHD using Bayesian networks: An attempt at classification.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to classify ADHD symptom. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ADHD}{ADHD symptom severity (No, Few, Moderate, Risk);}
#'   \item{Carelessness}{Carelessness (Never, Sometimes, Often, Very Often);}
#'   \item{DifficultySustainingAttention}{Difficulty sustaining attention in activities (Never, Sometimes, Often, Very Often);}
#'   \item{DoesntListen}{Doesn't listen (Never, Sometimes, Often, Very Often);}
#'   \item{NoFollowThrough}{No follow through (Never, Sometimes, Often, Very Often);}
#'   \item{CantOrganize}{Can't organize (Never, Sometimes, Often, Very Often);}
#'   \item{AvoidsTasks}{Avoids/dislikes tasks requiring sustained mental effort (Never, Sometimes, Often, Very Often);}
#'   \item{LosesItems}{Loses important items (Never, Sometimes, Often, Very Often);}
#'   \item{EasilyDistractible}{Easily distractible (Never, Sometimes, Often, Very Often);}
#'   \item{Forgetful}{Forgetful in daily activities (Never, Sometimes, Often, Very Often);}
#'   \item{SquirmsAndFidgets}{Squirms and fidgets (Never, Sometimes, Often, Very Often);}
#'   \item{CantStaySeated}{Can't stay seated (Never, Sometimes, Often, Very Often);}
#'   \item{RunsExcessively}{Runs/climbs excessively (Never, Sometimes, Often, Very Often);}
#'   \item{CantPlayQuietly}{Can't play/work quietly (Never, Sometimes, Often, Very Often);}
#'   \item{OnTheGo}{On the go, "driven by a motor" (Never, Sometimes, Often, Very Often);}
#'   \item{TalksExcessively}{Talks excessively (Never, Sometimes, Often, Very Often);}
#'   \item{BlurtsOutAnswers}{Blurts out answers (Never, Sometimes, Often, Very Often);}
#'   \item{CantWaitForTurn}{Can't wait for turn (Never, Sometimes, Often, Very Often);}
#'   \item{IntrudesOthers}{Intrudes/interrupts others (Never, Sometimes, Often, Very Often);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Jiang, Z., Ma, W., Flory, K., Zhang, D., Zhou, W., Shi, D., ... & Liu, R. (2023). Development of a computerized adaptive testing for ADHD using Bayesian networks: An attempt at classification. Current Psychology, 42(22), 19230-19240.
"adhd"
