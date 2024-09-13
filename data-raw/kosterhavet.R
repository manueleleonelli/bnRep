
library(bnlearn)

dag <- model2network("[Prey|SeafloorDisturbance:Zooplankton][NorthernShrimp|WaterTemperatureDeep:Prey:Cod:TrawlingFrequency][Transparency|Wind:Phytoplankton:POM:LeisureBoating][Eelgrass|FilamentousAlgae:Transparency:AnchorDamageRisk][Zooplankton|WaterTemperatureShallow:OxygenShallow:Phytoplankton][FilamentousAlgae|WaterTemperatureShallow:NutrientEnrichmentRisk:Mesograzers][Mesograzers|IntermediateFishPredators][IntermediateFishPredators|Cod:Noise][Cod|Noise:HabitatQuality][HabitatQuality|OxygenDeep:Turbidity:SeafloorDisturbance][SeafloorDisturbance|TrawlingFrequency:BottomSubstrate][WaterTemperatureDeep|RadiativeForcing][BottomSubstrate][Turbidity|TrawlingFrequency:BottomSubstrate][OxygenShallow|Phytoplankton:WaterTemperatureShallow][OxygenDeep|Phytoplankton:POM][Phytoplankton|WaterTemperatureShallow:NutrientEnrichmentRisk:MusselCultivation][WaterTemperatureShallow|RadiativeForcing][Noise|LeisureBoating][AnchorDamageRisk|LeisureBoating][NutrientEnrichmentRisk|DIP:DIN:POM][SedimentLoad|Discharge:AgriculturalLand:DevelopedLand][POM|SedimentLoad:MusselCultivation][DIP|TPLoad][DIN|TNLoad][TPLoad|Discharge:AgriculturalLand:DevelopedLand:TPExchange][TNLoad|Discharge:AgriculturalLand:DevelopedLand:TNExchange][Wind|RadiativeForcing][Discharge|Precipitation][Precipitation|RadiativeForcing][RadiativeForcing][TPExchange][TNExchange][AgriculturalLand][LeisureBoating][TrawlingFrequency][MusselCultivation][DevelopedLand]")

lv <- c("Low","Medium","High")
lv1 <- c("Low","High")
lv2 <- c("Low","Medium","High","Very high")
lva <- c("Decrease", "No change", "Increase")

LeisureBoating <- array(c(0.1,0.25,0.65),3,list(LeisureBoating=lv))
TrawlingFrequency <- array(c(0.5,0.5),2,list(TrawlingFrequency=lv1))
MusselCultivation <- array(c(0.6,0.25,0.1,0.05),4,list(MusselCultivation=lv2))
DevelopedLand <- array(c(0.65,0.35),2,list(DevelopedLand=lv1))
AgriculturalLand <- array(c(0.45,0.3,0.25),3,list(AgriculturalLand=lv))
TNExchange <- array(c(0.45,0.15,0.4),3,list(TNExchange=lv))
TPExchange <- array(c(0.6,0.15,0.25),3,list(TPExchange=lv))
RadiativeForcing <- array(c(1/3,1/3,1/3),3,list(RadiativeForcing=c("Current","RF45","RF85")))
Precipitation <- array(c(0.75,0.25,0.65,0.35,0.25,0.75),c(2,3),list(Precipitation=lv1,RadiativeForcing=c("Current","RF45","RF85")))
Discharge <- array(c(0.9,0.09,0.01,0.45,0.40,0.15),c(3,2),list(Discharge=lv,Precipitation=lv1))
Wind <- array(c(0.35,0.35,0.3,0.2,0.5,0.3,0.1,0.4,0.5),c(3,3),list(Wind=lv,RadiativeForcing=c("Current","RF45","RF85")))
TNLoad <- array(c(0.95,0.025,0.025, 0.98,0.01,0.01, 0.95,0.025,0.025, 0.94,0.03,0.03, 0.95,0.025,0.025, 0.98,0.01,0.01, 0.95,0.025,0.025, 0.95,0.025,0.025, 0.98,0.01,0.01,
                  0.94,0.05,0.01,0.98,0.01,0.01,0.95,0.025,0.025,0.94,0.03,0.03,0.94,0.03,0.03,0.98,0.01,0.01,0.95,0.025,0.025,0.95,0.025,0.025,0.98,0.01,0.01,
                  0.01,0.98,0.01,0.01,0.79,0.20,0.10,0.45,0.45,0.01,0.98,0.01,0.01,0.79,0.20,0.10,0.45,0.45,0.01,0.98,0.01,0.01,0.79,0.20,0.10,0.45,0.45,
                  0.025,0.95,0.025,0.01,0.79,0.20,0.01,0.79,0.20,0.025,0.95,0.025,0.01,0.79,0.20,0.01,0.79,0.20,0.025,0.95,0.025,0.01,0.79,0.20,0.01,0.79,0.20,
                  0.10,0.10,0.80,0.04,0.04,0.92,0.04,0.04,0.92,0.15,0.15,0.70,0.025,0.025,0.95,0.05,0.05,0.90,0.025,0.025,0.95,0.025,0.025,0.95,0.025,0.025,0.95,
                  0.10,0.10,0.80,0.04,0.04,0.92,0.04,0.04,0.92,0.15,0.15,0.70,0.025,0.025,0.95,0.05,0.05,0.90,0.025,0.025,0.95,0.025,0.025,0.95,0.025,0.025,0.95),c(3,3,3,2,3),list(TNLoad=lv,Discharge=lv,AgriculturalLand=lv,DevelopedLand=lv1,TNExchange=lv))
