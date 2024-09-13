
library(bnlearn)

dag <- model2network("[ChronicToxicityExposureOral|ClassificationGHS][AcuteToxicityByTheExposureRouteOral|ClassificationGHS][AcuteToxicityInTheAquaticEnvironment|ClassificationGHS][EyeIrritation|ClassificationGHS][ChronicToxicityDermalExposure|ClassificationGHS][SkinIrritation|ClassificationGHS][ChronicToxicityInTheAquaticEnvironment|ClassificationGHS][RespiratorySensitization|ClassificationGHS][ChronicToxicityByTheExposureRouteInhalationDust|ClassificationGHS][AcuteToxicityExposureByDustInhalation|ClassificationGHS][PotentiallyCarcinogenic|ClassificationGHS][ChronicToxicityByTheExposureRouteInhalationGas|ClassificationGHS][ChronicToxicityExposureByDustInhalation|ClassificationGHS][AcuteToxicityExposureByGasInhalation|ClassificationGHS][AcuteToxicityDermalExposure|ClassificationGHS][Agglomeration|VariablesPhysicoChemical][Morphology|VariablesPhysicoChemical][CrystallineStructure|VariablesPhysicoChemical][SolubilityInWater|VariablesPhysicoChemical][SizeOfAtLeastOneDimension|VariablesPhysicoChemical][SuspensionStability|VariablesPhysicoChemical][SurfaceChargeInSolution|VariablesPhysicoChemical][SurfaceModificationWithHydrophilicGroups|VariablesPhysicoChemical][SurfaceArea|VariablesPhysicoChemical][Amount|Exposure][Duration|Exposure][AerosolFormation|Exposure][DustFormation|Exposure][Frequency|Exposure][StandardOperatingProcedureOfTask|AdministrativeMeasures][RiskTrainingInvolvingNMs|AdministrativeMeasures][PeriodicMaintenanceOfCPE|AdministrativeMeasures][OccupationalEnvironmentRiskProgram|AdministrativeMeasures][MedicalSurveillance|AdministrativeMeasures][RespiratoryProtectionProgram|AdministrativeMeasures][FootProtection|PersonalProtectiveEquipment][RespiratoryProtection|PersonalProtectiveEquipment][EyesProtection|PersonalProtectiveEquipment][HandProtection|PersonalProtectiveEquipment][BodyProtection|PersonalProtectiveEquipment][ProtectionByUsingCollectiveProtectiveEquipment|RiskControl][AdministrativeMeasures|RiskControl][PersonalProtectiveEquipment|RiskControl][Exposure|Risk][RiskControl|Risk][VariablesPhysicoChemical|Hazard][ClassificationGHS|Hazard][Risk][Hazard|Risk]")
l <- c("No","Yes")
lv <- c("High","Medium","Low")
lv1 <- c("1","2","3","4","5")
lv2 <- c("No","Yes","Yes, consider NMs")
lvP <- c("Full containment/isolation","Enclosed ventilation","Local ventilation","General mechanical ventilation")
lvB <- c("No use","Cotton lab coats","Synthetic material lab coats","Chemical protection coveralls")
lvH <- c("No use","Rubber gloves","Nitrile gloves - 1 pair","Nitrile gloves - 2 pairs")
lvE <- c("No use","Safety glasses","Safety goggles","Face shields")
lvR <- c("No use","Safety mask without selection criteria","Respiratory mask according to the respiratory protection program")
lvF <- c("Open shoes","Work shoes","Safety shoes for chemical agents")
lvCPE <- c("No","Yes, less than 12 months","Yes, more than 12 months")
lvFreq <- c("Daily","Weekly","Monthly","Semiannual","Yearly")

