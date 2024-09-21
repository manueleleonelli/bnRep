#' electrolysis Bayesian Network
#'
#' Safety analysis of proton exchange membrane water electrolysis system.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to analyze evolving hazard scenarios, such as gas permeation/crossover during proton exchange membrane water electrolysis based on fluid dynamics and electrochemistry of electrolysis. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{C}{Operating current density (High, Low);}
#'   \item{F}{Formation of hazardous H2/O2 gas mixture (Yes, No);}
#'   \item{FPR}{Formation of peroxide radicals which can cause membrane degradation (Yes, No);}
#'   \item{GP}{Gas permeation (Yes, No);}
#'   \item{GRE}{Gas recombiner employed (Yes, No);}
#'   \item{H}{Relative humidity (High, Low);}
#'   \item{HCF}{Hazardous condition formation (Yes, No);}
#'   \item{HOR}{H2 and O2 recombination at catalyst/membrane surface (Yes, No);}
#'   \item{IOA}{Inhibiting oxygen accumulation (Yes, No);}
#'   \item{IRF}{Inhibiting reaching flammability range (Yes, No);}
#'   \item{P}{Operating pressure (High, Low);}
#'   \item{RGP}{Reduction in gas purity (Yes, No);}
#'   \item{SBT}{Surface/bulk treatments of the polymeric membrane (Yes, No);}
#'   \item{SMT}{Sufficient membrane thickness (Yes, No);}
#'   \item{T}{Operating temperature (High, Low);}
#'   \item{V}{Operating cell voltage (High, Low);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Liu, Y., Amin, M. T., Khan, F., & Pistikopoulos, E. N. (2023). Safety analysis of proton exchange membrane water electrolysis system. Journal of Environmental Chemical Engineering, 11(5), 110772.
"electrolysis"
