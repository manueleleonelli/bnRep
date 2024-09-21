#' lithium Bayesian Network
#'
#' Fire accident risk analysis of lithium battery energy storage systems during maritime transportation.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to o evaluate the fire accident risk of lithium battery energy storage system in the process of maritime transportation. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{X1}{Bad weather condition (True, False);}
#'   \item{X2}{Improper storage (True, False);}
#'   \item{X3}{Improper ballast (True, False);}
#'   \item{X4}{High ship speed (True, False);}
#'   \item{X5}{Defect of binding equipment (True, False);}
#'   \item{X6}{Improper maintenance of binding equipment (True, False);}
#'   \item{X7}{Improper binding (True, False);}
#'   \item{X8}{Contact accident (True, False);}
#'   \item{X9}{Collision accident (True, False);}
#'   \item{X10}{Direct sunlight (True, False);}
#'   \item{X11}{Stowage adjacent to engine room (True, False);}
#'   \item{X12}{Stowage adjacent to oil tank (True, False);}
#'   \item{X13}{High ambient temperature (True, False);}
#'   \item{X14}{Cargo hold flooding (True, False);}
#'   \item{X15}{No installation of short-circuit prevention device (True, False);}
#'   \item{X16}{High humidity (True, False);}
#'   \item{X17}{Lack of insulation (True, False);}
#'   \item{X18}{Overcharge (True, False);}
#'   \item{X19}{Over discharge (True, False);}
#'   \item{X20}{Defect of separate (True, False);}
#'   \item{X21}{Burrs on the electrode surface (True, False);}
#'   \item{X22}{No installation of monitoring devices (True, False);}
#'   \item{X23}{Monitoring equipment cannot cover all goods (True, False);}
#'   \item{X24}{Damage of monitoring equipment (True, False);}
#'   \item{X25}{The monitoring equipment does not have real-time alarm function (True, False);}
#'   \item{X26}{The crew does not patrol according to regulations (True, False);}
#'   \item{X27}{Insufficient firefighting equipment (True, False);}
#'   \item{X28}{Failure of firefighting equipment (True, False);}
#'   \item{X29}{Firefighting equipment is not suitable for putting out lithium battery fires (True, False);}
#'   \item{X30}{Crew members are not trained in lithium battery firefighting (True, False);}
#'   \item{X31}{(True, False);}
#'   \item{X1}{The crew did not know the correct way to put out the lithium battery fire (True, False);}
#'   \item{BindingFailure}{(True, False);}
#'   \item{ExternalShortCircuit}{(True, False);}
#'   \item{HighTemperature}{(True, False);}
#'   \item{Impact}{(True, False);}
#'   \item{ImproperOperation}{(True, False);}
#'   \item{InsufficientFirefightingCapacity}{(True, False);}
#'   \item{InsufficientFireMonitoring}{(True, False);}
#'   \item{InternalShortCircuit}{(True, False);}
#'   \item{LBESSCatchFire}{(True, False);}
#'   \item{LBESSFireAccident}{(True, False);}
#'   \item{PoorShipStability}{(True, False);}
#'   \item{ShortCircuit}{(True, False);}
#'   \item{UnableToPutOutFire}{(True, False);}
#'   \item{ViolentRolling}{(True, False);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Zhang, C., Sun, H., Zhang, Y., Li, G., Li, S., Chang, J., & Shi, G. (2023). Fire accident risk analysis of lithium battery energy storage systems during maritime transportation. Sustainability, 15(19), 14198.
"lithium"
