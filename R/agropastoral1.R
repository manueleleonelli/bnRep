#' agropastoral Bayesian Networks
#'
#' Exploring the role of ecology and social organisation in agropastoral societies: A Bayesian network approach.
#'
#' @usage NULL
#' @format
#' A discrete Bayesian network to explore   the influence of the environment on subsistence strategies (Fig. 5 of the paper). The structure of the BN was given within the referenced paper together with a dataset. Probabilities were learned using the dataset and the discretization mentioned in the paper. The vertices are:
#' \describe{
#'   \item{Agriculture}{(None, <55, >=55);}
#'   \item{Anumal_Husbandry}{(None, <25, >=25);}
#'   \item{Annual_Temperature}{(low, medium, high);}
#'   \item{CV_Annual_Precipitation}{(low, medium, high);}
#'   \item{CV_Annual_Productivity}{(low, medium, high);}
#'   \item{CV_Annual_Temperature}{(low, medium, high);}
#'   \item{Distance_Coast}{(low, medium, high);}
#'   \item{Elevation}{(low, medium, high);}
#'   \item{Fishing}{(None, <25, >=25);}
#'   \item{Gathering}{(None, <25, >=25);}
#'   \item{Hunting}{(None, <25, >=25);}
#'   \item{Landscape}{(Aquatic, Tundra, Desert, Forest, Grassland);}
#'   \item{Monthly_Precipitation}{(low, medium, high);}
#'   \item{Monthly_Productivity}{(low, medium, high);}
#'    \item{Slope}{(low, medium, high);}
#'   }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit

#' @references Palacios, O., Barceló, J. A., & Delgado, R. (2022). Exploring the role of ecology and social organisation in agropastoral societies: A Bayesian network approach. Plos One, 17(10), e0276088.
#'
"agropastoral1"
