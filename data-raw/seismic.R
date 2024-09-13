
dag <- model2network("[Fragility|LiveLoad:StrengthDegradation:SeismicHazard][SeismicRisk|Vulnerability:SeismicHazard][Vulnerability|Fragility][ConstructionQuality][LiveLoad][StrengthDegradation|ConstructionQuality][Distance][Magnitude][ShakingIntensity|Distance:Magnitude][SeismicHazard|Magnitude:Distance:ShakingIntensity]")

lv <- c("Low","Medium","High")
lvDist <- c("Short","Medium","Long")


Distance <- array(c(1/3,1/3,1/3),3,list(Distance=lvDist))
Magnitude <- array(c(0.48,0.4,0.12),3,list(Magnitude=lv))
ShakingIntensity <- array(c(0.5,0.3,0.2,0.7,0.2,0.1,1,0,0,0.2,0.5,0.3,0.45,0.4,0.15,0.6,0.3,0.1,0,0,1,0,0.2,0.8,0.2,0.5,0.3),c(3,3,3),list(ShakingIntensity=lv,Distance=lvDist,Magnitude=lv))
SeismicHazard <- array(c(0.8,0.15,0.05,0.75,0.15,0.1,0.7,0.2,0.1,0.85,0.1,0.05,0.8,0.12,0.08,0.78,0.12,0.1,0.9,0.1,0,0.85,0.1,0.05,0.84,0.1,0.06,   0.25,0.5,0.25,0.15,0.25,0.6,0.02,0.08,0.9,0.35,0.45,0.2,0.3,0.4,0.3,0.2,0.3,0.5,0.6,0.2,0.2,0.3,0.55,0.15,0.25,0.6,0.15,     0.2,0.4,0.4,0.2,0.3,0.5,0,0.05,0.95,0.2,0.4,0.4,0.2,0.3,0.5,0.1,0.2,0.7,0.35,0.35,0.3,0.3,0.3,0.4,0.2,0.3,0.5),c(3,3,3,3),list(SeismicHazard=lv,ShakingIntensity=lv,Distance=lvDist,Magnitude=lv))
StrengthDegradation <- array(c(0,0.1,0.9,0.2,0.7,0.1,0.9,0.05,0.05),c(3,3),list(StrengthDegradation=lv,ConstructionQuality=lv))
ConstructionQuality <- array(c(0.1,0.2,0.7),3,list(ConstructionQuality=lv))
LiveLoad <- array(c(0.1,0.1,0.8),3,list(LiveLoad=lv))
Vulnerability <- array(c(1,0,0,0,1,0,0,0,1),c(3,3),list(Vulnerability=lv,Fragility=lv))
SeismicRisk <- array(c(0.75,0.15,0.1,0.55,0.25,0.2,0.3,0.3,0.4,0.25,0.45,0.3,0.08,0.6,0.32,0.02,0.65,0.33,0.8,0.1,0.1,0.15,0.6,0.25,0.02,0.02,0.96),c(3,3,3),list(SeismicRisk=lv,Vulnerability=lv,SeismicHazard=lv))
Fragility <- array(c(0.9,0.1,0,  0.8,0.2,0,  0.7,0.3,0,  0.7,0.2,0.1,  0.6,0.25,0.15,  0.5,0.3,0.2,  0.5,0.3,0.2,  0.36,0.38,0.26,  0.3,0.35,0.35,    0.6,0.23,0.17,  0.48,0.3,0.22,  0.35,0.35,0.3,  0.48,0.3,0.22,  0.43,0.32,0.25,  0.32,0.35,0.33,  0.32,0.33,0.35,  0.14,0.4,0.46,  0.03,0.42,0.55,   0.3,0.38,0.32,  0.18,0.42,0.4,0.07,0.48,0.45,0.16,0.44,0.4,0.02,0.46,0.52,0.02,0.38,0.6,0,0.2,0.8,0,0.15,0.85,0,0.1,0.9),c(3,3,3,3),list(Fragility=lv,LiveLoad=lv,StrengthDegradation=lv,SeismicHazard=lv))

seismic <- custom.fit(dag,list(
  Distance=Distance,Magnitude=Magnitude,ShakingIntensity=ShakingIntensity,SeismicHazard=SeismicHazard,StrengthDegradation=StrengthDegradation,
  ConstructionQuality=ConstructionQuality,LiveLoad=LiveLoad,Vulnerability=Vulnerability,SeismicRisk=SeismicRisk,
  Fragility=Fragility
))

usethis::use_data(seismic,overwrite = TRUE)
