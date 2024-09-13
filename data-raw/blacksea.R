
library(bnlearn)

dag <- model2network("[CollisionAndContact|TriggeringEventForCollisionAndContact:ExternalOperationalConditionsForCollisionAndContact:InternalOperationalConditionsForCollisionAndContact][Grounding|TriggeringEventForGrounding:ExternalOperationalConditionsForGrounding:InternalOperationalConditionsForGrounding][Sinking|TriggeringEventForSinking:ExternalOperationalConditionsForSinking:InternalOperationalConditionsForSinking][ExternalOperationalConditionsForCollisionAndContact|NavigationArea:Visibility][ExternalOperationalConditionsForGrounding|NavigationArea:HeavyWeatherAndSeaConditions][ExternalOperationalConditionsForSinking|NavigationArea:HeavyWeatherAndSeaConditions][InternalOperationalConditionsForCollisionAndContact|VesselCargoOperationManagement][InternalOperationalConditionsForGrounding|VesselAge][InternalOperationalConditionsForSinking|VesselAge:Malfunction][Malfunction|VesselAge:PlannedMaintenance][TriggeringEventForCollisionAndContact|ManoeuvreOfBridgeTeamMembers:COLREG:NavigationOnStorm][TriggeringEventForGrounding|NavigationOnStorm:UseOfVesselInConditionOfExceedingDesignLimit:ManoeuvreOfBridgeTeamMembers][TriggeringEventForSinking|NavigationOnStorm:UseOfVesselInConditionOfExceedingDesignLimit:CargoShiftingOrInappropriateStability][CargoShiftingOrInappropriateStability|VesselCargoOperationManagement:PortOperationManagement][UseOfVesselInConditionOfExceedingDesignLimit|NavigationOnStorm:InlandVessel][NavigationOnStorm|VesselNavigationOperationManagement:AnchorageAreaSelection:DepartureFromPortInHeavyWeatherAndSeaCondition][ManoeuvreOfCaptain|VesselNavigationOperationManagement:SituationalAwareness][ManoeuvreOfBridgeTeamMembers|ManoeuvreOfWatchkeepingOfficer:ManoeuvreOfCaptain:ManoeuvreOfPilot][ManoeuvreOfWatchkeepingOfficer|VesselNavigationOperationManagement:SituationalAwareness][AnchorageAreaSelection|VesselNavigationOperationManagement][DepartureFromPortInHeavyWeatherAndSeaCondition|VesselNavigationOperationManagement:PortOperationManagement][ManoeuvreOfPilot|PortOperationManagement:PilotOperationManagement:TugboatOperation][TugboatOperation|PortOperationManagement:PilotOperationManagement][COLREG|VesselNavigationOperationManagement:SituationalAwareness:ExternalInternalCommunication][HeavyWeatherAndSeaConditions][Visibility][NavigationArea][InlandVessel][VesselAge][PilotOperationManagement|ExternalInternalCommunication:PortOperationPlanning][PortOperationManagement|SituationalAwareness:PortOperationPlanning][VesselNavigationOperationManagement|VesselNavigationOperationPlanning:SituationalAwareness:ExternalInternalCommunication:PortOperationPlanning][VesselCargoOperationManagement|VesselCargoOperationPlanning:SituationalAwareness][ExternalInternalCommunication|SituationalAwareness:ObservationDuringOperation][SituationalAwareness|Fatigue:ObservationDuringOperation:VesselCargoOperationPlanning:PortOperationPlanning][Fatigue|InadequateManning][ObservationDuringOperation|InadequateManning:VesselNavigationOperationPlanning:OversightAndControl][InadequateManning|CompanyManningStrategy][PortOperationPlanning|OversightAndControl][VesselCargoOperationPlanning|OversightAndControl][VesselNavigationOperationPlanning|TrainingAndFamiliarization:OversightAndControl:PortCompanyPressure][PlannedMaintenance|OversightAndControl][OversightAndControl|CrewAssignment:PortCompanyPressure:Procedure:TrainingAndFamiliarization][TrainingAndFamiliarization|CrewAssignment][CrewAssignment][Procedure][CompanyManningStrategy][PortCompanyPressure]")
lvCrew <- c("Qualified Crew", "Unqualified Crew")
lvProcedure <- c("Appropriate", "Inappropriate")
lvManning <-c("Optimum Safe Manning", "Minimum Safe Manning")
lv <- c("Yes", "No")
vl <- c("No", "Yes")
lvTraining <- c("Sufficient", "Insufficient")
lvCargo <- lvOversight <- c("Adequate", "Inadequate")
lvMaintenance <- c("Completed", "Uncompleted")
lvPlanning <- c("Unsafe", "Safe")
lvObservation <- c("Clear", "Unclear")
lvManag <- c("Safe","Unsafe")
lvAge <- c("Old","New")
lvArea <- c("Narrow Water", "Port", "Coastal Water", "Open Sea", "Anchorage")
lvVisibility <- c("Poor", "Good")
lvCOLREG <- c("Not Violated", "Violated")
lvTugboat <- c("Operational", "Faulty")
lvEvent <- c("Observed", "Unobserved")

