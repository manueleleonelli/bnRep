# Failure Risk Assessment of Coal Gasifier Based on the Integration of Bayesian Network and Trapezoidal Intuitionistic Fuzzy Number-Based Similarity Aggregation Method (TpIFN-SAM)

library(bnlearn)
gasifier.dag = model2network("[PiecesOfSlag][FurnaceBricks][LowLiquidLevel][Cracking][AbnormalQuenchWater][AbnormalCoalWater][Leakage][GaugeDamaged][HighOxygen][LowFlowRate][LowConcentration][BurnerDamaged][SensorDamaged1][LowOxygen][HighFlowRate][HighConcentration][TemperatureSensor][HighH2S][HighCO2][HighH2O][HighFlow][AntiCorrosion][Insulation][PreJobTraining][ImproperOperation][Unattended][DeliberateDestruction][PressureFluctuation|PiecesOfSlag:FurnaceBricks:LowLiquidLevel:Cracking][AbnormalLiquidLevel|AbnormalQuenchWater:AbnormalCoalWater:Leakage:GaugeDamaged][TooHighTemperature|HighOxygen:LowFlowRate:LowConcentration:BurnerDamaged:SensorDamaged1][TooLowTemperature|LowOxygen:HighFlowRate:HighConcentration:TemperatureSensor][AbnormalTemperature|TooLowTemperature:TooHighTemperature][MediumContent|HighH2S:HighCO2:HighH2O][InternalCorrosion|HighFlow:MediumContent][ExternalCorrosion|AntiCorrosion:Insulation][UnintentionalDestruction|PreJobTraining:ImproperOperation:Unattended][GasifierAbnormality|PressureFluctuation:AbnormalLiquidLevel:AbnormalTemperature][CorrosionFailure|InternalCorrosion:ExternalCorrosion][HumanOrganization|UnintentionalDestruction:DeliberateDestruction][GasifierFailure|HumanOrganization:CorrosionFailure:GasifierAbnormality]")

lv = c("Occurred","NotOccurred")

