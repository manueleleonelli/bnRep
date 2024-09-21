#' dragline Bayesian Network
#'
#' Bayesian network approach for dragline reliability analysis: A case study.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the evaluation of the reliability of a draglines system. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{X1}{Teeth Failure (True, False);}
#' \item{X2}{Adapter failure (True, False);}
#' \item{X3}{Equalizer pins (True, False);}
#' \item{X4}{Anchor pins (True, False);}
#' \item{X5}{Hitch shackle pins (True, False);}
#' \item{X6}{Drag motor failure (True, False);}
#' \item{X7}{Drag motor failure2 (True, False);}
#' \item{X8}{Control system failure (True, False);}
#' \item{X9}{Drag rope failure (True, False);}
#' \item{X10}{Gearbox failure (True, False);}
#' \item{X11}{Drag drum failure (True, False);}
#' \item{X12}{Drag chain failure (True, False);}
#' \item{X13}{Drag brake failure (True, False);}
#' \item{X14}{Drag socket failure (True, False);}
#' \item{X15}{Drag pulley failure (True, False);}
#' \item{X16}{Dump rope failure (True, False);}
#' \item{X17}{Dump socket failure (True, False);}
#' \item{X18}{Dump pulley failure (True, False);}
#' \item{X19}{Hoist motor 1 failure (True, False);}
#' \item{X20}{Hoist motor 2 failure (True, False);}
#' \item{X21}{Hoist rope failure (True, False);}
#' \item{X22}{Control system failure (True, False);}
#' \item{X23}{Hoist chain failure (True, False);}
#' \item{X24}{Hoist brake failure (True, False);}
#' \item{X25}{Rotate frame failure (True, False);}
#' \item{X26}{Roller failure (True, False);}
#' \item{X27}{Gearbox failure (True, False);}
#' \item{X28}{Control system failure (True, False);}
#' \item{X29}{Swing motor failure (True, False);}
#' \item{X30}{Swing motor failure (True, False);}
#' \item{X31}{Exciter failure (True, False);}
#' \item{X32}{M.G. set failure (True, False);}
#' \item{X33}{Synchronous motor failure (True, False);}
#' \item{X34}{DC problem failure (True, False);}
#' \item{X35}{Power failure (True, False);}
#' \item{X36}{Trailing cable failure (True, False);}
#' \item{X37}{Compressor failure (True, False);}
#' \item{X38}{Lubrication system failure (True, False);}
#' \item{X39}{Guide pulley failure (True, False);}
#' \item{X40}{Boom light failure (True, False);}
#' \item{A1}{(True, False);}
#' \item{A2}{(True, False);}
#' \item{A3}{(True, False);}
#' \item{S1}{Bucket and accessories (True, False);}
#' \item{S2}{Drag mechanism (True, False);}
#' \item{S3}{Rigging mechanism (True, False);}
#' \item{S4}{Hoisting mechanism (True, False);}
#' \item{S5}{Swing mechanism (True, False);}
#' \item{S6}{Electrical auxiliary (True, False);}
#' \item{S7}{Other subsystem (True, False);}
#' \item{Dragline}{(True, False);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseTree
#' @importClassesFrom bnlearn bn.fit
#' @references Kumar, D., Jana, D., Gupta, S., & Yadav, P. K. (2023). Bayesian network approach for dragline reliability analysis: A case study. Mining, Metallurgy & Exploration, 40(1), 347-365.
"dragline"