Risk <- array(c(0.4,0.3,0.3),3,list(Risk=lv))
Hazard <- array(c(0.2,0.3,0.5,0.2,0.5,0.3,0.5,0.3,0.2),c(3,3),list(Hazard=lv,Risk=lv))
ClassificationGHS <- array(c(0.5,0.2,0.1,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.15,0.25,0.40),c(5,3),list(ClassificationGHS=lv1,Hazard=lv))
VariablesPhysicoChemical <- array(c(0.2,0.3,0.5,0.25,0.5,0.25,0.5,0.3,0.2),c(3,3),list(VariablesPhysicoChemical=lv,Hazard=lv))
RiskControl <- array(c(0.6,0.3,0.1,0.25,0.45,0.3,0.1,0.3,0.6),c(3,3),list(RiskControl=lv,Risk=lv))
Exposure <- array(c(0.25,0.35,0.4,0.25,0.4,0.35,0.4,0.35,0.25),c(3,3),list(Exposure=lv,Risk=lv))
PersonalProtectiveEquipment <- array(c(0.2,0.3,0.5,0.4,0.3,0.3,0.5,0.3,0.2),c(3,3),list(PersonalProtectiveEquipment=lv,RiskControl=lv))
AdministrativeMeasures <- array(c(0.2,0.3,0.5,0.3,0.4,0.3,0.5,0.3,0.2),c(3,3),list(AdministrativeMeasures=lv,RiskControl=lv))
ProtectionByUsingCollectiveProtectiveEquipment <- array(c(0.4,0.3,0.2,0.1,0.35,0.3,0.2,0.15,0.1,0.2,0.3,0.4),c(4,3),list(ProtectionByUsingCollectiveProtectiveEquipment=lvP,RiskControl=lv))
BodyProtection <- array(c(0.1,0.2,0.3,0.4,0.15,0.3,0.35,0.2,0.40,0.30,0.2,0.10),c(4,3),list(BodyProtection=lvB,PersonalProtectiveEquipment=lv))
HandProtection <- array(c(0.1,0.2,0.3,0.4,0.15,0.30,0.35,0.2,0.4,0.3,0.2,0.1),c(4,3),list(HandProtection=lvH,PersonalProtectiveEquipment=lv))
EyesProtection <- array(c(0.1,0.2,0.3,0.4,0.15,0.3,0.35,0.2,0.4,0.3,0.2,0.1),c(4,3),list(EyesProtection=lvE,PersonalProtectiveEquipment=lv))
RespiratoryProtection <- array(c(0.15,0.25,0.6,0.2,0.45,0.35,0.6,0.25,0.15),c(3,3),list(RespiratoryProtection=lvR,PersonalProtectiveEquipment=lv))
FootProtection <- array(c(0.2,0.3,0.5,0.25,0.35,0.4,0.5,0.3,0.2),c(3,3),list(FootProtection=lvF,PersonalProtectiveEquipment=lv))
OccupationalEnvironmentRiskProgram <- array(c(0.15,0.30,0.55,0.25,0.40,0.35,0.55,0.3,0.15),c(3,3),list(OccupationalEnvironmentRiskProgram=lv2,AdministrativeMeasures=lv))
MedicalSurveillance<- array(c(0.15,0.30,0.55,0.25,0.4,0.35,0.55,0.30,0.15),c(3,3),list(MedicalSurveillance=lv2,AdministrativeMeasures=lv))
RespiratoryProtectionProgram<- array(c(0.15,0.25,0.6,0.2,0.45,0.35,0.6,0.25,0.15),c(3,3),list(RespiratoryProtectionProgram=lv2,AdministrativeMeasures=lv))
PeriodicMaintenanceOfCPE <- array(c(0.15,0.25,0.6,0.2,0.45,0.35,0.6,0.25,0.15),c(3,3),list(PeriodicMaintenanceOfCPE=lvCPE,AdministrativeMeasures=lv))
StandardOperatingProcedureOfTask <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(StandardOperatingProcedureOfTask=l,AdministrativeMeasures=lv))
RiskTrainingInvolvingNMs <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(RiskTrainingInvolvingNMs=l,AdministrativeMeasures=lv))
Frequency <- array(c(0.4,0.25,0.15,0.1,0.1,0.2,0.3,0.2,0.15,0.15,0.1,0.15,0.2,0.25,0.30),c(5,3),list(Frequency=lvFreq,Exposure=lv))
DustFormation <- array(c(0.7,0.3,0.6,0.4,0.4,0.6),c(2,3),list(DustFormation=c("With","Without"),Exposure=lv))
AerosolFormation <- array(c(0.7,0.3,0.6,0.4,0.4,0.6),c(2,3),list(AerosolFormation=c("With","Without"),Exposure=lv))
Amount <- array(c(0.2,0.3,0.5,0.3,0.4,0.3,0.5,0.3,0.2),c(3,3),list(Amount=c("<10mg", "10-100mg",">100mg"),Exposure=lv))
Duration <- array(c(0.2,0.3,0.5,0.3,0.4,0.3,0.5,0.3,0.2),c(3,3),list(Duration=c("<30min", "30-240min",">240min"),Exposure=lv))
SurfaceArea <- array(c(0.25,0.3,0.45,0.25,0.4,0.35,0.55,0.3,0.15),c(3,3),list(SurfaceArea=c("< 10 m2g","10-49 m2g",">50 m2g"),VariablesPhysicoChemical=lv))
Agglomeration <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(Agglomeration=c("With","Without"),VariablesPhysicoChemical=lv))
Morphology <- array(c(0.45,0.30,0.25,0.4,0.35,0.25,0.25,0.3,0.45),c(3,3),list(Morphology=c("Spherical","Plates","Rods"),VariablesPhysicoChemical=lv))
CrystallineStructure <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(CrystallineStructure=c("With","Without"),VariablesPhysicoChemical=lv))
SolubilityInWater <- array(c(0.3,0.7,0.4,0.6,0.7,0.3),c(2,3),list(SolubilityInWater=c("Dissolution pH 5 to 9","Insoluble"),VariablesPhysicoChemical=lv))
SizeOfAtLeastOneDimension <- array(c(0.7,0.3,0.6,0.4,0.3,0.7),c(2,3),list(SizeOfAtLeastOneDimension=c("Less than 100","More than 100"),VariablesPhysicoChemical=lv))
SuspensionStability <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(SuspensionStability=c("Less than 30","More than 30"),VariablesPhysicoChemical=lv))
SurfaceChargeInSolution <- array(c(0.6,0.4,0.55,0.45,0.4,0.6),c(2,3),list(SurfaceChargeInSolution=c("Charged","Neutral"),VariablesPhysicoChemical=lv))
SurfaceModificationWithHydrophilicGroups<- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(SurfaceModificationWithHydrophilicGroups=c("Without","With"),VariablesPhysicoChemical=lv))
AcuteToxicityDermalExposure <- array(c(0.4,0.15,0.15,0.1,0.1,0.1,0.15,0.40,0.15,0.1,0.1,0.1,0.1,0.15,0.4,0.15,0.1,0.1,0.1,0.1,0.1,0.4,0.15,0.15,0.1,0.1,0.1,0.15,0.40,0.15),c(6,5),list(AcuteToxicityDermalExposure=c("Less than 50", "50-200", "200-1000", "1000-2000", "2000-5000", "No effect"),ClassificationGHS=lv1))
ChronicToxicityExposureByDustInhalation <- array(c(0.45,0.35,0.20,0.35,0.45,0.20,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.35,0.45),c(3,5),list(ChronicToxicityExposureByDustInhalation=c("Less than 0.02", "0.02-0.2", "No effect"),ClassificationGHS=lv1))
AcuteToxicityExposureByGasInhalation <- array(c(0.4,0.2,0.2,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.2,0.2,0.4),c(5,5),list(AcuteToxicityExposureByGasInhalation=c("Less than 100", "100-500", "500-2500", "2500-20000", "No effect"),ClassificationGHS=lv1))
ChronicToxicityByTheExposureRouteInhalationGas<- array(c(0.45,0.35,0.20,0.35,0.45,0.20,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.35,0.45),c(3,5),list(ChronicToxicityByTheExposureRouteInhalationGas=c("Less than 50", "50-200", "No effect"),ClassificationGHS=lv1))
PotentiallyCarcinogenic <- array(c(0.5,0.35,0.15,0.35,0.50,0.15,0.25,0.35,0.4,0.3,0.3,0.4,0.20,0.30,0.50),c(3,5),list(PotentiallyCarcinogenic=c("Confirmed for humans", "Possibly toxic to humans", "No effect"),ClassificationGHS=lv1))
AcuteToxicityExposureByDustInhalation <- array(c(0.4,0.2,0.2,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.20,0.40,0.20,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.2,0.2,0.4),c(5,5),list(AcuteToxicityExposureByDustInhalation=c("Less than 0.5", "0.5-2", "2-10", "10-20", "No effect"),ClassificationGHS=lv1))
ChronicToxicityByTheExposureRouteInhalationDust<- array(c(0.4,0.2,0.2,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.20,0.40,0.20,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.2,0.2,0.4),c(5,5),list(ChronicToxicityByTheExposureRouteInhalationDust=c("Less than 0.5", "0.5-2", "2-10", "10-20", "No effect"),ClassificationGHS=lv1))
RespiratorySensitization <- array(c(0.5,0.3,0.2,0.3,0.5,0.2,0.35,0.45,0.20,0.25,0.35,0.40,0.2,0.3,0.5),c(3,5),list(RespiratorySensitization=c("There is evidence for humans","There are positive tests for animal testing", "No effect"),ClassificationGHS=lv1))
ChronicToxicityInTheAquaticEnvironment <- array(c(0.4,0.3,0.2,0.1, 0.2,0.4,0.3,0.1, 0.2,0.25,0.4,0.15,0.2,0.2,0.35,0.25,0.1,0.2,0.3,0.4),c(4,5),list(ChronicToxicityInTheAquaticEnvironment=c("Less than 0.01", "0.01-0.1", "0.1-1", "No effect"),ClassificationGHS=lv1))
SkinIrritation <- array(c(0.4,0.3,0.2,0.1, 0.2,0.4,0.3,0.1, 0.2,0.25,0.4,0.15,0.2,0.2,0.35,0.25,0.1,0.2,0.3,0.4),c(4,5),list(SkinIrritation=c("Skin corrosion", "Skin irritation", "ILskin irritation", "No effect"),ClassificationGHS=lv1))
ChronicToxicityDermalExposure <- array(c(0.45,0.35,0.20,0.35,0.45,0.20,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.35,0.45),c(3,5),list(ChronicToxicityDermalExposure=c("Less than 20", "20-200", "No effect"),ClassificationGHS=lv1))
EyeIrritation <- array(c(0.2,0.35,0.45,0.2,0.45,0.35,0.3,0.35,0.35,0.4,0.3,0.3,0.45,0.35,0.20),c(3,5),list(EyeIrritation=c("No effect", "Reversible irritation", "Irreversible damage"),ClassificationGHS=lv1))
AcuteToxicityInTheAquaticEnvironment <- array(c(0.4,0.3,0.2,0.1,0.2,0.4,0.3,0.1,0.2,0.25,0.4,0.15,0.2,0.2,0.35,0.25,0.1,0.2,0.3,0.4),c(4,5),list(AcuteToxicityInTheAquaticEnvironment=c("Less than 1", "1-10", "10-100", "No effect"),ClassificationGHS=lv1))
AcuteToxicityByTheExposureRouteOral <- array(c(0.35,0.2,0.15,0.1,0.1,0.1,0.2,0.35,0.15,0.1,0.1,0.1,0.10,0.15,0.35,0.20,0.10,0.10,0.10,0.10,0.15,0.35,0.20,0.10,0.1,0.10,0.10,0.15,0.35,0.20),c(6,5),list(AcuteToxicityByTheExposureRouteOral=c("Less than 5", "5-50", "50-300", "300-2000", "2000-5000", "No effect"),ClassificationGHS=lv1))
ChronicToxicityExposureOral <- array(c(0.55,0.30,0.15,0.3,0.55,0.15,0.35,0.35,0.3,0.25,0.3,0.45,0.2,0.25,0.55),c(3,5),list(ChronicToxicityExposureOral=c("Less than 10", "10-100", "No effect"),ClassificationGHS=lv1))

