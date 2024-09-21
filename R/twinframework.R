#' twinframework Bayesian Network
#'
#' Sustainable operation and maintenance modeling and application of building infrastructures combined with digital twin framework.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to identify critical factors during the in-service phase and achieve sustainable operation and maintenance for building infrastructures. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Weather}{(Fine weather, Bad weather);}
#' \item{SocialActivities}{(Active, No activity);}
#' \item{Time}{(Non-working hours, Working hours);}
#' \item{CampusActivities}{(Campus activities, No campus activities);}
#' \item{PersonnelType}{(Student, Social personnel);}
#' \item{EquipmentStatus}{(Good equipment, Equipment abnormality)}
#' \item{UsingPlayground}{(Use, Not in use);}
#'  }
#'
#' @keywords NULL
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @importClassesFrom bnlearn bn.fit
#' @references Jiao, Z., Du, X., Liu, Z., Liu, L., Sun, Z., & Shi, G. (2023). Sustainable Operation and Maintenance Modeling and Application of Building Infrastructures Combined with Digital Twin Framework. Sensors, 23(9), 4182.
"twinframework"