GasifierFailure.prob <-array(c(1,0,0.28,0.72,0.37,0.63,0.33,0.67,0.38,0.62,0.34,0.66,0.23,0.77,0,1),dim=c(2,2,2,2),dimnames = list(GasifierFailure=lv,HumanOrganization=lv,CorrosionFailure=lv,GasifierAbnormality=lv))
HumanOrganization.prob <- array(c(1,0,0.66,0.34,0.21,0.79,0,1),dim=c(2,2,2), dimnames=list(HumanOrganization=lv,DeliberateDestruction=lv,UnintentionalDestruction=lv))
CorrosionFailure.prob <- array(c(1,0,0.17,0.83,0.15,0.85,0,1),dim=c(2,2,2), dimnames=list(CorrosionFailure=lv,ExternalCorrosion=lv,InternalCorrosion=lv))
GasifierAbnormality.prob <- array(c(1,0,0.22,0.78,0.33,0.67,0.18,0.82,0.32,0.68,0.19,0.81,0.13,0.87,0,1), dim = c(2,2,2,2), dimnames= list(GasifierAbnormality=lv,AbnormalTemperature=lv,AbnormalLiquidLevel=lv,PressureFluctuation=lv))
UnintentionalDestruction.prob <- array(c(1,0,0.67,0.33,0.71,0.29,0.35,0.65,0.69,0.31,0.41,0.59,0.38,0.62,0,1),dim=c(2,2,2,2), dimnames=list(UnintentionalDestruction=lv,Unattended=lv,ImproperOperation=lv,PreJobTraining=lv))
ExternalCorrosion.prob <- array(c(1,0,0.45,0.55,0.36,0.64,0,1), dim=c(2,2,2), dimnames=list(ExternalCorrosion=lv,Insulation=lv,AntiCorrosion=lv))
MediumContent.prob <- array(c(1,0,0.35,0.65,0.36,0.64,0.15,0.85,0.37,0.63,0.17,0.83,0.19,0.81,0,1), dim=c(2,2,2,2), dimnames= list(MediumContent=lv,HighH2O=lv,HighCO2=lv,HighH2S=lv))
AbnormalTemperature.prob <- array(c(1,0,0.13,0.87,0.17,0.83,0,1), dim=c(2,2,2),dimnames=list(AbnormalTemperature =lv, TooLowTemperature = lv, TooHighTemperature =lv))
TooLowTemperature.prob <- array(c(1,0,0.89,0.11,0.83,0.17,0.68,0.32,0.85,0.15,0.79,0.21,0.76,0.24,0.32,0.68,0.86,0.14,0.71,0.29,0.69,0.31,0.37,0.63,0.42,0.58,0.28,0.72,0.26,0.74,0,1), dim=c(2,2,2,2,2), dimnames = list(TooLowTemperature=lv, TemperatureSensor = lv, HighConcentration= lv, HighFlowRate = lv, LowOxygen= lv))
TooHighTemperature.prob <- array(c(1,0,0.75,0.25,0.66,0.34,0.53,0.47,0.60,0.40,0.49,0.51,0.51,0.49,0.49,0.51,0.47,0.53,0.47,0.53,0.43,0.57,0.42,0.58,0.38,0.62,0.37,0.63,0.35,0.65,0.19,0.81,0.45,0.55,0.39,0.61,0.40,0.60,0.38,0.62,0.34,0.66,0.34,0.66,0.33,0.67,0.21,0.79,0.30,0.70,0.29,0.71,0.27,0.73,0.24,0.76,0.25,0.75,0.20,0.80,0.25,0.75,0,1),dim=c(2,2,2,2,2,2), dimnames = list(TooHighTemperature=lv,SensorDamaged1=lv,BurnerDamaged=lv,LowConcentration=lv,LowFlowRate=lv,HighOxygen=lv))
AbnormalLiquidLevel.prob <- array(c(1,0,0.83,0.17,0.86,0.14,0.68,0.32,0.81,0.19,0.73,0.27,0.71,0.29,0.35,0.65,0.76,0.24,0.69,0.31,0.70,0.30,0.36,0.64,0.69,0.31,0.40,0.60,0.38,0.62,0,1) , dim = c(2,2,2,2,2), dimnames = list(AbnormalLiquidLevel=lv, GaugeDamaged= lv,Leakage=lv, AbnormalCoalWater=lv,AbnormalQuenchWater=lv))
PressureFluctuation.prob <- array(c(1,0,0.67,0.33,0.69,0.31, 0.57,0.43, 0.72,0.28,0.62,0.38,0.58,0.42,0.21,0.79,0.85,0.15,0.67,0.33,0.68,0.32,0.31,0.69,0.42,0.58,0.18,0.82,0.21,0.79,0,1) , dim = c(2,2,2,2,2), dimnames = list(PressureFluctuation=lv, Cracking = lv,LowLiquidLevel=lv, FurnaceBricks=lv,PiecesOfSlag=lv))
PiecesOfSlag.prob <- array(c(0.02,0.98),dim=2,dimnames = list(PiecesOfSlag=lv))
FurnaceBricks.prob <- array(c(0.02,0.98),dim=2,dimnames = list(FurnaceBricks=lv))
LowLiquidLevel.prob <- array(c(0.01,0.99),dim=2,dimnames = list(LowLiquidLevel=lv))
Cracking.prob <- array(c(0.02,0.98),dim=2,dimnames = list(Cracking=lv))
AbnormalQuenchWater.prob <- array(c(0.02,0.98),dim=2,dimnames = list(AbnormalQuenchWater=lv))
AbnormalCoalWater.prob <- array(c(0.02,0.98),dim=2,dimnames = list(AbnormalCoalWater=lv))
Leakage.prob <- array(c(0.02,0.98),dim=2,dimnames = list(Leakage=lv))
GaugeDamaged.prob <- array(c(0.05,0.95),dim=2,dimnames = list(GaugeDamaged=lv))
HighOxygen.prob <- array(c(0.05,0.95),dim=2,dimnames = list(HighOxygen=lv))
LowFlowRate.prob <- array(c(0.05,0.95),dim=2,dimnames = list(LowFlowRate=lv))
LowConcentration.prob <- array(c(0.02,0.98),dim=2,dimnames = list(LowConcentration=lv))
BurnerDamaged.prob <- array(c(0.05,0.95),dim=2,dimnames = list(BurnerDamaged=lv))
SensorDamaged1.prob <- array(c(0.08,0.92),dim=2,dimnames = list(SensorDamaged1=lv))
LowOxygen.prob <- array(c(0.05,0.95),dim=2,dimnames = list(LowOxygen=lv))
HighFlowRate.prob <- array(c(0.05,0.95),dim=2,dimnames = list(HighFlowRate=lv))
HighConcentration.prob <- array(c(0.02,0.98),dim=2,dimnames = list(HighConcentration=lv))
TemperatureSensor.prob <- array(c(0.09,0.91),dim=2,dimnames = list(TemperatureSensor=lv))
HighH2S.prob <- array(c(0.13,0.87),dim=2,dimnames = list(HighH2S=lv))
HighCO2.prob <- array(c(0.11,0.89),dim=2,dimnames = list(HighCO2=lv))
HighH2O.prob <- array(c(0.84,0.16),dim=2,dimnames = list(HighH2O=lv))
HighFlow.prob <- array(c(0.06,0.94),dim=2,dimnames = list(HighFlow=lv))
AntiCorrosion.prob <- array(c(0.21,0.79),dim=2,dimnames = list(AntiCorrosion=lv))
Insulation.prob <- array(c(0.21,0.79),dim=2,dimnames = list(Insulation=lv))
PreJobTraining.prob <- array(c(0.03,0.97),dim=2,dimnames = list(PreJobTraining=lv))
ImproperOperation.prob <- array(c(0.06,0.94),dim=2,dimnames = list(ImproperOperation=lv))
Unattended.prob <- array(c(0.06,0.94),dim=2,dimnames = list(Unattended=lv))
DeliberateDestruction.prob <- array(c(0.00001,0.99999),dim=2,dimnames = list(DeliberateDestruction=lv))
InternalCorrosion.prob <- array(c(1,0,0.65,0.35,0.33,0.67,0,1),dim=c(2,2,2), dimnames=list(InternalCorrosion=lv,HighFlow=lv,MediumContent=lv))

