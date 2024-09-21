#' vessel Bayesian Networks
#'
#' Analysis of fishing vessel accidents with Bayesian network and Chi-square methods.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to understand the occurrence of accidents in fishing vessels and to estimate the occurrence of accidents in variable conditions (Collision, Fig. 2). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{AlcoholDrugUse}{(Yes, No);}
#' \item{BridgeWithoutAWatchkeeper}{(Yes, No);}
#' \item{Collision}{(Yes, No);}
#' \item{Fatigue}{(Yes, No);}
#' \item{IntentionOfTargetVessel}{(Understood, Not understood);}
#' \item{InterShipCommunication}{(Proper, Improper);}
#' \item{Lookout}{(Proper, Improper);}
#' \item{Manning}{(Minimum num, Optimum num);}
#' \item{OccupationWithOtherTasks}{(Yes, No);}
#' \item{PresenceOfTargetVessel}{(Not Detected, Detected);}
#' \item{RestrictedVisibility}{(No, Yes);}
#'  \item{TypeOfNavigation}{(Coastal Waters, Off Shore, Port);}
#'   \item{UseOfNavigationEquipment}{(Adequate, Inadequate);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ugurlu, F., Yildiz, S., Boran, M., Ugurlu, O., & Wang, J. (2020). Analysis of fishing vessel accidents with Bayesian network and Chi-square methods. Ocean Engineering, 198, 106956.
"vessel2"
