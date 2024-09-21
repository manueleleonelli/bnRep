#' agropastoral Bayesian Networks
#'
#' Exploring the role of ecology and social organisation in agropastoral societies: A Bayesian network approach.
#'
#' @usage NULL
#' @format
#' A discrete Bayesian network to explore the relationship between social organisation and subsistence strategies. The structure of the BN was given within the referenced paper together with a dataset. Probabilities were learned using the dataset and the discretization mentioned in the paper. The vertices are:
#' \describe{
#'   \item{Community_Organisation}{(Clan communities, Missing, No exogamous clans);}
#'   \item{Community_Size}{(<200, >=200);}
#'   \item{Gathering}{(None, <25, >=25);}
#'   \item{Household_Organisation}{(Small extended, Large extended, Nuclear);}
#'   \item{Settlement_Types}{(Camp, Hamlet, Homesteads, Village);}
#'   }
#'
#' @importClassesFrom bnlearn bn.fit
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#'
#' @keywords NaiveBayes
#' @references Palacios, O., Barceló, J. A., & Delgado, R. (2022). Exploring the role of ecology and social organisation in agropastoral societies: A Bayesian network approach. Plos One, 17(10), e0276088.
#'
"agropastoral5"