gasifier.cpt <- list(PiecesOfSlag=PiecesOfSlag.prob,FurnaceBricks=FurnaceBricks.prob,
                     LowLiquidLevel = LowLiquidLevel.prob, Cracking =Cracking.prob,
                     AbnormalQuenchWater=AbnormalQuenchWater.prob, AbnormalCoalWater=AbnormalCoalWater.prob,
                     Leakage=Leakage.prob, GaugeDamaged=GaugeDamaged.prob, HighOxygen=HighOxygen.prob,
                     LowFlowRate=LowFlowRate.prob, LowConcentration=LowConcentration.prob,
                     BurnerDamaged=BurnerDamaged.prob,SensorDamaged1=SensorDamaged1.prob,
                     LowOxygen=LowOxygen.prob,HighFlowRate=HighFlowRate.prob,HighConcentration=HighConcentration.prob,
                     TemperatureSensor=TemperatureSensor.prob,HighH2S=HighH2S.prob,HighCO2=HighCO2.prob,
                     HighH2O=HighH2O.prob,HighFlow=HighFlow.prob,AntiCorrosion=AntiCorrosion.prob,
                     Insulation=Insulation.prob,PreJobTraining=PreJobTraining.prob,ImproperOperation=ImproperOperation.prob,
                     Unattended=Unattended.prob, DeliberateDestruction=DeliberateDestruction.prob, PressureFluctuation=PressureFluctuation.prob,
                     AbnormalLiquidLevel=AbnormalLiquidLevel.prob, TooHighTemperature=TooHighTemperature.prob,
                     TooLowTemperature=TooLowTemperature.prob, AbnormalTemperature=AbnormalTemperature.prob,MediumContent=MediumContent.prob,
                     InternalCorrosion=InternalCorrosion.prob,ExternalCorrosion=ExternalCorrosion.prob,
                     UnintentionalDestruction=UnintentionalDestruction.prob,GasifierAbnormality=GasifierAbnormality.prob,
                     HumanOrganization=HumanOrganization.prob, CorrosionFailure = CorrosionFailure.prob,
                     GasifierFailure=GasifierFailure.prob
)

gasifier <- custom.fit(gasifier.dag,gasifier.cpt)

usethis::use_data(gasifier, overwrite = TRUE)

