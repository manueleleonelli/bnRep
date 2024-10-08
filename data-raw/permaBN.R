
library(bnlearn)

dag <- model2network("[Aspect][SoilDensity][AirTemperature][Season][Rain|AirTemperature][Snow|AirTemperature][VegetationHeight|AirTemperature:Aspect][SnowDepth|Season:Snow:VegetationHeight:Rain:Aspect][Insulation|SoilDensity:SnowDepth:VegetationHeight][SoilWaterInput|AirTemperature:Snow:Rain][SoilMoisture|SoilDensity:Aspect:SoilWaterInput][SoilTemperature|Season:SoilMoisture:Insulation:AirTemperature][ActiveLayerIceContent|SoilMoisture:SoilTemperature][ThawDepth|SoilMoisture:SoilTemperature:ActiveLayerIceContent]")

lv <- c("Low","Medium","High")
lvSeason <- c("Snow free","Snow")
lvAspect <- c("North","East","South","West")
lvSnow <- c("None","Low","Medium","High")

ActiveLayerIceContent <- array(c(0.05,0.1,0.85,0.04,0.08,0.88,0.03,0.07,0.9,0.25,0.55,0.2,0.35,0.5,0.15,0.45,0.45,0.1,0.9,0.07,0.03,0.88,0.08,0.04,0.85,0.1,0.05),c(3,3,3),list(ActiveLayerIceContent=lv,SoilMoisture=lv,SoilTemperature=lv))
AirTemperature <- array(c(0.1,0.6,0.3),3,list(AirTemperature=lv))
Aspect <- array(c(0.25,0.25,0.25,0.25),4,list(Aspect=lvAspect))
Insulation <- array(c(0.75,0.1,0.15,   0.85,0.05,0.1,    0.9,0.05,0.05,  0.85,0.10,0.05,0.88,0.07,0.05,0.9,0.05,0.05,  0.75,0.15,0.1,0.8,0.13,0.07,0.85,0.1,0.05, 0.7,0.2,0.1,0.75,0.18,0.07,0.8,0.15,0.05, 0.25,0.15,0.6, 0.25,0.20,0.55,0.25,0.25,0.50, 0.29,0.55,0.16,0.38,0.5,0.12,0.45,0.45,0.10, 0.22,0.6,0.18, 0.3,0.55,0.15,0.38,0.5,0.12, 0.15,0.65,0.2,0.22,0.6,0.18,0.3,0.55,0.15,  0.1,0.05,0.85,0.1,0.1,0.8,0.15,0.1,0.75, 0.05,0.15,0.8,0.07,0.18,0.75,0.1,0.2,0.7,0.05,0.10,0.85,0.07,0.13,0.80,0.1,0.15,0.75,0.05,0.05,0.9,0.05,0.1,0.85,0.05,0.15,0.8),c(3,3,4,3),list(Insulation=lv,SoilDensity=lv,SnowDepth=lvSnow,VegetationHeight=lv))
Rain <- array(c(0.25,0.5,0.25,0.15,0.4,0.45,0.05,0.3,0.65),c(3,3),list(Rain=lv,AirTemperature=lv))
Season <- array(c(0.5,0.5),2,list(Season=lvSeason))
Snow <- array(c(0.3,0.5,0.2,0.45,0.4,0.15,0.7,0.25,0.05),c(3,3),list(Snow=lv,AirTemperature=lv))
SnowDepth  <- array(c(1,0,0,0,0,0.14,0.21,0.65,     1,0,0,0,0,0.12,0.18,0.7,      1,0,0,0,0,0.1,0.15,0.75,     1,0,0,0,0,0.12,0.18,0.7,    1,0,0,0, 0,0.1,0.15,0.75,     1,0,0,0,0,0.07,0.13,0.8,    1,0,0,0,0,0.10,0.15,0.75,  1,0,0,0,0,0.07,0.13,0.8,    1,0,0,0,0,0.05,0.1,0.85,   1,0,0,0,0,0.33,0.55,0.12,      1,0,0,0,0,0.26,0.6,0.14,     1,0,0,0,0,0.2,0.65,0.15,     1,0,0,0,0,0.22,0.62,0.16,     1,0,0,0,0,0.17,0.65,0.18,      1,0,0,0,0,0.12,0.68,0.2,    1,0,0,0,0,0.14,0.65,0.21,    1,0,0,0,0,0.12,0.68,0.2,     1,0,0,0,0,0.1,0.7,0.2,     1,0,0,0,0,0.75,0.15,0.1,     1,0,0,0,0,0.7,0.18,0.12,     1,0,0,0,0,0.65,0.22,0.13,      1,0,0,0,0,0.7,0.18,0.12,    1,0,0,0,0,0.65,0.22,0.13,     1,0,0,0,0,0.6,0.24,0.16,    1,0,0,0,0,0.65,0.22,0.13,     1,0,0,0,0,0.6,0.24,0.16,     1,0,0,0,0,0.55,0.25,0.2,
                      1,0,0,0,0,0.16,0.21,0.63,     1,0,0,0,0,0.14,0.19,0.67,     1,0,0,0,0,0.12,0.15,0.73,    1,0,0,0,0,0.14,0.19,0.67,    1,0,0,0,0,0.12,0.15,0.73,    1,0,0,0,0,0.10,0.15,0.75,   1,0,0,0,0,0.12,0.15,0.73,  1,0,0,0,0,0.1,0.15,0.75,      1,0,0,0,0,0.1,0.1,0.8,       1,0,0,0,0,0.21,0.58,0.21,    1,0,0,0,0,0.2,0.6,0.2,        1,0,0,0,0,0.17,0.66,0.17,      1,0,0,0,0,0.2,0.6,0.2,     1,0,0,0,0,0.17,0.66,0.17,     1,0,0,0,0,0.16,0.68,0.16,    1,0,0,0,0,0.17,0.66,0.17,  1,0,0,0,0,0.16,0.68,0.16,    1,0,0,0,0,0.15,0.7,0.15,     1,0,0,0,0,0.78,0.14,0.08,      1,0,0,0,0,0.76,0.14,0.1,   1,0,0,0,0,0.74,0.14,0.12,     1,0,0,0,0,0.76,0.14,0.10,   1,0,0,0,0,0.74,0.14,0.12,    1,0,0,0,0,0.72,0.14,0.14,    1,0,0,0,0,0.74,0.14,0.12,   1,0,0,0,0,0.72,0.14,0.14,     1,0,0,0,0,0.7,0.14,0.16,
                      1,0,0,0,0,0.2,0.25,0.55,      1,0,0,0,0,0.16,0.24,0.60,     1,0,0,0,0,0.13,0.22,0.65,    1,0,0,0,0,0.16,0.24,0.60,    1,0,0,0,0,0.13,0.22,0.65,    1,0,0,0,0,0.12,0.18,0.7,    1,0,0,0,0,0.13,0.22,0.65,  1,0,0,0,0,0.12,0.18,0.70,     1,0,0,0,0,0.1,0.15,0.75,   1,0,0,0,0,0.35,0.55,0.10,     1,0,0,0,0,0.29,0.60,0.11,     1,0,0,0,0,0.23,0.65,0.12,     1,0,0,0,0,0.25,0.62,0.13,    1,0,0,0,0,0.20,0.65,0.15,     1,0,0,0,0,0.15,0.68,0.17,    1,0,0,0,0,0.16,0.65,0.19,  1,0,0,0,0,0.14,0.68,0.18,    1,0,0,0,0,0.12,0.70,0.18,    1,0,0,0,0,0.85,0.10,0.05,    1,0,0,0,0,0.80,0.13,0.07,    1,0,0,0,0,0.75,0.15,0.10,     1,0,0,0,0,0.8,0.13,0.07,    1,0,0,0,0,0.75,0.15,0.10,    1,0,0,0,0,0.70,0.18,0.12,    1,0,0,0,0,0.75,0.15,0.10,   1,0,0,0,0,0.7,0.18,0.12,      1,0,0,0,0,0.65,0.21,0.14,
                      1,0,0,0,0,0.18,0.21,0.61,     1,0,0,0,0,0.16,0.19,0.65,     1,0,0,0,0,0.14,0.16,0.7,     1,0,0,0,0,0.16,0.19,0.65,    1,0,0,0,0,0.14,0.16,0.70,    1,0,0,0,0,0.12,0.15,0.73,  1,0,0,0,0,0.14,0.16,0.70,   1,0,0,0,0,0.12,0.15,0.73,     1,0,0,0,0,0.1,0.12,0.78,   1,0,0,0,0,0.23,0.58,0.19,     1,0,0,0,0,0.22,0.60,0.18,     1,0,0,0,0,0.19,0.66,0.15,     1,0,0,0,0,0.22,0.60,0.18,    1,0,0,0,0,0.18,0.66,0.16,     1,0,0,0,0,0.17,0.68,0.15,    1,0,0,0,0,0.18,0.66,0.16,  1,0,0,0,0,0.17,0.68,0.15,    1,0,0,0,0,0.15,0.70,0.15,    1,0,0,0,0,0.8,0.13,0.07,     1,0,0,0,0,0.78,0.13,0.09,    1,0,0,0,0,0.76,0.13,0.11,     1,0,0,0,0,0.78,0.13,0.09,   1,0,0,0,0,0.76,0.13,0.11,    1,0,0,0,0,0.74,0.13,0.13,    1,0,0,0,0,0.76,0.13,0.11,    1,0,0,0,0,0.74,0.13,0.13,    1,0,0,0,0,0.72,0.13,0.15
                      ) , c(4,2,3,3,3,4),list(SnowDepth=lvSnow,Season=lvSeason,Snow=lv,VegetationHeight=lv,Rain=lv,Aspect=lvAspect))
