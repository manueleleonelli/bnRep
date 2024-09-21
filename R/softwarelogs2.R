#' softwarelogs Bayesian Networks
#'
#' Bayesian Network analysis of software logs for data‐driven software maintenance.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to discover poor performance indicators in a system and to explore usage patterns that usually require temporal analysis. The networks are given in the referenced paper. The vertices are:
#' \describe{
#'  \item{page_t_0}{(A128GCM, dir, HS512, SunJSSE version 1.8, AdminCron, AdminLeagues, AdminMarket, AdminNotices, AdminSuggestion, AdminSuggestions, AdminUser, AdminUsers, AllLeagues, Bid, Calendar, Classification, Cron, DirectorOfChess, ErrorPage, Finance, Help, Index, Invite, LastMovements, League, Lineup, Market, MarketOperations, NewAccount, NewPassword, NewSuggestion, OfferPlayer, OldSeasons, Play, Player, Privacy, Results, SearchPlayer, Start, Team, Trainer, Transactions, UserConfiguration, ViewOffers);}
#'    \item{user_type_t_0}{(active, ocasional, regular, very active);}
#'    \item{load_time_t_0}{(high, low, medium, optimal);}
#'    \item{time_on_page_t_0}{(high, low, medium, very low).}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references del Rey, S., Martinez-Fernandez, S., & Salmeron, A. (2023). Bayesian Network analysis of software logs for data-driven software maintenance. IET Software, 17(3), 268-286.
"softwarelogs2"

