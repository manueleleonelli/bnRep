#' adversarialbehavior Bayesian Network
#'
#' Inferring adversarial behaviour in cyber-physical power systems using a Bayesian attack graph approach.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to define and solve the inference problem of adversarial movement in the grid infrastructure towards targets of physical impact. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{RemoteAdversary}{(TRUE, FALSE);}
#'   \item{RootAccessFTPServer}{(TRUE, FALSE);}
#'   \item{FTPBasedBufferOverflow}{(TRUE, FALSE);}
#'   \item{RemoteBufferOverflowOnSSHDaemon}{(TRUE, FALSE);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Sahu, A., & Davis, K. (2023). Inferring adversarial behaviour in cyber-physical power systems using a Bayesian attack graph approach. IET Cyber-Physical Systems: Theory & Applications, 8(2), 91-108.
"adversarialbehavior"
