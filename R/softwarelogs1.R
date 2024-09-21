#' softwarelogs Bayesian Networks
#'
#' Bayesian Network analysis of software logs for data‐driven software maintenance.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to discover poor performance indicators in a system and to explore usage patterns that usually require temporal analysis. The networks are given in the referenced paper. The vertices are:
#' \describe{
#' \item{error}{Error that has occured (com.mysql, etc.);}
#' \item{class}{Class that throws the error (chessleague.db, etc.);}
#' \item{severity}{Severity of the entry (SEVERE, WARNING, INFO);}
#' \item{method}{Method where the error has occured (deleteAccount, etc.);}
#' \item{thread_name}{Name of the thread (AutoDeployer, etc.);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references del Rey, S., Martinez-Fernandez, S., & Salmeron, A. (2023). Bayesian Network analysis of software logs for data-driven software maintenance. IET Software, 17(3), 268-286.
"softwarelogs1"



