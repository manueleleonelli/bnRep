#' suffocation Bayesian Network
#'
#'
#' Human-related hazardous events assessment for suffocation on ships by integrating Bayesian network and complex network.
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network to investigate the human-related factors associated with suffocation on ships during docking repair. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{N4}{The safety supervisor on board the ship did not perceive the unsafe actions of the operators and failed to correct the inappropriate operations;}
#' \item{N5}{The representative of the ship owner was absent during the operation;}
#' \item{N8}{Nitrogen leakage}
#' \item{N10}{The safety management department of the shipyard failed to strictly implement all safety measures during the holiday season;}
#' \item{N11}{The safety management department of the shipyard did not attach great importance to the safety of the operation on site, and the safety issues were not paid much attention;}
#' \item{N12}{The quality management system in the safety management department was found be defective in the aspect of the required process guidance documents;}
#' \item{N13}{The shipyard failed to effectively supervise the operators on site to strictly implement the safety management system and the operation instruction;}
#' \item{N14}{The safety management department of the shipyard did not strictly implement the safety management regulations - there was no confirmation of the key operation;}
#' \item{N16}{The superintendent of the civil marine project failed to effectively supervise the issues in risk prevention;}
#' \item{N17}{The managers and officers in the civil marine project failed to pay much attention to the preventive measures in the field of safety when formulating the operation plan;}
#' \item{N18}{The superintendent of the civil marine project did not eliminate the potential dangers for the common operation in time;}
#' \item{N20}{The nitrogen accumulated in the enclosed space on site;}
#' \item{N22}{The person in charge of the operation on site did not implement safety-related regulations, such as confirmation, lighting, and supervision;}
#' \item{N23}{The person in charge of the operation on site failed to give input on the operation environment and provide caution to the operators;}
#' \item{N24}{The person in charge of the on-site operation did not confirm the ventilation;}
#' \item{N25}{The operators on site did not implement the required risk-prevention measures for the operation in the limited space;}
#' \item{N26}{The operator on site did not apply for a permit for the operation procedures;}
#' \item{N27}{The person in charge of the operation on site failed to check the operation permit in the limited space before the operation;}
#' \item{N28}{The person in charge of the operation on site did not confirm the implementation of gas detection;}
#' \item{N29}{The person in charge of the operation on site did not effectively perform their designated responsibility during the operation;}
#' \item{N30}{The work associated with risk identification before the operation was not performed by the person in charge of the operation;}
#' \item{N32}{The removing of the U pipe containing nitrogen in the enclosed space is usually characterized by high risk, which was not did not receive due attention from the operators on site;}
#' \item{N33}{The risk-prevention measures applicable for the enclosed space were not in place before the operation, and various potential risks were not effectively identified;}
#' \item{N34}{The process guidance documents for the officers in the general assembly department were absent;}
#' \item{N35}{The officers in the general assembly department failed to identify all the risks associated with the temporary operation;}
#' \item{N36}{The officers in the general assembly department failed to implement the safety-related measures designed for the holiday season;}
#' \item{N37}{The person on duty in the general assembly department did not perform their responsibilities effectively;}
#' \item{N38}{The officers in the general assembly department failed to implement the safety training for the temporary operators in relation to operative environments and the potential risks;}
#' \item{N39}{The officers in the general assembly department did not effectively perform their supervision and risk monitoring responsibilities;}
#' \item{N40}{Most of the people involved in the accident were found to have low awareness of the safety-related issues during the May 1st Labor Day;}
#'  \item{UA}{Unsafe acts;}
#'  \item{UP}{Precondition for unsafe acts;}
#'  \item{US}{Unsafe supervision;}
#'  \item{OI}{Organizational influence;}
#'  \item{PersonnelSuffocation}{}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords GBN ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Qiao, W., Guo, H., Huang, E., Deng, W., Lian, C., & Chen, H. (2022). Human-Related Hazardous Events Assessment for Suffocation on Ships by Integrating Bayesian Network and Complex Network. Applied Sciences, 12(14), 6905.
"suffocation"
