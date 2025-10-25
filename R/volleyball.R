#' volleyball Bayesian Networks
#'
#' Modeling psychological profiles in volleyball via mixed-type Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model the psychological profiles of volleyball athletes. Probabilities are estimated from data. The vertices are:
#' \describe{
#' \item{agreeableness}{(One, Two, Three, Four, Five);}
#' \item{concentration_disruption}{(One, Two, Three, Four, Five, Six);}
#' \item{conscientiousness}{(One, Two, Three, Four, Five);}
#' \item{emotional_arousal}{(One, Two, Three, Four, Five, Six);}
#' \item{extraversion}{(One, Two, Three, Four, Five);}
#' \item{goal_setting}{(One, Two, Three, Four, Five, Six);}
#' \item{match_preparation}{(One, Two, Three, Four, Five, Six);}
#' \item{mental_practice}{(One, Two, Three, Four, Five, Six);}
#' \item{neuroticism}{(One, Two, Three, Four, Five);}
#' \item{openness}{(One, Two, Three, Four, Five);}
#' \item{self_confidence}{(One, Two, Three, Four, Five, Six);}
#'  \item{self_esteem}{(One, Two, Three, Four);}
#'   \item{self_talk}{(One, Two, Three, Four, Five, Six);}
#'   \item{worry}{(One, Two, Three, Four, Five, Six);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Iannario, M., Lee, D. J., & Leonelli, M. (2025). Modeling Psychological Profiles in Volleyball via Mixed-Type Bayesian Networks. arXiv preprint arXiv:2509.22111.
"volleyball"