SoilDensity <- array(c(0.33,0.38,0.29),3,list(SoilDensity=lv))
SoilMoisture <- array(c(0.75,0.2,0.05,0.8,0.15,0.05,0.85,0.1,0.05,0.66,0.22,0.12,0.7,0.2,0.1,0.75,0.17,0.08,0.6,0.25,0.15,0.65,0.23,0.12,0.7,0.2,0.1,0.63,0.22,0.15,0.67,0.2,0.13,0.72,0.17,0.11,0.15,0.6,0.25,0.25,0.55,0.2,0.35,0.5,0.15,0.3,0.5,0.2,0.38,0.45,0.17,0.48,0.4,0.12,0.4,0.42,0.18,0.47,0.38,0.15,0.55,0.35,0.1,0.33,0.47,0.2,0.41,0.42,0.17,0.51,0.37,0.12,  0.05,0.1,0.85,0.05,0.15,0.8,0.05,0.2,0.75,0.08,0.17,0.75,0.1,0.2,0.7,0.12,0.22,0.66,0.1,0.2,0.7,0.12,0.23,0.65,0.15,0.25,0.6,0.11,0.17,0.72,0.13,0.2,0.67,0.15,0.22,0.63),c(3,3,4,3),list(SoilMoisture=lv,SoilDensity=lv,Aspect=lvAspect,SoilWaterInput=lv))
SoilTemperature <- array(c(
  0.7,0.2,0.1,0.9,0.07,0.03,      0.75,0.15,0.1,0.85,0.1,0.05,     0.8,0.12,0.08,0.8,0.12,0.08,     0.75,0.15,0.1,0.85,0.1,0.05,    0.8,0.12,0.08,0.8,0.12,0.08,    0.85,0.1,0.05,0.75,0.15,0.1,   0.8,0.12,0.08,0.8,0.12,0.08,     0.85,0.1,0.05,0.75,0.15,0.1,    0.9,0.07,0.03,0.7,0.15,0.15,     0.4,0.55,0.05,0.6,0.37,0.03,     0.45,0.5,0.05, 0.55, 0.4,0.05,    0.5,0.45,0.05,0.5,0.42,0.08,     0.45,0.5,0.05,0.55,0.4,0.05,    0.5,0.45,0.05,0.5,0.42,0.08,      0.55,0.4,0.05,0.45,0.45,0.1,    0.5,0.45,0.05,0.5,0.42,0.08,     0.55,0.4,0.05,0.45,0.45,0.1,     0.6,0.35,0.05,0.4,0.45,0.15,0.6,0.2,0.2,0.85,0.1,0.05,   0.65,0.17,0.18,  0.8,0.15,0.05,   0.7,0.15,0.15,0.75,0.15,0.1,   0.65,0.17,0.18,0.8,0.15,0.05,   0.7,0.15,0.15,0.75,0.15,0.1,   0.75,0.1,0.15,0.7,0.15,0.15,    0.7,0.15,0.15,0.75,0.15,0.10,    0.75,0.1,0.15,0.7,0.15,0.15,   0.8,0.1,0.1,0.65,0.18,0.17
  ),c(3,2,3,3,3),list(SoilTemperature=lv, Season=lvSeason,SoilMoisture=lv,Insulation=lv,AirTemperature=lv))