nanomaterials1 <- custom.fit(dag,list(
  ChronicToxicityExposureOral=ChronicToxicityExposureOral,
  AcuteToxicityByTheExposureRouteOral=AcuteToxicityByTheExposureRouteOral,
  AcuteToxicityInTheAquaticEnvironment=AcuteToxicityInTheAquaticEnvironment,
   ChronicToxicityDermalExposure=ChronicToxicityDermalExposure,
  SkinIrritation=SkinIrritation,EyeIrritation=EyeIrritation,
  ChronicToxicityInTheAquaticEnvironment=ChronicToxicityInTheAquaticEnvironment,
  RespiratorySensitization=RespiratorySensitization,
  ChronicToxicityByTheExposureRouteInhalationDust=ChronicToxicityByTheExposureRouteInhalationDust,
  AcuteToxicityExposureByDustInhalation=AcuteToxicityExposureByDustInhalation,
  PotentiallyCarcinogenic=PotentiallyCarcinogenic,
  ChronicToxicityByTheExposureRouteInhalationGas=ChronicToxicityByTheExposureRouteInhalationGas,
  ChronicToxicityExposureByDustInhalation=ChronicToxicityExposureByDustInhalation,
  AcuteToxicityDermalExposure=AcuteToxicityDermalExposure,
  SurfaceModificationWithHydrophilicGroups=SurfaceModificationWithHydrophilicGroups,
  SuspensionStability=SuspensionStability,SurfaceChargeInSolution=SurfaceChargeInSolution,
  Agglomeration=Agglomeration,Morphology=Morphology,SizeOfAtLeastOneDimension=SizeOfAtLeastOneDimension,
  CrystallineStructure=CrystallineStructure,SolubilityInWater=SolubilityInWater,
  Risk=Risk,Hazard=Hazard,ClassificationGHS=ClassificationGHS,Exposure=Exposure,
  VariablesPhysicoChemical=VariablesPhysicoChemical,RiskControl=RiskControl,
  PersonalProtectiveEquipment=PersonalProtectiveEquipment,
  AdministrativeMeasures=AdministrativeMeasures,
  ProtectionByUsingCollectiveProtectiveEquipment=ProtectionByUsingCollectiveProtectiveEquipment,
  BodyProtection=BodyProtection,HandProtection=HandProtection,EyesProtection=EyesProtection,
  FootProtection=FootProtection,RespiratoryProtection=RespiratoryProtection,
  OccupationalEnvironmentRiskProgram=OccupationalEnvironmentRiskProgram,
  MedicalSurveillance=MedicalSurveillance,RespiratoryProtectionProgram=RespiratoryProtectionProgram,
  PeriodicMaintenanceOfCPE=PeriodicMaintenanceOfCPE,
  StandardOperatingProcedureOfTask=StandardOperatingProcedureOfTask,
  RiskTrainingInvolvingNMs=RiskTrainingInvolvingNMs,Frequency=Frequency,
  DustFormation=DustFormation,AerosolFormation=AerosolFormation,
  Amount=Amount,Duration=Duration,SurfaceArea=SurfaceArea,AcuteToxicityExposureByGasInhalation=AcuteToxicityExposureByGasInhalation
))