TPLoad <- array(c(0.96,0.02,0.02,0.98,0.01,0.01,0.95,0.025,0.025,0.95,0.025,0.025,0.96,0.02,0.02,0.98,0.01,0.01,0.98,0.01,0.01,0.80,0.10,0.10,0.98,0.01,0.01,
                  0.98,0.01,0.01,0.98,0.01,0.01,0.95,0.025,0.025,0.95,0.025,0.025,0.95,0.025,0.025,0.95,0.025,0.025,0.98,0.01,0.01,0.98,0.01,0.01,0.98,0.01,0.01,
                  0.05,0.90,0.05,0.15,0.70,0.15,0.05,0.90,0.05,0.15,0.70,0.15,0.15,0.70,0.15,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,
                  0.05,0.90,0.05,0.15,0.70,0.15,0.05,0.90,0.05,0.15,0.70,0.15,0.15,0.70,0.15,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,
                  0.10,0.10,0.80,0.10,0.10,0.80,0.05,0.05,0.90,0.10,0.10,0.80,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,
                  0.05,0.05,0.90,0.10,0.10,0.80,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90,0.05,0.05,0.90
  ),c(3,3,3,2,3),list(TPLoad=lv,Discharge=lv,AgriculturalLand=lv,DevelopedLand=lv1,TPExchange=lv))
