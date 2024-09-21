#' electricvehicle Bayesian Network
#'
#' Electric vehicle fire risk assessment based on WBS-RBS and fuzzy BN coupling.
#'
#' @usage NULL
#'

#'
#' @format
#' A discrete Bayesian network to evaluate the risk of electric vehicle fire accidents. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ACF}{Air conditioning equipment failure (yes, no);}
#'   \item{AM}{Artificial modification (yes, no);}
#'   \item{AWE}{Not aware of early fire (yes, no);}
#'   \item{BEP}{Blocked exhaust pipe (yes, no);}
#'   \item{BF}{Battery failure (yes, no);}
#'   \item{BO}{Battery overcharge (yes, no);}
#'   \item{CBI}{The car body is ignited (yes, no);}
#'   \item{CEF}{Charging equipment fault (yes, no);}
#'   \item{CI}{Collision ignition (yes, no);}
#'   \item{DTH}{Defroster temperature too high (yes, no);}
#'   \item{EC}{Electrical circuit failure (yes, no);}
#'   \item{ECF}{Electronic component failure (yes, no);}
#'   \item{FFE}{The vehicle is not equipped with fire-fighting equipment (yes, no);}
#'   \item{HF}{Human factor (yes, no);}
#'   \item{IS}{Ignition source (yes, no);}
#'   \item{ISC}{Risk of internal spontaneous combustion of electric vehicles (yes, no);}
#'   \item{MMA}{Man made arson (yes, no);}
#'   \item{OFE}{The early open fire was not extinguished (yes, no);}
#'   \item{REI}{Risk of external ignition (yes, no);}
#'   \item{SBB}{(yes, no);}
#'   \item{SCB}{Short circuit in battery (yes, no);}
#'   \item{TLD}{Transmission line damage (yes, no);}
#'   \item{VFD}{Electric vehicle fire disaster (yes, no);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Chen, J., Li, K., & Yang, S. (2022). Electric vehicle fire risk assessment based on WBS-RBS and fuzzy BN coupling. Mathematics, 10(20), 3799.
"electricvehicle"