usethis::use_data(nanomaterials1, overwrite = TRUE)


library(bnlearn)

dag <- model2network("[EyeIrritation|ClassificationGHS][ChronicToxicityDermalExposure|ClassificationGHS][SkinIrritation|ClassificationGHS][ChronicToxicityInTheAquaticEnvironment|ClassificationGHS][RespiratorySensitization|ClassificationGHS][ChronicToxicityByTheExposureRouteInhalationDust|ClassificationGHS][AcuteToxicityExposureByDustInhalation|ClassificationGHS][PotentiallyCarcinogenic|ClassificationGHS][ChronicToxicityByTheExposureRouteInhalationGas|ClassificationGHS][ChronicToxicityExposureByDustInhalation|ClassificationGHS][AcuteToxicityExposureByGasInhalation|ClassificationGHS][AcuteToxicityDermalExposure|ClassificationGHS][Agglomeration|VariablesPhysicoChemical][Morphology|VariablesPhysicoChemical][CrystallineStructure|VariablesPhysicoChemical][SolubilityInWater|VariablesPhysicoChemical][SizeOfAtLeastOneDimension|VariablesPhysicoChemical][SuspensionStability|VariablesPhysicoChemical][SurfaceChargeInSolution|VariablesPhysicoChemical][SurfaceModificationWithHydrophilicGroups|VariablesPhysicoChemical][SurfaceArea|VariablesPhysicoChemical][Amount|Exposure][Duration|Exposure][AerosolFormation|Exposure][DustFormation|Exposure][Frequency|Exposure][StandardOperatingProcedureOfTask|AdministrativeMeasures][RiskTrainingInvolvingNMs|AdministrativeMeasures][PeriodicMaintenanceOfCPE|AdministrativeMeasures][OccupationalEnvironmentRiskProgram|AdministrativeMeasures][MedicalSurveillance|AdministrativeMeasures][RespiratoryProtectionProgram|AdministrativeMeasures][FootProtection|PersonalProtectiveEquipment][RespiratoryProtection|PersonalProtectiveEquipment][EyesProtection|PersonalProtectiveEquipment][HandProtection|PersonalProtectiveEquipment][BodyProtection|PersonalProtectiveEquipment][ProtectionByUsingCollectiveProtectiveEquipment|RiskControl][AdministrativeMeasures|RiskControl][PersonalProtectiveEquipment|RiskControl][Exposure|Risk][RiskControl|Risk][VariablesPhysicoChemical|Hazard][ClassificationGHS|Hazard][Risk][Hazard|Risk]")
l <- c("No","Yes")
lv <- c("High","Medium","Low")
lv1 <- c("1","2","3","4","5")
lv2 <- c("No","Yes","Yes, consider NMs")
lvP <- c("Full containment/isolation","Enclosed ventilation","Local ventilation","General mechanical ventilation")
lvB <- c("No use","Cotton lab coats","Synthetic material lab coats","Chemical protection coveralls")
lvH <- c("No use","Rubber gloves","Nitrile gloves - 1 pair","Nitrile gloves - 2 pairs")
lvE <- c("No use","Safety glasses","Safety goggles","Face shields")
lvR <- c("No use","Safety mask without selection criteria","Respiratory mask according to the respiratory protection program")
lvF <- c("Open shoes","Work shoes","Safety shoes for chemical agents")
lvCPE <- c("No","Yes, less than 12 months","Yes, more than 12 months")
lvFreq <- c("Daily","Weekly","Monthly","Semiannual","Yearly")

