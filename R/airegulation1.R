#' airegulation Bayesian Networks
#'
#' Understanding support for AI regulation: A Bayesian network perspective.
#'
#' @usage NULL
#' @format
#' A discrete Bayesian network to understand public perceptions towards AI (full BN of the paper). The BN was learned from data. The vertices are:
#' \describe{
#'   \item{Age}{(14-29, 30-44, 45-59, 60+);}
#'   \item{AIEasierLife}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{AIFalseInfo}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{AIFieldBenefit}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{AIHealthcareBenefit}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree,Don_t_know);}
#'   \item{AIReduceShortageWorkers}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{AIRegulations}{(No, Yes);}
#'   \item{AIUncontrollable}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{AIvsHuman}{(Strongly_disagree, Somewhat_disagree, Somewhat_agree, Strongly_agree);}
#'   \item{DevelopAI}{(Risk, Opportunity, Both);}
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
"airegulation1"
