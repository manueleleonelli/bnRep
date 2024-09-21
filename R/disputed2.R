#' disputed Bayesian Networks
#'
#'
#'A template Bayesian network for combining forensic evidence on an item with an uncertain relation to the disputed activities.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the evaluation of transfer evidence given activity level propositions considering a dispute about the relation of an item to one or more activities (Figure 3). The probabilities were given in the referenced paper. The vertices are:
#' \describe{
#' \item{BGFibers}{Background on fibers matching Y top on sweater (false, true);}
#' \item{BGU}{Background DNA U on sweater (false, true);}
#' \item{CaseFind}{Case findings on sweater (false, true);}
#' \item{DNAfind}{DNA findings on sweater (DNA X, DNA U, DNA X + U, No DNA);}
#' \item{DNAU}{DNA U present on sweater (false, true);}
#' \item{DNAX}{DNA X present on sweater (false, true);}
#' \item{FiberFind}{Fiber findings on sweater(false, true);}
#' \item{FibersSweater}{Fibers matching Y garment on sweater (false, true);}
#' \item{ItemProposition}{Sweater worn by offender during incident (false, true);}
#' \item{Prop}{Who strangled person Y? (H1, H2);}
#' \item{TPRaltactX}{Transfer of DNA X from X to sweater via X wearing sweater two weekd before incident (false, true);}
#' \item{TPRUstrangledY}{Transfer of DNA U from U to sweater via U strangling Y (false, true);}
#' \item{TPRXstrangledY}{Transfer of DNA X from X to sweater via X strangling Y (false, true);}
#' \item{TPRYtoSweater}{Transfer of fibers from Y top to sweater during incident (false, true);}
#' \item{UstrangledY}{Unknown person strangled person Y (false, true);}
#' \item{Xaltact}{X wore sweater two weeks before incident (false, true);}
#' \item{XstrangledY}{Mr. X strangled person Y (false, true);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Vink, M., de Koeijer, J. A., & Sjerps, M. J. (2024). A template Bayesian network for combining forensic evidence on an item with an uncertain relation to the disputed activities. Forensic Science International: Synergy, 9, 100546.
"disputed2"