DIN <- array(c(0.55,0.4,0.05,0.50,0.40,0.10,0.2,0.3,0.5),c(3,3),list(DIN=lv,TNLoad=lv))
DIP <- array(c(0.80,0.15,0.05,0.45,0.45,0.10,0.40,0.35,0.25),c(3,3),list(DIP=lv,TPLoad=lv))
SedimentLoad <- array(c(0.98,0.01,0.01,0.10,0.55,0.35,0.03,0.03,0.94,0.80,0.19,0.01,0.10,0.50,0.40,0.01,0.05,0.94,0.10,0.70,0.20,0.10,0.70,0.20,0.01,0.01,0.98,      0.94,0.05,0.01,0.45,0.5252,0.025,0.50,0.15,0.35,0.65,0.30,0.05,0.19,0.80,0.01,0.20,0.35,0.45,0.60,0.15,0.25,0.50,0.30,0.20,0.35,0.20,0.45),c(3,3,3,2),list(SedimentLoad=lv,Discharge=lv,AgriculturalLand=lv,DevelopedLand=lv1))
POM <- array(c(0.6,0.4,0.55,0.45,0.5,0.5,0.6,0.4,0.55,0.45,0.5,0.5,0.65,0.35,0.625,0.375,0.6,0.4,0.7,0.3,0.675,0.325,0.65,0.35),c(2,3,4),list(POM=lv1,SedimentLoad=lv,MusselCultivation=lv2))
NutrientEnrichmentRisk <- array(c(0.80,0.15,0.05, 0.7,0.2,0.1, 0.6,0.3,0.1, 0.35,0.5,0.15, 0.25,0.60,0.15, 0.2,0.65,0.15, 0.25,0.55,0.20,0.15,0.625,0.225,0.075,0.7,0.225,0.75,0.15,0.1,0.65,0.25,0.1,0.6,0.3,0.1,0.3,0.5,0.2,0.2,0.6,0.2,0.1,0.7,0.2,0.2,0.6,0.2,0.1,0.65,0.25,0.05,0.70,0.25),c(3,3,3,2),list(NutrientEnrichmentRisk=lv,DIP=lv,DIN=lv,POM=lv1))
AnchorDamageRisk <- array(c(0.99,0.01,0.5,0.5,0.01,0.99),c(2,3),list(AnchorDamageRisk=lv1,LeisureBoating=lv))
Noise <- array(c(0.30,0.3,0.4,0.2,0.3,0.5,0.1,0.3,0.6),c(3,3),list(Noise=lv,LeisureBoating=lv))
WaterTemperatureShallow <- array(c(0.45,0.45,0.1,0.25,0.45,0.3,0.1,0.6,0.3),c(3,3),list(WaterTemperatureShallow=lv,RadiativeForcing=c("Current","RF45","RF85")))
Phytoplankton <- array(c(0.8,0.1,0.1, 0.8,0.1,0.1, 0.8,0.1,0.1, 0.65,0.25,0.1, 0.65,0.25,0.1, 0.6,0.25,0.15, 0.5,0.4,0.1, 0.45,0.4,0.15, 0.4,0.4,0.2, 0.8,0.1,0.1, 0.8,0.1,0.1, 0.8,0.1,0.1, 0.65,0.25,0.10, 0.65,0.25,0.10, 0.6,0.25,0.15, 0.5,0.4,0.1, 0.45,0.4,0.15, 0.4,0.4,0.2,  0.8,0.1,0.1, 0.8,0.1,0.1, 0.8,0.1,0.1, 0.65,0.25,0.1, 0.65,0.25,0.1, 0.6,0.25,0.15, 0.5,0.4,0.1, 0.45,0.4,0.15, 0.4,0.4,0.2,               0.8,0.1,0.1, 0.8,0.1,0.1, 0.8,0.1,0.1, 0.7,0.29,0.01, 0.65,0.34,0.01, 0.65,0.34,0.01, 0.75,0.15,0.1, 0.75,0.15,0.1, 0.55,0.4,0.05),c(3,3,3,4),list(Phytoplankton=lv,WaterTemperatureShallow=lv,NutrientEnrichmentRisk=lv,MusselCultivation=lv2))
OxygenShallow <- array(c(0.05,0.05,0.9,0.05,0.05,0.9,0.1,0.3,0.6,0.05,0.05,0.9,0.2,0.05,0.75,0.05,0.55,0.4,0.4,0.45,0.15,0.4,0.45,0.15,0.15,0.75,0.1),c(3,3,3),list(OxygenShallow=lv,Phytoplankton=lv,WaterTemperatureShallow=lv))
OxygenDeep <- array(c(0.1,0.6,0.3,0.1,0.7,0.2,0.3,0.55,0.15,0.25,0.6,0.15,0.25,0.7,0.05,0.45,0.5,0.05),c(3,3,2),list(OxygenDeep=lv,Phytoplankton=lv,POM=lv1))
BottomSubstrate <- array(c(0.3,0.7),2,list(BottomSubstrate=c("Soft","Hard")))
Turbidity <- array(c(0.35,0.4,0.25,0.25,0.4,0.35,0.74,0.25,0.01,0.69,0.3,0.01),c(3,2,2),list(Turbidity=lv,TrawlingFrequency=lv1,BottomSubstrate=c("Soft","Hard")))
WaterTemperatureDeep <- array(c(0.55,0.45,0.25,0.75,0.15,0.85),c(2,3),list(WaterTemperatureDeep=lv1,RadiativeForcing=c("Current","RF45","RF85")))
SeafloorDisturbance <- array(c(0.4,0.6,0.05,0.95,0.95,0.05,0.95,0.05),c(2,2,2),list(SeafloorDisturbance=lv1,TrawlingFrequency=lv1,BottomSubstrate=c("Soft","Hard")))
HabitatQuality <- array(c(0.3,0.3,0.4,0.2,0.25,0.55,0.05,0.15,0.8,0.55,0.15,0.3,0.4,0.25,0.35,0.25,0.2,0.55,0.7,0.1,0.2,0.5,0.2,0.3,0.3,0.2,0.5,    0.5,0.25,0.25,0.45,0.3,0.25,0.2,0.3,0.5,0.75,0.2,0.05,0.75,0.2,0.05,0.55,0.35,0.1,0.4,0.3,0.3,0.9,0.09,0.01,0.75,0.2,0.05,0.55,0.25,0.20),c(3,3,3,2),list(HabitatQuality=lv,OxygenDeep=lv,Turbidity=lv,SeafloorDisturbance=lv1))
Cod <- array(c(0.625,0.27,0.105,0.625,0.27,0.105,0.675,0.27,0.055,0.45,0.325,0.225,0.45,0.325,0.225,0.52,0.315,0.165,0.2,0.4,0.4,0.2,0.4,0.4,0.26,0.4,0.34),c(3,3,3),list(Cod=lv,Noise=lv,HabitatQuality=lv))
IntermediateFishPredators <- array(c(0.1,0.25,0.65,0.2875,0.45,0.2625,0.7,0.2,0.1,0.1,0.25,0.65,0.2875,0.45,0.2625,0.7,0.2,0.1,0.125,0.25,0.625,0.3125,0.45,0.2375,0.74,0.18,0.08),c(3,3,3),list(IntermediateFishPredators=lv,Cod=lv,Noise=lv))
Mesograzers <- array(c(0.05,0.15,0.8,0.2,0.5,0.3,0.8,0.15,0.05),c(3,3),list(Mesograzers=lv,IntermediateFishPredators=lv))
FilamentousAlgae <- array(c(0.85,0.1,0.05,0.8,0.125,0.075,0.7,0.175,0.125,0.325,0.2,0.475,0.225,0.275,0.5,0.11,0.29,0.6,0.015,0.34,0.645,0.015,0.285,0.7,0.015,0.045,0.94, 0.9,0.09,0.01,0.85,0.1,0.05,0.75,0.2,0.05,0.5,0.275,0.225,0.375,0.4,0.225,0.225,0.45,0.325,0.15,0.45,0.4,0.1,0.4,0.5,0.075,0.125,0.8,    0.98,0.01,0.01,0.98,0.01,0.01,0.98,0.01,0.01,0.7,0.175,0.125,0.5,0.375,0.125,0.3,0.5,0.2,0.2,0.4,0.4,0.2,0.375,0.425,0.175,0.2,0.625),c(3,3,3,3),list(FilamentousAlgae=lv,WaterTemperatureShallow=lv,NutrientEnrichmentRisk=lv,Mesograzers=lv))
Zooplankton <- array(c(0.875,1-0.875-0.035, 0.035,    0.875,1-0.875-0.035,0.035,   0.9, 1-0.9-0.035,0.035,   0.7,0.3-0.06,0.06,   0.7,0.3-0.06,0.06,   0.75,0.19,0.06,   0.65,0.24,0.11,   0.65,0.24,0.11,   0.7,0.24,0.06,   0.875,1-0.875-0.035,0.035,    0.875,1-0.875-0.035,0.035,   0.9,0.1-0.035,0.035,    0.35,0.4,0.25,   0.3,0.3,0.4,  0.3,0.25,0.45,0.25,0.4,0.35,0.2,0.3,0.5,0.2,0.25,0.55, 0.875,1-0.875-0.035,0.035,0.875,1-0.875-0.035,0.035,0.9,0.1-0.035,0.035,0.2,0.35,0.45,0.15,0.25,0.6,0.155 , 1-0.155-0.64,0.64, 0.105,1-0.105-0.6,0.6,0.055,0.25-0.055,0.75, 0.055, 0.21-0.055,0.79),c(3,3,3,3),list(Zooplankton=lv,WaterTemperatureShallow=lv,OxygenShallow=lv,Phytoplankton=lv))
Transparency <- array(c(0.01,0.5,0.49,  0.1,0.5,0.4, 0.15,0.5,0.35, 0.15,0.4,0.45, 0.25,0.35,0.4,  0.3,0.4,0.3,  0.75,0.24,0.01,0.75,0.24,0.01,0.75,0.24,0.01,
                        0.15,0.45,0.4,  0.3,0.4,0.3,  0.3,0.4,0.3,  0.25,0.35,0.4,  0.4,0.325,0.275,  0.4,0.325,0.275,  0.75,0.24,0.01,0.75,0.24,0.01,0.75,0.24,0.01,
                        0.1,0.5,0.4,  0.2,0.45,0.35,  0.2,0.5,0.3,  0.2,0.4,0.4,  0.3,0.35,0.35,  0.3,0.4,0.3,  0.75,0.24,0.01,0.75,0.24,0.01,0.75,0.24,0.01,
                        0.2,0.45,0.35,   0.3,0.4,0.3,  0.35,0.4,0.25,  0.2,0.4,0.4,   0.425,0.3,0.275,   0.45,0.3,0.25,  0.75,0.24,0.01,0.75,0.24,0.01,0.75,0.24,0.01,
                        0.15,0.5,0.35,   0.25,0.45,0.3,   0.25,0.5,0.25,   0.25,0.4,0.35,   0.35,0.35,0.3,   0.3775,0.3725,0.25,  0.75,0.24,0.01,  0.75,0.24,0.01,0.75,0.24,0.01,
                        0.25,0.45,0.3,  0.4,0.4,0.2 ,   0.4,0.425,0.175,0.35,0.35,0.3,0.5,0.3,0.2,0.5,0.325,0.175,0.75,0.24,0.01,0.75,0.24,0.01,0.75,0.24,0.01),c(3,3,3,2,3),list(Transparency=lv, Wind=lv,Phytoplankton=lv,POM=lv1,LeisureBoating=lv))
