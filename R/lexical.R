#' Lexical Bayesian Network
#'
#' Accounting for the relationship between lexical prevalence and acquisition with Bayesian networks and population dynamics.
#' @usage NULL
#'
#' @format
#' A Gaussian Bayesian network to analyze various measures of lexical dispersion and assess the extent to which they are linked to age of acquisition. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{aoa}{Age of aquisition;}
#'   \item{area}{Area in which the word is known;}
#'   \item{genre_disp}{Dispersion across genres;}
#'   \item{log_freq}{Logarithm of word frequency;}
#'   \item{log_range}{Logarithm of dispersion across texts;}
#'   \item{prev_heard}{Fraction of speakers that have already heard a word;}
#'   \item{prev_used}{Fraction of speakers that have already used a word;}
#'   \item{social_disp}{Entropy of educational status per word;}
#' }
#'
#'
#' @keywords GBN
#' @importClassesFrom bnlearn bn.fit
#' @references Baumann, A., & Sekanina, K. (2022). Accounting for the relationship between lexical prevalence and acquisition with Bayesian networks and population dynamics. Linguistics Vanguard, 8(1), 209-224.
"lexical"
