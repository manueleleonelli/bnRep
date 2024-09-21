#' algal Bayesian Networks
#'
#' Seasonal forecasting of lake water quality and algal bloom risk using a continuous Gaussian Bayesian networks.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to to forecast, in spring, mean total phosphorus and chlorophyll a concentration, mean water colour, and maximum cyanobacteria biovolume for the upcoming growing season (May–October) in Vansjø. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{ChiA}{Mean lake chl a concentration - Current (Low, High);}
#'   \item{ChiA_PS}{Mean lake chl a concentration - Previous (Low, High);}
#'   \item{Colour}{Mean lake colour (Low, Medium, High);}
#'   \item{Cyanobacteria}{Mean lake cyanobacterial biovolume (Low, High);}
#'   \item{RainSum}{Precipitation sum (Low, High);}
#'   \item{TP}{Mean lake TP concentration - Current (Low, High);}
#'   \item{TP_PS}{Mean lake TP concentration - Previous (Low, High);}
#'   \item{WindSpeed}{Mean daily mean wind speed (Low, High);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Jackson-Blake, L. A., Clayer, F., Haande, S., Sample, J. E., & Moe, S. J. (2022). Seasonal forecasting of lake water quality and algal bloom risk using a continuous Gaussian Bayesian network. Hydrology and Earth System Sciences, 26(12), 3103-3124.
#'
"algal1"