Eelgrass <- array(c(0.85,0.1,0.05,0.9,0.08,0.02,0.9,0.08,0.02,0.8,0.1,0.1,0.85,0.1,0.05,0.9,0.08,0.02,0.3,0.5,0.2,0.35,0.5,0.15,0.6,0.35,0.05,0.9,0.05,0.05,0.9,0.08,0.02,0.9,0.08,0.02,0.75,0.15,0.1,0.8,0.15,0.05,0.9,0.08,0.02,0.35,0.45,0.2,0.45,0.45,0.1,0.7,0.25,0.05),c(3,3,3,2),list(Eelgrass=lva,FilamentousAlgae=lv,Transparency=lv,AnchorDamageRisk=lv1))
Prey <- array(rep(1/3,3*2*3),c(3,2,3),list(Prey=lv,SeafloorDisturbance=lv1,Zooplankton=lv))
NorthernShrimp <- array(c(0.2,0.2,0.6,   0.05,0.2,0.75, 0.15,0.25,0.6, 0.1,0.15,0.75, 0.2,0.2,0.6, 0.05,0.2,0.75,
                          0.2,0.25,0.55,  0.1,0.2,0.7, 0.2,0.25,0.55,  0.15,0.2,0.65, 0.2,0.25,0.55,   0.1,0.2,0.7,
                          0.3,0.2,0.5,  0.15,0.2,0.65, 0.2,0.2,0.6,  0.25,0.15,0.6,  0.3,0.2,0.5,   0.15,0.2,0.65,
                          0.2,0.65,0.15,    0.25,0.55,0.2,  0.3,0.55,0.15,    0.3,0.5,0.2,  0.2,0.65,0.15,   0.25,0.55,0.2,
                          0.5,0.35,0.15,    0.4,0.4,0.2,  0.55,0.3,0.15,   0.45,0.4,0.15,  0.5,0.35,0.15,   0.4,0.4,0.2,
                          0.95,0.04,0.01,   0.85,0.1,0.05,  0.9,0.09,0.01, 0.75,0.2,0.05,  0.95,0.04,0.01,  0.85,0.1,0.05
                          ),c(3,2,3,3,2),list(NorthernShrimp=lva,WaterTemperatureDeep=lv1,Prey=lv,Cod=lv,TrawlingFrequency=lv1))

