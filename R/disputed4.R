#' disputed Bayesian Networks
#'
#'
#'A template Bayesian network for combining forensic evidence on an item with an uncertain relation to the disputed activities.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the evaluation of transfer evidence given activity level propositions considering a dispute about the relation of an item to one or more activities (Figure 10). The probabilities were given in the referenced paper. The vertices are:
#' \describe{
#' \item{BGFibersYtop}{Backgroun fibers present on Y top (false, true);}
#' \item{BGM}{Background fibers matching sweater present on Y top (false, true);}
#' \item{BGMnotM}{Background fibers not matching sweater present on Y top (false, true);}
#' \item{BGYonS}{Background of fibers matching Y top on sweater (false, true);}
#' \item{CaseFind}{Case findings on sweater (false, true);}
#' \item{DNAfind}{DNA findings on sweater (DNA X, DNA U, DNA X + U, No DNA);}
#' \item{DNAX}{DNA X present on sweater (false, true);}
#' \item{FiberfindSweater}{Fiber findings on Sweater (false, true);}
#' \item{FiberfindYtop}{Fiber findings on Y top (matching, not matching, both matching and not matching, no fibers);}
#' \item{FibersMSonY}{Fibers matching sweater on Y top (false, true);}
#' \item{FibersnotMSonY}{Fibers not matching sweater on Y top (false, true);}
#' \item{FibersYonS}{Fibers matching Y top on Sweater (false, true);}
#' \item{Prop}{Who strangled person Y? (H1, H2);}
#' \item{Sweater}{Sweater worn by Mr. X during incident (false, true);}
#' \item{TPRaltactX}{Transfer of DNA X from X to sweater via X wearing sweater two weekd before incident (false, true);}
#' \item{TPRStoYtop}{Transfer of fibers from sweater to Y top during incident (false, true);}
#' \item{TPRUtoYtop}{Transfer of fibers from unknown garment to Y top during incident (false, true);}
#' \item{TPRXstrangledY}{Transfer of DNA X from X to sweater via X strangling Y (false, true);}
#' \item{TPRYtoptoS}{Transfer of fibers from Y top to sweater during incident (false, true);}
#' \item{Unkown}{Unknown garment worn by offender during incident (false, true);}
#' \item{WhichGarment}{Which garment was worn by offender during incident? (sweater, unknown garment);}
#' \item{Xaltact}{X wore sweater two weeks before incident (false, true);}
#' \item{XstrangledY}{Mr. X strangled person Y (false, true);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Vink, M., de Koeijer, J. A., & Sjerps, M. J. (2024). A template Bayesian network for combining forensic evidence on an item with an uncertain relation to the disputed activities. Forensic Science International: Synergy, 9, 100546.
"disputed4"
