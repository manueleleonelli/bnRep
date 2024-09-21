#' fire Bayesian Network
#'
#'
#' Psychological response in fire: A fuzzy Bayesian network approach using expert judgment.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model causal relationship of psychological response at the initial stage of fire events. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{AudioFireCues}{(Yes, No);}
#' \item{EmotionalStability}{(Stable, Unstable);}
#' \item{Escape}{(True, False);}
#' \item{FireCues}{(Consistent, Not consistent);}
#' \item{FireKnowledge}{(Yes, No);}
#' \item{LayoutFamiliarity}{(Yes, No);}
#' \item{PerceivedHazard}{(Risky, Not risky);}
#' \item{PsychologicalIncapacitation}{(Mild, Severe);}
#' \item{Stress}{(Low, High);}
#' \item{TimePressure}{(Low, High);}
#' \item{VisualFireCues}{(Yes, No);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ramli, N., Ghani, N. A., Ahmad, N., & Hashim, I. H. M. (2021). Psychological response in fire: a fuzzy Bayesian network approach using expert judgment. Fire Technology, 57, 2305-2338.
"fire"
