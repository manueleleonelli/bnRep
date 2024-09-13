
library(bnlearn)

dag <- model2network("[DesignDefect][CarryingLoadAboveTransportLimits|Overload][HuntingEquipmentOverload|UsedHuntingEquipment][LossOfBuoyancy|WaterIntake][LossOfStability|HuntingEquipmentOverload:UnstableLoading:DesignDefect][LossOfWaterTightness|VesselAge][Overload][PlannedMaintenance][Sinking|LossOfStability:LossOfBuoyancy:CarryingLoadAboveTransportLimits:WeatherAndSeaConditions][UnstableLoading][UsedHuntingEquipment][VesselAge][VesselPipelines|PlannedMaintenance:VesselAge][VesselStructure|VesselAge][WaterIntake|VesselStructure:VesselPipelines:LossOfWaterTightness][WeatherAndSeaConditions]")

lv <- c("Yes","No")

DesignDefect <- array(c(0.04,0.96),2,list(DesignDefect=lv))
CarryingLoadAboveTransportLimits <- array(c(1,0,0,1),c(2,2),list(CarryingLoadAboveTransportLimits=lv,Overload=lv))
HuntingEquipmentOverload <- array(c(0.13,0.87,1,0),c(2,2),list(HuntingEquipmentOverload=lv,UsedHuntingEquipment=c("Proper","Improper")))
LossOfBuoyancy <- array(c(1,0,0.04,0.96),c(2,2),list(LossOfBuoyancy=lv,WaterIntake=lv))
LossOfStability <- array(c(1,0,0.5,0.5,0.75,0.25,0.1,0.9,1,0,0.4,0.6,0.5,0.5,0,1),c(2,2,2,2),list(LossOfStability=lv,HuntingEquipmentOverload=lv,UnstableLoading=lv,DesignDefect=lv))
LossOfWaterTightness <- array(c(0.09,0.91,0,1),c(2,2),list(LossOfWaterTightness=c("Present","Absent"),VesselAge=c("Old","New")))
Overload <- array(c(0.16,0.84),2,list(Overload=lv))
PlannedMaintenance <- array(c(0.9,0.1),2,list(PlannedMaintenance=c("Completed","Uncompleted")))
UnstableLoading <- array(c(0.13,0.87),2,list(UnstableLoading=lv))
UsedHuntingEquipment <- array(c(0.93,0.07),2,list(UsedHuntingEquipment=c("Proper","Improper")))
VesselAge <- array(c(0.74,0.26),2,list(VesselAge=c("Old","New")))
VesselPipelines <- array(c(0.9,0.1,0.96,0.04,0,1,0.08,0.92),c(2,2,2),list(VesselPipelines=c("Corroded","Normal"),PlannedMaintenance=c("Completed","Uncompleted"),VesselAge=c("Old","New")))
VesselStructure <- array(c(0.72,0.28,0.375,0.625),c(2,2),list(VesselStructure=c("Worn","Normal"),VesselAge=c("Old","New")))
WeatherAndSeaConditions <- array(c(0.33,0.67),2,list(WeatherAndSeaConditions=c("Bad","Good")))
WaterIntake <- array(c(1,0,0.43,0.57,0.94,0.06,0.3,0.7,0.74,0.26,0.1,0.9,0.6,0.4,0,1),c(2,2,2,2),list(WaterIntake=lv,VesselStructure=c("Worn","Normal"),VesselPipelines=c("Corroded","Normal"),LossOfWaterTightness=c("Present","Absent")))
Sinking <- array(c(rep(c(1,0),7),0.33,0.67,1,0,0.5,0.5,0.38,0.62,0.1,0.9,0.63,0.37,0.35,0.65,0.23,0.77,0,1),rep(2,5),list(Sinking=lv,LossOfStability=lv,LossOfBuoyancy=lv,CarryingLoadAboveTransportLimits=lv,WeatherAndSeaConditions=c("Bad","Good")))


vessel1 <- custom.fit(dag,list(
  DesignDefect=DesignDefect,
  CarryingLoadAboveTransportLimits=CarryingLoadAboveTransportLimits,
  HuntingEquipmentOverload=HuntingEquipmentOverload,
  LossOfBuoyancy=LossOfBuoyancy,
  LossOfStability=LossOfStability,
  LossOfWaterTightness=LossOfWaterTightness,
  Overload=Overload,PlannedMaintenance=PlannedMaintenance,
  UnstableLoading=UnstableLoading,
  UsedHuntingEquipment=UsedHuntingEquipment,
  VesselAge=VesselAge,VesselPipelines=VesselPipelines,
  VesselStructure=VesselStructure,
  WeatherAndSeaConditions=WeatherAndSeaConditions,
  WaterIntake = WaterIntake,Sinking=Sinking
  ))


usethis::use_data(vessel1, overwrite = TRUE)