Risk <- array(c(0.4,0.3,0.3),3,list(Risk=lv))
Hazard <- array(c(0.2,0.3,0.5,0.2,0.5,0.3,0.5,0.3,0.2),c(3,3),list(Hazard=lv,Risk=lv))
ClassificationGHS <- array(c(0.5,0.2,0.1,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.15,0.25,0.40),c(5,3),list(ClassificationGHS=lv1,Hazard=lv))
VariablesPhysicoChemical <- array(c(0.2,0.3,0.5,0.25,0.5,0.25,0.5,0.3,0.2),c(3,3),list(VariablesPhysicoChemical=lv,Hazard=lv))
RiskControl <- array(c(0.7,0.2,0.1,0.2,0.5,0.3,0.1,0.2,0.7),c(3,3),list(RiskControl=lv,Risk=lv))
Exposure <- array(c(0.2,0.3,0.5,0.2,0.5,0.3,0.5,0.3,0.2),c(3,3),list(Exposure=lv,Risk=lv))
PersonalProtectiveEquipment <- array(c(0.2,0.3,0.5,0.4,0.3,0.3,0.5,0.3,0.2),c(3,3),list(PersonalProtectiveEquipment=lv,RiskControl=lv))
AdministrativeMeasures <- array(c(0.2,0.3,0.5,0.3,0.4,0.3,0.5,0.3,0.2),c(3,3),list(AdministrativeMeasures=lv,RiskControl=lv))
ProtectionByUsingCollectiveProtectiveEquipment <- array(c(0.5,0.25,0.15,0.1,0.35,0.3,0.2,0.15,0.1,0.15,0.25,0.5),c(4,3),list(ProtectionByUsingCollectiveProtectiveEquipment=lvP,RiskControl=lv))
BodyProtection <- array(c(0.1,0.2,0.3,0.4,0.15,0.3,0.35,0.2,0.40,0.30,0.2,0.10),c(4,3),list(BodyProtection=lvB,PersonalProtectiveEquipment=lv))
HandProtection <- array(c(0.1,0.2,0.3,0.4,0.15,0.30,0.35,0.2,0.4,0.3,0.2,0.1),c(4,3),list(HandProtection=lvH,PersonalProtectiveEquipment=lv))
EyesProtection <- array(c(0.1,0.2,0.3,0.4,0.15,0.3,0.35,0.2,0.4,0.3,0.2,0.1),c(4,3),list(EyesProtection=lvE,PersonalProtectiveEquipment=lv))
RespiratoryProtection <- array(c(0.1,0.2,0.7,0.2,0.45,0.35,0.7,0.2,0.1),c(3,3),list(RespiratoryProtection=lvR,PersonalProtectiveEquipment=lv))
FootProtection <- array(c(0.2,0.3,0.5,0.25,0.35,0.4,0.5,0.3,0.2),c(3,3),list(FootProtection=lvF,PersonalProtectiveEquipment=lv))
OccupationalEnvironmentRiskProgram <- array(c(0.15,0.30,0.55,0.25,0.40,0.35,0.55,0.3,0.15),c(3,3),list(OccupationalEnvironmentRiskProgram=lv2,AdministrativeMeasures=lv))
MedicalSurveillance<- array(c(0.15,0.30,0.55,0.25,0.4,0.35,0.55,0.30,0.15),c(3,3),list(MedicalSurveillance=lv2,AdministrativeMeasures=lv))
RespiratoryProtectionProgram<- array(c(0.1,0.3,0.6,0.2,0.45,0.35,0.6,0.3,0.1),c(3,3),list(RespiratoryProtectionProgram=lv2,AdministrativeMeasures=lv))
PeriodicMaintenanceOfCPE <- array(c(0.1,0.3,0.6,0.2,0.45,0.35,0.6,0.3,0.1),c(3,3),list(PeriodicMaintenanceOfCPE=lvCPE,AdministrativeMeasures=lv))
StandardOperatingProcedureOfTask <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(StandardOperatingProcedureOfTask=l,AdministrativeMeasures=lv))
RiskTrainingInvolvingNMs <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(RiskTrainingInvolvingNMs=l,AdministrativeMeasures=lv))
Frequency <- array(c(0.4,0.25,0.15,0.1,0.1,0.2,0.3,0.2,0.15,0.15,0.1,0.15,0.2,0.25,0.30),c(5,3),list(Frequency=lvFreq,Exposure=lv))
DustFormation <- array(c(0.8,0.2,0.6,0.4,0.4,0.6),c(2,3),list(DustFormation=c("With","Without"),Exposure=lv))
AerosolFormation <- array(c(0.8,0.2,0.6,0.4,0.4,0.6),c(2,3),list(AerosolFormation=c("With","Without"),Exposure=lv))
Amount <- array(c(0.2,0.3,0.5,0.3,0.4,0.3,0.5,0.3,0.2),c(3,3),list(Amount=c("<10mg", "10-100mg",">100mg"),Exposure=lv))
Duration <- array(c(0.2,0.3,0.5,0.3,0.4,0.3,0.5,0.3,0.2),c(3,3),list(Duration=c("<30min", "30-240min",">240min"),Exposure=lv))
SurfaceArea <- array(c(0.25,0.3,0.45,0.25,0.4,0.35,0.55,0.3,0.15),c(3,3),list(SurfaceArea=c("< 10 m2g","10-49 m2g",">50 m2g"),VariablesPhysicoChemical=lv))
Agglomeration <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(Agglomeration=c("With","Without"),VariablesPhysicoChemical=lv))
Morphology <- array(c(0.45,0.30,0.25,0.4,0.35,0.25,0.25,0.3,0.45),c(3,3),list(Morphology=c("Spherical","Plates","Rods"),VariablesPhysicoChemical=lv))
CrystallineStructure <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(CrystallineStructure=c("With","Without"),VariablesPhysicoChemical=lv))
SolubilityInWater <- array(c(0.3,0.7,0.4,0.6,0.7,0.3),c(2,3),list(SolubilityInWater=c("Dissolution pH 5 to 9","Insoluble"),VariablesPhysicoChemical=lv))
SizeOfAtLeastOneDimension <- array(c(0.7,0.3,0.6,0.4,0.3,0.7),c(2,3),list(SizeOfAtLeastOneDimension=c("Less than 100","More than 100"),VariablesPhysicoChemical=lv))
SuspensionStability <- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(SuspensionStability=c("Less than 30","More than 30"),VariablesPhysicoChemical=lv))
SurfaceChargeInSolution <- array(c(0.6,0.4,0.55,0.45,0.4,0.6),c(2,3),list(SurfaceChargeInSolution=c("Charged","Neutral"),VariablesPhysicoChemical=lv))
SurfaceModificationWithHydrophilicGroups<- array(c(0.4,0.6,0.45,0.55,0.6,0.4),c(2,3),list(SurfaceModificationWithHydrophilicGroups=c("Without","With"),VariablesPhysicoChemical=lv))
AcuteToxicityDermalExposure <- array(c(0.4,0.15,0.15,0.1,0.1,0.1,0.15,0.40,0.15,0.1,0.1,0.1,0.1,0.15,0.4,0.15,0.1,0.1,0.1,0.1,0.1,0.4,0.15,0.15,0.1,0.1,0.1,0.15,0.40,0.15),c(6,5),list(AcuteToxicityDermalExposure=c("Less than 50", "50-200", "200-1000", "1000-2000", "2000-5000", "No effect"),ClassificationGHS=lv1))
ChronicToxicityExposureByDustInhalation <- array(c(0.45,0.35,0.20,0.35,0.45,0.20,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.35,0.45),c(3,5),list(ChronicToxicityExposureByDustInhalation=c("Less than 0.02", "0.02-0.2", "No effect"),ClassificationGHS=lv1))
AcuteToxicityExposureByGasInhalation <- array(c(0.4,0.2,0.2,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.2,0.2,0.4),c(5,5),list(AcuteToxicityExposureByGasInhalation=c("Less than 100", "100-500", "500-2500", "2500-20000", "No effect"),ClassificationGHS=lv1))
ChronicToxicityByTheExposureRouteInhalationGas<- array(c(0.45,0.35,0.20,0.35,0.45,0.20,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.35,0.45),c(3,5),list(ChronicToxicityByTheExposureRouteInhalationGas=c("Less than 50", "50-200", "No effect"),ClassificationGHS=lv1))
PotentiallyCarcinogenic <- array(c(0.6,0.3,0.1,0.3,0.6,0.1,0.25,0.35,0.4,0.2,0.3,0.5,0.15,0.25,0.6),c(3,5),list(PotentiallyCarcinogenic=c("Confirmed for humans", "Possibly toxic to humans", "No effect"),ClassificationGHS=lv1))
AcuteToxicityExposureByDustInhalation <- array(c(0.4,0.2,0.2,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.20,0.40,0.20,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.2,0.2,0.4),c(5,5),list(AcuteToxicityExposureByDustInhalation=c("Less than 0.5", "0.5-2", "2-10", "10-20", "No effect"),ClassificationGHS=lv1))
ChronicToxicityByTheExposureRouteInhalationDust<- array(c(0.4,0.2,0.2,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.1,0.20,0.40,0.20,0.1,0.1,0.1,0.2,0.4,0.2,0.1,0.1,0.2,0.2,0.4),c(5,5),list(ChronicToxicityByTheExposureRouteInhalationDust=c("Less than 0.5", "0.5-2", "2-10", "10-20", "No effect"),ClassificationGHS=lv1))
RespiratorySensitization <- array(c(0.5,0.3,0.2,0.3,0.5,0.2,0.35,0.45,0.20,0.25,0.35,0.40,0.2,0.3,0.5),c(3,5),list(RespiratorySensitization=c("There is evidence for humans","There are positive tests for animal testing", "No effect"),ClassificationGHS=lv1))
ChronicToxicityInTheAquaticEnvironment <- array(c(0.4,0.3,0.2,0.1, 0.2,0.4,0.3,0.1, 0.2,0.25,0.4,0.15,0.2,0.2,0.35,0.25,0.1,0.2,0.3,0.4),c(4,5),list(ChronicToxicityInTheAquaticEnvironment=c("Less than 0.01", "0.01-0.1", "0.1-1", "No effect"),ClassificationGHS=lv1))
SkinIrritation <- array(c(0.4,0.3,0.2,0.1, 0.2,0.4,0.3,0.1, 0.2,0.25,0.4,0.15,0.2,0.2,0.35,0.25,0.1,0.2,0.3,0.4),c(4,5),list(SkinIrritation=c("Skin corrosion", "Skin irritation", "ILskin irritation", "No effect"),ClassificationGHS=lv1))
ChronicToxicityDermalExposure <- array(c(0.45,0.35,0.20,0.35,0.45,0.20,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.35,0.45),c(3,5),list(ChronicToxicityDermalExposure=c("Less than 20", "20-200", "No effect"),ClassificationGHS=lv1))
EyeIrritation <- array(c(0.2,0.35,0.45,0.2,0.45,0.35,0.3,0.35,0.35,0.4,0.3,0.3,0.45,0.35,0.20),c(3,5),list(EyeIrritation=c("No effect", "Reversible irritation", "Irreversible damage"),ClassificationGHS=lv1))

