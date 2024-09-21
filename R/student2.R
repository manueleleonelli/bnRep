#' student Bayesian Networks
#'
#' A survey on datasets for fairness-aware machine learning.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling students' achievement in the secondary education of two Portuguese schools in 2005–2006 in the Mathematics subject. The DAG was taken from the referenced paper and the probabilities learned from the associated dataset. The vertices are:
#' \describe{
#' \item{activities}{Extra-curricular activities (yes, no);}
#' \item{address}{Student's home address type (Rural, Urban);}
#' \item{age}{Student's age (15, 16, 17, ..., 22);}
#' \item{class}{Final grade (< 10, >= 10);}
#' \item{failures}{Number of past class failures (0, 1, 2, 3);}
#' \item{famsize}{Race (non-white, white);}
#' \item{famsup}{Family size (Less or equal to 3, Greater than 3);}
#' \item{Fedu}{Father's education (None, Primary Education, 5th to 9th Grade, Secondary Education, Higher Education);}
#' \item{Fjob}{Father's job (At Home, Healthcare Related, Other, Civil Services, Teacher);}
#' \item{G1}{First period grade (< 10, >= 10);}
#' \item{G2}{Second period grade (< 10, >= 10);}
#' \item{goout}{Going out with friends (Very Low, Low, Medium, High, Very High);}
#' \item{guardian}{Student's guardian (Mother, Father, Other);}
#' \item{higher}{Wants to take higher education (yes, no);}
#' \item{internet}{Internet access at home (yes, no);}
#' \item{Medu}{Mother's education (None, Primary Education, 5th to 9th Grade, Secondary Education, Higher Education);}
#' \item{Mjob}{Mother's job (At Home, Healthcare Related, Other, Civil Services, Teacher);}
#' \item{nursery}{Attended nursery school (yes, no);}
#' \item{paid}{Extra paid classes within the course subject (yes, no);}
#' \item{Pstatus}{Parent's cohabitation status (Living together, Apart);}
#' \item{reason}{Reason to choose this school (Close to Home, School Reputation, Course Preference, Other);}
#' \item{romantic}{With a romantic relationship (yes, no);}
#' \item{school}{Student's school (Gabriel Pereira, Mousinho da Silveira);}
#' \item{schoolsup}{Extra educational support (yes, no);}
#' \item{sex}{Student's sex (Female, Male);}
#' \item{traveltime}{Home to school travel time (Less than 15min, 15 to 30 mins, 30 mins to 1 hour, More than 1 hour);}
#' }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Le Quy, T., Roy, A., Iosifidis, V., Zhang, W., & Ntoutsi, E. (2022). A survey on datasets for fairness-aware machine learning. Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery, 12(3), e1452.
"student2"
