#' metal Bayesian Network
#'
#' Bayesian belief network modeling of accident occurrence in metal lathe machining operations.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model the uncertainty surrounding the occurrence of a fly-out accident during metal lathe machining operations and its corresponding consequences. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'  \item{CAF}{Chuck association fault (Okay, Faulty);}
#'  \item{WHF}{Workpiece holding failure (N-Fail, FLRE);}
#'  \item{TPF}{Tool-post fault (Okay, Faulty);}
#'  \item{CF}{Coolant fault (Okay, Faulty);}
#'  \item{OS}{Operating speed (Proper, Improper);}
#'  \item{SGF}{Safety guards faul (Okay, Faulty);}
#'  \item{IFR}{Wrong feed rate (HR, HE);}
#'  \item{FlyOutAccident}{(Fatal, Major, Minor).}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords ReverseNaiveBayes
#' @importClassesFrom bnlearn bn.fit
#' @references Akinyemi, O. O., Adeyemi, H. O., Olatunde, O. B., Folorunsho, O., & Musa, M. B. (2022). Bayesian belief network modeling of accident occurrence in metal lathe machining operations. Mindanao Journal of Science and Technology, 20(2).
"metal"
