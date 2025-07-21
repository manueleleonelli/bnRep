#' realestate Bayesian Networks
#'
#' Disentangling spatial and structural drivers of housing prices through Bayesian networks: A case study of Madrid, Barcelona, and Valencia.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network modeling both spatial and structural drivers of house prices in the city of Madrid. The Bayesian network is learned as in the referenced paper. The vertices are:
#' \describe{
#'   \item{AC}{Air conditioning available (Yes, No);}
#'   \item{AGE}{Age of the building (New Development, Modern, Mid-Age, Historic);}
#'   \item{AREA}{Constructed area in square meters (Small, Medium, Large, Luxury);}
#'   \item{BATHS}{Number of bathrooms binned (Few, Moderate, Many));}
#'   \item{CENTRE}{Distance to city centre (Very Near, Near, Medium, Far);}
#'   \item{CONDITION}{Property condition (New Construction, Second Hand Renovation, Second Hand Good Condition);}
#'   \item{DENSITY}{Number of dwellings in the building (Low Medium, High, Very High-Density);}
#'   \item{DMAN}{Doorman service present (Yes, No);}
#'   \item{FLOOR}{Floor level in the building (Lower, Mid, Upper, Top);}
#'   \item{GARDEN}{Garden present (Yes, No);}
#'   \item{GREEN}{Distance to green space (Very Near, Near, Medium, Far);}
#'   \item{HEIGHT}{Maximum building height (Low-Rise, Mid-Rise, High-Rise, Skyscraper);}
#'   \item{LIFT}{Lift presente (Yes, No);}
#'   \item{MARKET}{Distance to supermaket (Very Near, Near, Medium, Far);}
#'   \item{METRO}{Distance to metro station (Very Near, Near, Medium, Far);}
#'   \item{NHBD}{Neighborhood frequency - quartile rank (Most Common, Frequent, Less Frequent, Rare);}
#'   \item{POOL}{Swimming pool present (Yes, No);}
#'   \item{PRICE}{Asking price per square meter - binned (Very Low, Low, Medium Low, Medium High, High, Luxury);}
#'   \item{PRKG}{Parking space available (Yes, No);}
#'   \item{QUALITY}{Cadastral building quality index (Low Value, Moderate Value, High Value, Very High Value);}
#'   \item{ROOMS}{Number of rooms - binned (Few, Moderate, Many);}
#'   \item{STREET1}{Distance to primary avenue (Very Near, Near, Medium, Far);}
#'   \item{STREET2}{Distance to secondary avenue (Very Near, Near, Medium, Far);}
#'   \item{STRG}{Storage room available (Yes, No);}
#'   \item{TRRC}{Terrace present (Yes, No);}
#'   \item{TYPE}{Property type (Studio, Duplex, Penthouse, Standard);}
#'   \item{WRDRB}{Built-in wardrobes (Yes, No);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Murga, A. G., & Leonelli, M. (2025). Disentangling Spatial and Structural Drivers of Housing Prices through Bayesian Networks: A Case Study of Madrid, Barcelona, and Valencia. arXiv preprint arXiv:2506.09539.
"realestate1"