Fatigue <- array(c(0.111,0.889,0,1),c(2,2),list(Fatigue=lv,InadequateManning=lv))
CrewAssignment <- array(c(0.506,0.494),2,list(CrewAssignment=lvCrew))
Procedure <- array(c(0.944,0.056),2,list(Procedure=lvProcedure))
CompanyManningStrategy <- array(c(0.899,0.101),c(2),list(CompanyManningStrategy=lvManning))
PortCompanyPressure <- array(c(0.067,0.933),2,list(PortCompanyPressure=lv))
TrainingAndFamiliarization <- array(c(0.644,0.356, 0.227,0.773),c(2,2),list(TrainingAndFamiliarization=lvTraining,CrewAssignment=lvCrew))
OversightAndControl <- array(c(0,1,0,1,0,1,0,1,0.5,0.5,0,1,0.75,0.25,0.437,0.563,0,1,0,1,0,1,0,1,0.667,0.333,0,1,1,0,0.75,0.25), c(2,2,2,2,2),list(OversightAndControl=lvOversight,CrewAssignment=lvCrew,PortCompanyPressure=lv,Procedure=lvProcedure,TrainingAndFamiliarization=lvTraining))
PlannedMaintenance <- array(c(1,0,0.959,0.041),c(2,2),list(PlannedMaintenance=lvMaintenance,OversightAndControl=lvOversight))
VesselNavigationOperationPlanning <- array(c(0.7,0.3,0.5,0.5,1,0,1,0,0.333,0.667,0,1,1,0,0.485,0.515),c(2,2,2,2),list(VesselNavigationOperationPlanning=lvPlanning,TrainingAndFamiliarization=lvTraining,OversightAndControl=lvOversight,PortCompanyPressure=lv))
VesselCargoOperationPlanning <- array(c(1,0,0.89,0.11),c(2,2),list(VesselCargoOperationPlanning=lvCargo,OversightAndControl=lvOversight))
PortOperationPlanning <- array(c(1,0,0.699,0.301),c(2,2),list(PortOperationPlanning=lvCargo,OversightAndControl=lvOversight))
InadequateManning <- array(c(1,0,0,1),c(2,2),list(InadequateManning=lv,CompanyManningStrategy=lvManning))
ObservationDuringOperation <- array(c(0.333,0.667,0.687,0.313,0.667,0.333,1,0,0,1,0,1,0,1,0.32,0.68),c(2,2,2,2),list(ObservationDuringOperation=lvObservation,InadequateManning=lv,VesselNavigationOperationPlanning=lvPlanning,OversightAndControl=lvOversight))
SituationalAwareness <- array(c(0.25,0.75,1,0,0,1,0.05,0.95,0.15,0.85,0.333,0.667,0,1,0,1,0.2,0.8,0.615,0.385,0,1,0,1,0,1,0,1,0,1,0,1),c(2,2,2,2,2),list(SituationalAwareness=lvTraining,Fatigue=lv,ObservationDuringOperation=lvObservation,VesselCargoOperationPlanning=lvCargo,PortOperationPlanning=lvCargo))
ExternalInternalCommunication <- array(c(0.956,0.044,0.5,0.5,0.75,0.25,0,1),c(2,2,2),list(ExternalInternalCommunication=lvCargo,SituationalAwareness=lvTraining,ObservationDuringOperation=lvObservation))
VesselCargoOperationManagement <- array(c(1,0,0.167,0.833,1,0,0.143,0.857),c(2,2,2),list(VesselCargoOperationManagement=lvManag,VesselCargoOperationPlanning=lvCargo,SituationalAwareness=lvTraining))
VesselNavigationOperationManagement <- array(c(0.26,0.74,1,0,0,1,0.54,0.46,0,1,0.5,0.5,0,1,0.04,0.96,0,1,0.7,0.3,0.25,0.75,0.24,0.76,0,1,0.2,0.8,0,1,0,1),c(2,2,2,2,2),list(VesselNavigationOperationManagement=lvManag,VesselNavigationOperationPlanning=lvPlanning,SituationalAwareness=lvTraining,ExternalInternalCommunication=lvCargo,PortOperationPlanning=lvCargo))
PortOperationManagement <- array(c(1,0,1,0,0.125,0.875,0,1),c(2,2,2),list(PortOperationManagement=lvManag,SituationalAwareness=lvTraining,PortOperationPlanning=lvCargo))
PilotOperationManagement <- array(c(1,0,1,0,0.857,0.143,0.65,0.35),c(2,2,2),list(PilotOperationManagement=lvManag,ExternalInternalCommunication=lvCargo,PortOperationPlanning=lvCargo))
VesselAge <- array(c(0.753,0.247),2,list(VesselAge=lvAge))
InlandVessel <- array(c(0.348,0.652),2,list(InlandVessel=lv))
NavigationArea <- array(c(0.146,0.191,0.258,0.135,0.27),5,list(NavigationArea=lvArea))
Visibility <- array(c(0.236,0.764),2,list(Visibility=lvVisibility))
HWSC <- array(c(0.798,0.202),2,list(HWSC=lv))
COLREG <- array(c(1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1),c(2,2,2,2),list(COLREG=lvCOLREG,VesselNavigationOperationManagement=lvManag,SituationalAwareness=lvTraining,ExternalInternalCommunication=lvCargo))
TugboatOperation <- array(c(1,0,0.846,0.154,0.25,0.75,0,1),c(2,2,2),list(TugboatOperation=lvTugboat,PortOperationManagement=lvManag,PilotOperationManagement=lvManag))
ManoeuvreOfPilot <- array(c(1,0,0.924,0.076,0,1,0,1,1,0,1,0,0,1,0,1),c(2,2,2,2),list(ManoeuvreOfPilot=lvProcedure,PortOperationManagement=lvManag,PilotOperationManagement=lvManag,TugboatOperation=lvTugboat))
DepartureFromPortInHeavyWeatherAndSeaCondition <- array(c(1,0,0.18,0.82,0,1,0.5,0.5),c(2,2,2),list(DepartureFromPortInHeavyWeatherAndSeaCondition=vl,VesselNavigationOperationManagement=lvManag,PortOperationManagement=lvManag))
AnchorageAreaSelection <- array(c(1,0,0.805,0.195),c(2,2),list(AnchorageAreaSelection=lvProcedure,VesselNavigationOperationManagement=lvManag))
ManoeuvreOfWatchkeepingOfficer <- array(c(1,0,1,0,1,0,0.786,0.214),c(2,2,2),list(ManoeuvreOfWatchkeepingOfficer=lvProcedure,VesselNavigationOperationManagement=lvManag,SituationalAwareness=lvTraining))
ManoeuvreOfBridgeTeamMembers <- array(c(1,0,rep(c(0,1),7)),c(2,2,2,2),list(ManoeuvreOfBridgeTeamMembers=lvProcedure,ManoeuvreOfWatchkeepingOfficer=lvProcedure,ManoeuvreOfCaptain=lvProcedure,ManoeuvreOfPilot=lvProcedure))
ManoeuvreOfCaptain <- array(c(1,0,0.18,0.82,0,1,0.5,0.5),c(2,2,2),list(ManoeuvreOfCaptain=lvProcedure,VesselNavigationOperationManagement=lvManag,SituationalAwareness=lvTraining))
NavigationOnStorm <- array(c(1,0,0.364,0.636,0.667,0.333,0.133,0.867,0.667,0.333,0,1,0.333,0.667,0,1),c(2,2,2,2),list(NavigationOnStorm=vl,VesselNavigationOperationManagement=lvManag,AnchorageAreaSelection=lvProcedure,DepartureFromPortInHeavyWeatherAndSeaCondition=vl))
UseOfVesselInConditionOfExceedingDesignLimit <- array(c(1,0,0.2,0.8,1,0,0.75,0.25),c(2,2,2),list(UseOfVesselInConditionOfExceedingDesignLimit=vl,NavigationOnStorm=vl,InlandVessel=lv))
CargoShiftingOrInappropriateStability <- array(c(1,0,0,1,0.818,0.182,0,1),c(2,2,2),list(CargoShiftingOrInappropriateStability=vl,VesselCargoOperationManagement=lvManag,PortOperationManagement=lvManag))
TriggeringEventForSinking <- array(c(0.12,0.88,0.4,0.6,0.333,0.667,0.52,0.48,1,0,1,0,0.667,0.333,1,0),c(2,2,2,2),list(TriggeringEventForSinking=lvEvent,NavigationOnStorm=vl,UseOfVesselInConditionOfExceedingDesignLimit=vl,CargoShiftingOrInappropriateStability=vl))
TriggeringEventForGrounding <- array(c(0,1, 0.44,0.56, 0.333,0.667, 0.458,0.542,  0.154,0.846, 0.833,0.167,0.667,0.333,1,0),c(2,2,2,2),list(TriggeringEventForGrounding=lvEvent,NavigationOnStorm=vl,UseOfVesselInConditionOfExceedingDesignLimit=vl,ManoeuvreOfBridgeTeamMembers=lvProcedure))
TriggeringEventForCollisionAndContact <- array(c(0,1,0.467,0.533,0,1,1,0,0.041,0.959,0,1,0,1,1,0),c(2,2,2,2),list(TriggeringEventForCollisionAndContact=lvEvent,ManoeuvreOfBridgeTeamMembers=lvProcedure,COLREG=lvCOLREG,NavigationOnStorm=vl))
Malfunction <- array(c(0.047,0.953,0,1,1,0,0.667,0.333),c(2,2,2),list(Malfunction=lvEvent,VesselAge=lvAge,PlannedMaintenance=lvMaintenance))
InternalOperationalConditionsForSinking <- array(c(1,0,0,1,0.393,0.607,0.318,0.682),c(2,2,2),list(InternalOperationalConditionsForSinking=lvEvent,VesselAge=lvAge,Malfunction=lvEvent))
InternalOperationalConditionsForGrounding <- array(c(0.373,0.627,0.318,0.682),c(2,2),list(InternalOperationalConditionsForGrounding =lvEvent,VesselAge=lvAge))
InternalOperationalConditionsForCollisionAndContact <- array(c(0.25,0.75,0.216,0.784),c(2,2),list(InternalOperationalConditionsForCollisionAndContact=lvEvent,VesselCargoOperationManagement=lvManag))

