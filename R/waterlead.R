#' waterlead Bayesian Network
#'
#' Improved decision making for water lead testing in U.S. child care facilities using machine-learned Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to predict building-wide water lead risk in over 4,000 child care facilities in North Carolina according to maximum and 90th percentile lead levels from water lead concentrations at 22,943 taps. The Bayesian network was learned using the code in the referenced paper. The vertices are:
#' \describe{
#'   \item{Target}{(0, 1);}
#'   \item{PER_FREE}{((-Inf, 0.505], (0.505,0.956],(0.956, Inf]);}
#'   \item{PER_NON_WHITE}{((-Inf, 0.0996], (0.0996,0.958], (0.958, Inf]);}
#'   \item{TOTAL_ENROLL}{((-Inf, 2.69], (2.69, 22.8], (22.8, Inf]);}
#'   \item{nsamples}{((-Inf, 4.1], (4.1, 23], (23, Inf]);}
#'   \item{perc_filtered}{((-Inf, 0.169], (0.169, 0.725], (0.725, Inf]);}
#'   \item{head_start}{(0, 1);}
#'   \item{school}{(0, 1);}
#'   \item{home_based}{(0, 1);}
#'   \item{Y_N_FIXTURE_CHG}{(dk, no, yes);}
#'   \item{fixture_year_cat}{(1988to2014, after2014, pre1988);}
#'   \item{year_began_operating_cat}{(1988to2014, after2014, pre1988);}
#'   \item{type_binary}{(GW, SW);}
#'   \item{ph_binary}{(0, 1);}
#'   \item{chloramines}{(0, 1);}
#'   \item{connections_cat}{((1e+04,Inf], (3.3e+03, 1e+04], (1, 3.3e+03]);}
#'   \item{ruca_cat}{(Metropolitan, Micropolitan, Rural, Small town);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords TAN
#' @importClassesFrom bnlearn bn.fit
#' @references Mulhern, R. E., Kondash, A. J., Norman, E., Johnson, J., Levine, K., McWilliams, A., ... & Hoponick Redmon, J. (2023). Improved decision making for water lead testing in US child care facilities using machine-learned Bayesian networks. Environmental Science & Technology, 57(46), 17959-17970.
"waterlead"
