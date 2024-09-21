#' fingermarks Bayesian Networks
#'
#'
#' Using case specific experiments to evaluate fingermarks on knives given activity level propositions.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the evaluation of fingermarks given activity level propositions. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{C1}{Propositions (Hp, Hd);}
#' \item{C2}{Suspect stabbed the victime with the knife (True, False);}
#' \item{C3}{Suspect cut food with the knife (True, False);}
#' \item{C4}{Marks on handle - stabbing (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C5}{Marks on back - stabbing (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C6}{Marks on blade - stabbing (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C7}{Marks on handle - cutting (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C8}{Marks on back - cutting (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C9}{Marks on blade - cutting (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C10}{Findings - Marks on handle (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C11}{Findings - Marks on blade (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#' \item{C12}{Findings - Marks on back (P, F, P_F, P_T, F_T, P_F_T, Undetermined, None);}
#'  }
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references de Ronde, A., Kokshoorn, B., de Puit, M., & de Poot, C. J. (2021). Using case specific experiments to evaluate fingermarks on knives given activity level propositions. Forensic Science International, 320, 110710.
"fingermarks2"
