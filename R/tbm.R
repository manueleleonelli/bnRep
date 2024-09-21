#' tbm Bayesian Network
#'
#' Risk assessment of TBM jamming based on Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network  to assess the risk of tunnel boring machine jamming. The Bayesian network was learned as in the referenced paper. The vertices are:
#' \describe{
#'  \item{Expansive_Surrounding_Rock}{(High, Low, Medium, None);}
#'  \item{Fault_Zone}{(High, Low, Medium, None);}
#'  \item{In.Situ_Stress}{(High, Low, Medium, None);}
#'  \item{Large_Deformation_Surrounding_Rock}{(Serious, Slight);}
#'  \item{Rock_Mass_Classes}{(High, Low, Medium, None);}
#'  \item{Soft.Hard_Interbedded_Rock}{(High, Low, Medium, None);}
#'  \item{TBM_Jamming}{(No, Yes);}
#'  \item{Tunnell_Collapse}{(Serious, Slight);}
#'  \item{Underground_Water}{(High, Low, Medium, None);}
#'  \item{Water.And.Mud_Inrush}{(Serious, Slight);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Lin, P., Xiong, Y., Xu, Z., Wang, W., & Shao, R. (2022). Risk assessment of TBM jamming based on Bayesian networks. Bulletin of Engineering Geology and the Environment, 81, 1-15.
"tbm"
