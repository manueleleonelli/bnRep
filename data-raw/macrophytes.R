
library(bnlearn)

dag <- model2network("[Phytoplankton|Disturbance:Resources][Resources|BenthicFishForaging:NutrientLoading:Light][Disturbance|Zooplankton:Flow][NutrientLoading][Zooplankton|PlanktivorousFish:Flow][Flow|Ecosystem:PlantRemoval][Light|Ecosystem:PlantRemoval][BenthicFishForaging|EpiphyticInvertebrates][PlanktivorousFish|PiscivorousFishPredation][EpiphyticInvertebrates|Ecosystem:PlantRemoval][Ecosystem][PiscivorousFishPredation|PiscivorousFish:PlantRemoval][EcosystemServices][PlantRemoval|EcosystemServices][PiscivorousFish]")
lvEcosystem <- c("Flooding","Birds","Nutrient retention", "Angling", "Swimming", "Boating", "Hydropower", "Irrigation", "Invasive species")
lvPlant <- c("None","Partial", "Full")
lvPiscivorous <- c("Absent", "Present")
lv <- c("Low", "High")
lvEco <- c("Standing floating", "Standing submerged", "Flowing submerged")
lv1 <- c("Low","Medium","High")

EcosystemServices <- array(c(0.1,0,0.1,0.4,0.1,0,0.2,0.1,0),9,list(EcosystemServices=lvEcosystem))
PlantRemoval <- array(0.01*c(0,25,75,100,0,0,75,25,0,0,100,0,0,25,75,0,0,100,0,25,75,0,50,50,0,0,100),c(3,9),list(PlantRemoval=lvPlant,EcosystemServices=lvEcosystem))
PiscivorousFish <- array(c(0.5,0.5),2,list(PiscivorousFish=lvPiscivorous))
PiscivorousFishPredation <- array(0.01*c(100,0,100,0,100,0,50,50,100,0,0,100),c(2,2,3),list(PiscivorousFishPredation=lv,PiscivorousFish=lvPiscivorous,PlantRemoval=lvPlant))
Ecosystem <- array(c(1/3,1/3,1/3),3,list(Ecosystem=lvEco))
EpiphyticInvertebrates <-  array(c(0.75,0.25,0, 0,0.25,0.75, 0,0.25,0.75,   0.5,0.5,0,   0,0.25,0.75,   0,0.25,0.75,   0.25,0.5,0.25,  1,0,0,  1,0,0),c(3,3,3),list(EpiphyticInvertebrates=lv1,Ecosystem=lvEco,PlantRemoval=lvPlant))
PlanktivorousFish <-array(c(0,1,1,0),c(2,2),list(PlanktivorousFish=lv,PiscivorousFishPredation=lv))
BenthicFishForaging <- array(c(0,0,1,0,1,0,1,0,0), c(3,3),list(BenthicFishForaging=lv1,EpiphyticInvertebrates=lv1))
Light <- array(c(1,0,0.5,0.5,0.5,0.5,0.5,0.5,0.25,0.75,0.25,0.75,0,1,0,1,0,1),c(2,3,3),list(Light=lv,Ecosystem=lvEco,PlantRemoval=lvPlant))
Flow <- array(c(1,0,0,1,0,0,0.75,0.25,0, 1,0,0, 1,0,0, 0,0.5,0.5, 1,0,0,1,0,0, 0,0,1),c(3,3,3),list(Flow=lv1, Ecosystem=lvEco,PlantRemoval=lvPlant))
Zooplankton <- array(c(0,0,1,0.5,0.5,0,0,1,0, 0.75,0.25,0,1,0,0,1,0,0),c(3,2,3),list(Zooplankton=lv1,PlanktivorousFish=lv,Flow=lv1))
NutrientLoading <- array(c(0.525,0.275,0.20),c(3),list(NutrientLoading=lv1))
Disturbance <- array(c(1,0,0,0,1,0,0,0.75,0.25,0,1,0,0,0.5,0.5,1/3,1/3,1/3,0,0,1,1/3,1/3,1/3,1/3,1/3,1/3),c(3,3,3),list(Disturbance=lv1,Zooplankton=lv1,Flow=lv1))
Resources <- array(c(1,0,0,  0.9,0.1,0, 0.8,0.2,0, 0.75,0.25,0, 0.7,0.3,0, 0.65,0.35,0, 0.5,0.5,0, 0.5,0.5,0,  0.5,0.5,0,  0.75,0.25,0 ,0.5,0.5,0, 0.25,0.75,0,  0,0.75,0.25,  0,0.65,0.35,  0,0.55,0.45, 0,0,1,0,0,1,0,0,1), c(3,3,3,2),list(Resources=lv1,BenthicFishForaging=lv1,NutrientLoading=lv1,Light=lv))
Phytoplankton <- array(c(0.5,0.5,0, 0.75,0.25,0,  1,0,0,  0,0.5,0.5, 0,1,0, 0.5,0.5,0,0,0,1,0,0.5,0.5,0,1,0),c(3,3,3),list(Phytoplankton=lv1,Disturbance=lv1,Resources=lv1))

macrophytes <- custom.fit(dag,list(
  EcosystemServices=EcosystemServices,PlantRemoval=PlantRemoval,
  PiscivorousFish=PiscivorousFish,Light=Light,Phytoplankton=Phytoplankton,
  PiscivorousFishPredation=PiscivorousFishPredation,
  Ecosystem=Ecosystem,EpiphyticInvertebrates=EpiphyticInvertebrates,
  PlanktivorousFish=PlanktivorousFish,NutrientLoading=NutrientLoading,
  BenthicFishForaging=BenthicFishForaging,Resources=Resources,
  Flow=Flow,Zooplankton=Zooplankton,Disturbance=Disturbance
))


usethis::use_data(macrophytes, overwrite = TRUE)
