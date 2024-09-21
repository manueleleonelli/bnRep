#' corical Bayesian Network
#'
#'
#' Risk-benefit analysis of the AstraZeneca COVID-19 vaccine in Australia using a Bayesian network modelling framework.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to perform risk-benefit analysis of vaccination. The probabilities were given in the referenced paper. The vertices are:
#' \describe{
#' \item{Age}{(0-9, 10-19, 20-29, 30-39, 40-49, 50-59, 60-69, 70+);}
#' \item{AZVaccineDoses}{(One, Two, Three, Four);}
#' \item{BackgroundCSVTOver6Weeks}{(Yes, No);}
#' \item{BackgroundPVTOver6Weeks}{(Yes, No);}
#' \item{Covid19AssociatedCSVT}{(Yes, No);}
#' \item{Covid19AssociatedPVT}{(Yes, No);}
#' \item{DieFromBackgroundCSVT}{(Yes, No);}
#' \item{DieFromBackgroundPVT}{(Yes, No);}
#' \item{DieFromCovid19}{(Yes, No);}
#' \item{DieFromCovid19AssociatedCSVT}{(Yes, No);}
#' \item{DieFromCovid19AssociatedPVT}{(Yes, No);}
#' \item{DieFromVaccineAssociatedTTS}{(Yes, No);}
#' \item{IntensityOfCommunityTransmission}{(None, ATAGI Low, ATAGI Med, ATAGI High, One Percent, Two Percent, NSW 200 Daily, NSW 1000 Daily, VIC 1000 Daily, QLD 1000 Daily);}
#' \item{RiskOfSymptomaticInfection}{(Yes, No);}
#' \item{RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus}{(Yes, No);}
#' \item{SARSCoV2Variant}{(Alpha Wild, Delta);}
#' \item{Sex}{(Male, Female);}
#' \item{VaccineAssociatedTTS}{(Yes, No);}
#' \item{VaccineEffectivenessAgainstDeathIfInfected}{(Effective, Not Effective);}
#' \item{VaccineEffectivenessAgainstSymptomaticInfection}{(Effective, Not Effective);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Lau, C. L., Mayfield, H. J., Sinclair, J. E., Brown, S. J., Waller, M., Enjeti, A. K., ... & Litt, J. (2021). Risk-benefit analysis of the AstraZeneca COVID-19 vaccine in Australia using a Bayesian network modelling framework. Vaccine, 39(51), 7429-7440.
"corical"
