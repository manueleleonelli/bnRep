#' kosterhavet Bayesian Network
#'
#' A Bayesian network to inform the management of key species in Kosterhavet National Park under contrasting storylines of environmental change.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to predict the consequences of human activities for coastal ecosystems and identify areas for directed abatement measures. Probabilities were given within the referenced paper (missing probabilities were given a uniform distribution). The vertices are:
#' \describe{
#'   \item{LeisureBoating}{Boats per year in marinas and natural harbors (for natural harbors only high season from Jul. 01 to Aug. 07 considered) within Kosterhavet National Park (Low, Medium, High);}
#'   \item{TrawlingFrequency}{Number of trawling events per area and year within Kosterhavet National Park (Low, High);}
#'   \item{MusselCultivation}{Extent of oysters and blue mussels farms within Kosterhavet National Park (Low, Medium, High, Very high);}
#'   \item{DevelopedLand}{Proportion of developed land in the catchments of marine water bodies (Low, High);}
#'   \item{AgriculturalLand}{Proportion of agricultural land in the catchments of marine water bodies (Low, Medium, High);}
#'   \item{TNExchange}{Annual net total nitrogen exchange between marine water bodies (Low, Medium, High);}
#'   \item{TPExchange}{Annual net phosphorus exchange between marine water bodies (Low, Medium, High);}
#'   \item{RadiativeForcing}{Scenarios of radiative forcing till the end of 2100 (Current, RF45, RF85);}
#'   \item{Precipitation}{Annual mean precipitation on land within the catchments of marine water bodies (Low, High);}
#'   \item{Discharge}{Sum of discharges from rivers and runoff from land into marine water bodies (Low, Medium, High);}
#'   \item{Wind}{Maximum summer (Jun.-Aug.) offshore wind speed (Low, Medium, High);}
#'   \item{DIN}{Mean winter (Dec.-Feb.) dissolved inorganic nitrogen concentration in surface waters (Low, Medium, High);}
#'   \item{DIP}{Mean winter (Dec.-Feb.) dissolved inorganic phosphorus concentration in surface waters (Low, Medium, High);}
#'   \item{POM}{Annual mean concentration POM (POC - chl-a) (Low, High);}
#'   \item{NutrientEnrichmentRisk}{Dependent on combination of states of DIN, DIP and POM (Low, Medium, High);}
#'   \item{Noise}{Noise from leisure boats (Low, Medium, High);}
#'   \item{AnchorDamageRisk}{Risk of seafloor in shallow bays being impacted by anchor damage of leisure boats (Low, High);}
#'   \item{WaterTemperatureShallow}{Mean summer (Jun.- Aug.) sea surface temperature - depth < 10m (Low, Medium, High);}
#'   \item{Transparency}{Mean summer (Jun-Aug) Secchi depth (Low, Medium, High);}
#'   \item{OxygenShallow}{Lowest percentile of summer (Jun.-Aug.) oxygen concentration of surface water - depth < 10m (Low, Medium, High);}
#'   \item{OxygenDeep}{Lowest percentile of summer (Jun.-Aug.) oxygen concentration of surface water - depth < 60m (Low, Medium, High);}
#'   \item{Turbidity}{Amount of dry weight (Low, Medium, High);}
#'   \item{BottomSubstrate}{Type of bottom substrate (Soft, Hard);}
#'   \item{SeafloorDisturbance}{Benthic quality index (Low, High);}
#'   \item{WaterTemperatureDeep}{Mean summer (Jun.- Aug.) sea surface temperature - depth < 60m (Low, High);}
#'   \item{TNLoad}{Annual load of total nitrogen to marine water bodies (Low, Medium, High);}
#'   \item{TPLoad}{Annual load of total phosphorus to marine water bodies (Low, Medium, High);}
#'   \item{SedimentLoad}{Annual sediment load to marine water bodies (Low, Medium, High);}
#'   \item{HabitatQuality}{Dependent on combination of states of oxygen (deep), turbidity (deep), seafloor disturbance (Low, Medium, High);}
#'   \item{Cod}{Catch per unit effor (Low, Medium, High);}
#'   \item{IntermediateFishPredators}{Abundance of intermediate fish predators (e.g. Gobiidae, three-spined stickleback) (Low, Medium, High);}
#'   \item{Mesograzers}{Abundance of mesograzers (e.g. amphipods, isopods)(Low, Medium, High);}
#'   \item{FilamentousAlgae}{Maximum summer (May-Aug.) cover of filamentous algae in eelgrass meadows (Low, Medium, High);}
#'   \item{Phytoplankton}{Mean summer (Jun.-Aug.) chl-a concentration (Low, Medium, High);}
#'   \item{Zooplankton}{Strongly responds to phytoplankton with weaker links to temperature and oxygen concentration (Low, Medium, High);}
#'   \item{Prey}{Dependent on combination of states of zooplankton and seafloor disturbance (Low, Medium, High);}
#'   \item{Eelgrass}{Extent of eelgrass meadows within Kosterhavet National Park  (Decrease, No change, Increase);}
#'   \item{NorthernShrimp}{Catch per unit effort (Decrease, No change, Increase);}
#' }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Rettig, K., Hansen, A. S., Obst, M., Hering, D., & Feld, C. K. (2023). A Bayesian network to inform the management of key species in Kosterhavet National Park under contrasting storylines of environmental change. Estuarine, Coastal and Shelf Science, 280, 108158.
"kosterhavet"