nanomaterials2 <- custom.fit(dag,list(
  ChronicToxicityDermalExposure=ChronicToxicityDermalExposure,
  SkinIrritation=SkinIrritation,EyeIrritation=EyeIrritation,
  ChronicToxicityInTheAquaticEnvironment=ChronicToxicityInTheAquaticEnvironment,
  RespiratorySensitization=RespiratorySensitization,
  ChronicToxicityByTheExposureRouteInhalationDust=ChronicToxicityByTheExposureRouteInhalationDust,
  AcuteToxicityExposureByDustInhalation=AcuteToxicityExposureByDustInhalation,
  PotentiallyCarcinogenic=PotentiallyCarcinogenic,
  ChronicToxicityByTheExposureRouteInhalationGas=ChronicToxicityByTheExposureRouteInhalationGas,
  ChronicToxicityExposureByDustInhalation=ChronicToxicityExposureByDustInhalation,
  AcuteToxicityDermalExposure=AcuteToxicityDermalExposure,
  SurfaceModificationWithHydrophilicGroups=SurfaceModificationWithHydrophilicGroups,
  SuspensionStability=SuspensionStability,SurfaceChargeInSolution=SurfaceChargeInSolution,
  Agglomeration=Agglomeration,Morphology=Morphology,SizeOfAtLeastOneDimension=SizeOfAtLeastOneDimension,
  CrystallineStructure=CrystallineStructure,SolubilityInWater=SolubilityInWater,
  Risk=Risk,Hazard=Hazard,ClassificationGHS=ClassificationGHS,Exposure=Exposure,
  VariablesPhysicoChemical=VariablesPhysicoChemical,RiskControl=RiskControl,
  PersonalProtectiveEquipment=PersonalProtectiveEquipment,
  AdministrativeMeasures=AdministrativeMeasures,
  ProtectionByUsingCollectiveProtectiveEquipment=ProtectionByUsingCollectiveProtectiveEquipment,
  BodyProtection=BodyProtection,HandProtection=HandProtection,EyesProtection=EyesProtection,
  FootProtection=FootProtection,RespiratoryProtection=RespiratoryProtection,
  OccupationalEnvironmentRiskProgram=OccupationalEnvironmentRiskProgram,
  MedicalSurveillance=MedicalSurveillance,RespiratoryProtectionProgram=RespiratoryProtectionProgram,
  PeriodicMaintenanceOfCPE=PeriodicMaintenanceOfCPE,
  StandardOperatingProcedureOfTask=StandardOperatingProcedureOfTask,
  RiskTrainingInvolvingNMs=RiskTrainingInvolvingNMs,Frequency=Frequency,
  DustFormation=DustFormation,AerosolFormation=AerosolFormation,
  Amount=Amount,Duration=Duration,SurfaceArea=SurfaceArea,AcuteToxicityExposureByGasInhalation=AcuteToxicityExposureByGasInhalation
))



usethis::use_data(nanomaterials2, overwrite = TRUE)