ThawDepth <- array(c(0.05,0.4,0.55,0.05,0.35,0.6,0.1,0.25,0.65,0.05,0.35,0.6,0.05,0.3,0.65,0.1,0.2,0.7,0.1,0.15,0.75,0.05,0.15,0.8,0.05,0.1,0.85,0.5,0.4,0.1,0.45,0.4,0.15,0.4,0.35,0.25,      0.15,0.4,0.45,0.1,0.4,0.5,0.05,0.4,0.55,0.25,0.35,0.4,0.15,0.4,0.45,0.1,0.4,0.5,0.85,0.1,0.05,0.8     ,0.15,0.05,   0.75,0.15,0.1,    0.7,0.2,0.1,    0.65,0.3,0.05,   0.6,0.35,0.05,    0.65,0.25,0.1,   0.6,0.35,0.05,    0.55,0.4,0.05),c(3,3,3,3),list(ThawDepth=lv,SoilMoisture=lv,SoilTemperature=lv,ActiveLayerIceContent=lv))
SoilWaterInput <- array(c(0.75,0.15,0.1,0.8,0.12,0.08,0.85,0.1,0.05,  0.7,0.18,0.12,0.75,0.16,0.09, 0.8,0.15,0.05,   0.65,0.2,0.15,0.7,0.18,0.12,0.75,0.17,0.08,   0.45,0.35,0.2,0.5,0.32,0.18, 0.55,0.3,0.15,  0.3,0.45,0.25,0.35,0.45,0.2,0.4,0.42,0.18,  0.1,0.3,0.6,0.15,0.3,0.55,0.2,0.3,0.5, 0.08,0.17,0.75,0.12,0.18,0.7,0.15,0.2,0.65, 0.05,0.15,0.8, 0.09,0.16,0.75,0.12,0.18,0.7,0.05,0.1,0.85,0.08,0.12,0.8,0.1,0.15,0.75),c(3,3,3,3), list(SoilWaterInput=lv,AirTemperature=lv,Snow=lv,Rain=lv))
VegetationHeight <- array(c(1,0,0,1,0,0,1,0,0,   0.86,0.1,0.04,0.86,0.1,0.04,0.86,0.1,0.04,0.83,0.17,0,0.83,0.17,0,0.83,0.17,0,  1,0,0,1,0,0,1,0,0),c(3,3,4),list(VegetationHeight =lv, AirTemperature=lv,Aspect=lvAspect))

permaBN <- custom.fit(dag,list(
  ActiveLayerIceContent=ActiveLayerIceContent,
  AirTemperature=AirTemperature,
  Aspect=Aspect,
  Insulation=Insulation,
  Rain=Rain,
  Season=Season,
  Snow=Snow,
  SnowDepth=SnowDepth,
  SoilDensity=SoilDensity,
  SoilMoisture=SoilMoisture,
  SoilTemperature=SoilTemperature,
  SoilWaterInput=SoilWaterInput,
  ThawDepth=ThawDepth,
  VegetationHeight=VegetationHeight
))


usethis::use_data(permaBN, overwrite = TRUE)
