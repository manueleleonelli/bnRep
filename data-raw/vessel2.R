
library(bnlearn)

dag <- model2network("[Collision|IntentionOfTargetVessel:PresenceOfTargetVessel:RestrictedVisibility:TypeOfNavigation][IntentionOfTargetVessel|InterShipCommunication:Lookout:UseOfNavigationEquipment][PresenceOfTargetVessel|Lookout:UseOfNavigationEquipment:BridgeWithoutAWatchkeeper][InterShipCommunication|Lookout][UseOfNavigationEquipment|Lookout][Lookout|Fatigue:OccupationWithOtherTasks:AlcoholDrugUse][Fatigue|Manning][TypeOfNavigation][AlcoholDrugUse][RestrictedVisibility][Manning][OccupationWithOtherTasks|Manning][BridgeWithoutAWatchkeeper|OccupationWithOtherTasks]")

lv <- c("Yes","No")
lvM <- c("Minimum num", "Optimum num")
lvL <- c("Proper","Improper")
lvU <- c("Adequate","Inadequate")

TypeOfNavigation <- array(c(0.57,0.3,0.13),3,list(TypeOfNavigation=c("Coastal Waters","Off Shore","Port")))
AlcoholDrugUse <- array(c(0.054,0.946),2,list(AlcoholDrugUse=lv))
RestrictedVisibility <- array(c(0.28,0.72),2,list(RestrictedVisibility=c("No","Yes")))
Manning <- array(c(0.135,0.865),2,list(Manning=lvM))
OccupationWithOtherTasks <- array(c(0.243,0.757,0,1),c(2,2),list(OccupationWithOtherTasks=lv,Manning=lvM))
BridgeWithoutAWatchkeeper <- array(c(0.2,0.8,0,1),c(2,2),list(BridgeWithoutAWatchkeeper=lv,OccupationWithOtherTasks=lv))
UseOfNavigationEquipment <- array(c(0.9,0.1,0.73,0.27),c(2,2),list(UseOfNavigationEquipment=lvU,Lookout=lvL))
Fatigue <- array(c(1,0,0.135,0.865),c(2,2),list(Fatigue=lv,Manning=lvM))
Lookout <- array(c(0,1,0.29,0.71,0.62,0.38,0.92,0.08,0.07,0.93,0.31,0.69,0.71,0.29,1,0),c(2,2,2,2),list(Lookout=lvL,Fatigue=lv,OccupationWithOtherTasks=lv,AlcoholDrugUse=lv))
InterShipCommunication <- array(c(0.91,0.09,0.333,0.667),c(2,2),list(InterShipCommunication=lvL,Lookout=lvL))
IntentionOfTargetVessel <- array(c(1,0,0.82,0.18,0.35,0.65,0,1,0.82,0.18,0.65,0.35,0,1,0,1),c(2,2,2,2),list(IntentionOfTargetVessel=c("Understood","Not Understood"),InterShipCommunication=lvL,Lookout=lvL,UseOfNavigationEquipment=lvU))
PresenceOfTargetVessel <- array(c(0.07,0.93,0.8,0.2,0.26,0.74,1,0,0,1,0.73,0.27,0.2,0.8,0.93,0.07),c(2,2,2,2),list(PresenceOfTargetVessel=c("Not Detected","Detected"),Lookout=lvL,UseOfNavigationEquipment=lvU,BridgeWithoutAWatchkeeper=lv))
Collision <- array(c(0.425,0.575,0.678,0.323,0.26,0.74,0.517,0.483,1,0,1,0,0.586,0.414,1,0,0.324,0.676,0.622,0.378,0.135,0.865,0.432,0.568,0.703,0.297,1,0,0.513,0.487,0.811,0.189,0.265,0.735,0.588,0.412,0.058,0.942,0.382,0.618,1,0,1,0,0.47,0.53,1,0),c(2,2,2,2,3),list(Collision=lv,IntentionOfTargetVessel=c("Understood","Not Understood"),PresenceOfTargetVessel=c("Detected","Not Detected"),RestrictedVisibility=c("No","Yes"),TypeOfNavigation=c("Coastal Waters","Off Shore","Port")))

vessel2 <- custom.fit(dag,list(
  TypeOfNavigation=TypeOfNavigation,AlcoholDrugUse=AlcoholDrugUse,
  RestrictedVisibility=RestrictedVisibility,Manning=Manning,
  OccupationWithOtherTasks=OccupationWithOtherTasks,
  BridgeWithoutAWatchkeeper=BridgeWithoutAWatchkeeper,
  Fatigue=Fatigue,Lookout=Lookout,UseOfNavigationEquipment=UseOfNavigationEquipment,
  InterShipCommunication=InterShipCommunication,PresenceOfTargetVessel=PresenceOfTargetVessel,
  IntentionOfTargetVessel=IntentionOfTargetVessel,Collision=Collision
))


usethis::use_data(vessel2, overwrite = TRUE)