ExternalOperationalConditionsForSinking <- array(c(0.085,0.915,0,1,0.183,0.817,0.099,0.901,0.113,0.887,0,1,0.167,0.833,0,1,0,1,0,1),c(2,5,2),list(ExternalOperationalConditionsForSinking=lvEvent,NavigationArea=lvArea,HeavyWeatherAndSeaConditions=lv))
ExternalOperationalConditionsForGrounding <- array(c(0.086,0.914,0.014,0.986,0.086,0.914,0,1,0.211,0.789,0,1,0.228,0.772,0,1,0,1,0,1),c(2,5,2),list(ExternalOperationalConditionsForGrounding =lvEvent,NavigationArea=lvArea,HeavyWeatherAndSeaConditions=lv))
ExternalOperationalConditionsForCollisionAndContact <- array(c(0.048,0.952,0.142,0.858,0.333,0.667,0.095,0.905,0.286,0.714,0.015,0.985,0.118,0.882,0,1,0.029,0.971,0.015,0.985),c(2,5,2),list(ExternalOperationalConditionsForCollisionAndContact=lvEvent,NavigationArea=lvArea,Visibility=lvVisibility))

Sinking <- array(c(1,0,rep(c(0,1),7)), c(2,2,2,2),list(Sinking=lv,TriggeringEventForSinking=lvEvent,ExternalOperationalConditionsForSinking=lvEvent,InternalOperationalConditionsForSinking=lvEvent))
Grounding <- array(c(1,0,rep(c(0,1),7)), c(2,2,2,2),list(Grounding=lv,TriggeringEventForGrounding=lvEvent,ExternalOperationalConditionsForGrounding=lvEvent,InternalOperationalConditionsForGrounding=lvEvent))
CollisionAndContact <- array(c(1,0,rep(c(0,1),7)), c(2,2,2,2),list(CollisionAndContact=lv,TriggeringEventForCollisionAndContact=lvEvent,ExternalOperationalConditionsForCollisionAndContact=lvEvent,InternalOperationalConditionsForCollisionAndContact=lvEvent))



