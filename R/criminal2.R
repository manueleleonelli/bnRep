#' criminal Bayesian Networks
#'
#' Using agent-based simulations to evaluate Bayesian networks for criminal scenarios.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network describing a criminal scenario (bottom-left of Figure 3). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{Motive}{(0,1);}
#'   \item{Sneak}{(0,1);}
#'   \item{Stealing}{(0,1);}
#'   \item{EPsychReport}{(0,1);}
#'   \item{ObjectDroppedAccidentally}{(0,1);}
#'   \item{ECameraSeenStealing}{(0,1);}
#'   \item{EObjectGone}{(0,1);}
#'   \item{ECamera}{(0,1);}
#'   \item{Scenario1}{(0,1);}
#'   \item{Scenario2}{(0,1);}
#'   \item{Scenari3}{(0,1);}
#'   \item{Constraint}{(Scenario1, Scenario2, Scenario3, NA);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references van Leeuwen, L., Verheij, B., Verbrugge, R., & Renooij, S. (2023, June). Using agent-based simulations to evaluate Bayesian Networks for criminal scenarios. In Proceedings of the Nineteenth International Conference on Artificial Intelligence and Law (pp. 323-332).
"criminal2"
