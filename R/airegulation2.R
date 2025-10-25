#' airegulation Bayesian Networks
#'
#' Understanding support for AI regulation: A Bayesian network perspective.
#'
#' @usage NULL
#' @format
#' A discrete Bayesian network to understand public perceptions towards AI (risk BN of the paper). The BN was learned from data. The vertices are:
#' \describe{
#'   \item{Age}{(14-29, 30-44, 45-59, 60+);}
#'   \item{AI_Risk_data}{(Not_mentioned, Mentioned);}
#'   \item{AI_Risk_Jobs}{(Not_mentioned, Mentioned);}
#'   \item{AI_Risk_LossOfControl}{(Not_mentioned, Mentioned);}
#'   \item{AI_Risk_Misuse_Regulation}{(Not_mentioned, Mentioned);}
#'   \item{AI_Risk_Society}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{AIRegulations}{(No, Yes);}
#'   \item{Education}{(Low, Medium, High);}
#'   \item{EUAppropriateRegulation}{(Appropriate, Too_strict, Not_strict_enough, Don_t_know);}
#'   \item{FriendsAI}{(No, Yes);}
#'   \item{HeardEURegulation}{(No, Yes);}
#'    \item{Income}{(Low, Medium, High, Not_reported);}
#'     \item{InformedAI}{(Very_poor, Rather_poor, Rather_good, Very_good);}
#'      \item{InterestAI}{(Not_at_all, Less_strongly, Strongly, Very_strongly);}
#'       \item{MediaAI}{(No, Yes);}
#'        \item{Municipality}{(<5k, 5k-19k, 20k-99k, 100k-499k, 500k+);}
#'         \item{SearchAI}{(No, Yes);}
#'          \item{Sex}{(Female, Male);}
#'           \item{VoteIntent}{(Left, Right, Other);}
#'
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit

#' @references Cremaschi, A., Lee, D. J., & Leonelli, M. (2025). Understanding support for AI regulation: A Bayesian network perspective. International Journal of Engineering Business Management, 17, 18479790251383310.
#'
"airegulation2"