blacksea <- custom.fit(dag,list(
  CrewAssignment=CrewAssignment,Procedure=Procedure,CompanyManningStrategy=CompanyManningStrategy,
  PortCompanyPressure=PortCompanyPressure,TrainingAndFamiliarization=TrainingAndFamiliarization,
  OversightAndControl=OversightAndControl,PlannedMaintenance=PlannedMaintenance,
  VesselNavigationOperationPlanning=VesselNavigationOperationPlanning,
  VesselCargoOperationPlanning=VesselCargoOperationPlanning,
  PortOperationPlanning=PortOperationPlanning,InadequateManning=InadequateManning,
  ObservationDuringOperation=ObservationDuringOperation,Fatigue=Fatigue,
  SituationalAwareness=SituationalAwareness,ExternalInternalCommunication=ExternalInternalCommunication,
  VesselCargoOperationManagement=VesselCargoOperationManagement,
  VesselNavigationOperationManagement=VesselNavigationOperationManagement,
  PortOperationManagement=PortOperationManagement,PilotOperationManagement=PilotOperationManagement,
  VesselAge=VesselAge,InlandVessel=InlandVessel,NavigationArea=NavigationArea,
  Visibility=Visibility,HeavyWeatherAndSeaConditions=HWSC,COLREG=COLREG,TugboatOperation=TugboatOperation,
  ManoeuvreOfPilot=ManoeuvreOfPilot,DepartureFromPortInHeavyWeatherAndSeaCondition=DepartureFromPortInHeavyWeatherAndSeaCondition,
  AnchorageAreaSelection=AnchorageAreaSelection,ManoeuvreOfWatchkeepingOfficer=ManoeuvreOfWatchkeepingOfficer,
  ManoeuvreOfBridgeTeamMembers=ManoeuvreOfBridgeTeamMembers,
  ManoeuvreOfCaptain=ManoeuvreOfCaptain,NavigationOnStorm=NavigationOnStorm,
  UseOfVesselInConditionOfExceedingDesignLimit=UseOfVesselInConditionOfExceedingDesignLimit,
  CargoShiftingOrInappropriateStability=CargoShiftingOrInappropriateStability,
  TriggeringEventForSinking=TriggeringEventForSinking,
  TriggeringEventForGrounding=TriggeringEventForGrounding,
  TriggeringEventForCollisionAndContact=TriggeringEventForCollisionAndContact,
  Malfunction=Malfunction,Sinking=Sinking,Grounding=Grounding,
  InternalOperationalConditionsForCollisionAndContact=InternalOperationalConditionsForCollisionAndContact,
  InternalOperationalConditionsForGrounding=InternalOperationalConditionsForGrounding,
  InternalOperationalConditionsForSinking=  InternalOperationalConditionsForSinking,
  ExternalOperationalConditionsForCollisionAndContact=ExternalOperationalConditionsForCollisionAndContact,
  ExternalOperationalConditionsForGrounding=ExternalOperationalConditionsForGrounding,
  ExternalOperationalConditionsForSinking=  ExternalOperationalConditionsForSinking,
  CollisionAndContact=CollisionAndContact
  ))


usethis::use_data(blacksea, overwrite = TRUE)