kosterhavet <- custom.fit(dag,list(
  LeisureBoating=LeisureBoating,TrawlingFrequency=TrawlingFrequency,
  MusselCultivation=MusselCultivation,DevelopedLand=DevelopedLand,
  AgriculturalLand=AgriculturalLand,TNExchange=TNExchange,
  TPExchange=TPExchange,RadiativeForcing=RadiativeForcing,
  Precipitation=Precipitation,Discharge=Discharge,Wind=Wind,
  TNLoad=TNLoad,TPLoad=TPLoad, DIN=DIN,DIP=DIP, POM=POM,
  SedimentLoad=SedimentLoad,NutrientEnrichmentRisk=NutrientEnrichmentRisk,
  AnchorDamageRisk=AnchorDamageRisk,Noise=Noise,
  WaterTemperatureShallow=WaterTemperatureShallow,Phytoplankton=Phytoplankton,
  OxygenShallow=OxygenShallow,OxygenDeep=OxygenDeep,BottomSubstrate=BottomSubstrate,
  Turbidity=Turbidity,WaterTemperatureDeep=WaterTemperatureDeep,
  SeafloorDisturbance=SeafloorDisturbance,HabitatQuality=HabitatQuality,Cod=Cod,
  IntermediateFishPredators=IntermediateFishPredators,Mesograzers=Mesograzers,
  FilamentousAlgae=FilamentousAlgae,Zooplankton=Zooplankton,Eelgrass=Eelgrass,
  Transparency=Transparency, NorthernShrimp=NorthernShrimp,Prey=Prey
))


usethis::use_data(kosterhavet , overwrite = TRUE)
