
library(bnlearn)

dag <- model2network("[ClayContent][SoilWetness][TotalExposure][InherentSusceptibility|ClayContent][CompactionVulnerability|InherentSusceptibility:SoilWetness][CompactionRisk|TotalExposure:CompactionVulnerability]")
lv <- c("Low", "Medium", "High")
lv1 <- c("Very Low", lv, "Very High")
lv2 <- c("Dry", "Moist", "Wet")

ClayContent <- array(c(1/5,1/5,1/5,1/5,1/5),5,list(ClayContent=lv1))
SoilWetness <- array(c(1/3,1/3,1/3),3,list(SoilWetness=lv2))
TotalExposure <- array(c(1/3,1/3,1/3),3,list(TotalExposure=lv))
InherentSusceptibility <- array(0.01*c(55.6,22.2,22.2,6.67,26.7,66.6,5,15,80,5,15,80,9.1,18.2,72.7),c(3,5),list(InherentSusceptibility=lv,ClayContent=lv1))
CompactionVulnerability <- array(0.01*c(100,0,0,75,25,0,20,60,20,75,25,0,10,80,10,10,60,30,50,50,0,0,50,50,0,0,100),c(3,3,3),list(CompactionVulnerability=lv,SoilWetness=lv2,InherentSusceptibility=lv))
CompactionRisk <- array(0.01*c(100,0,0,90,10,0,0,75,25,80,20,0,0,100,0,0,25,75,0,100,0,0,25,75,0,0,100),c(3,3,3),list(CompactionRisk=lv,CompactionVulnerability=lv,TotalExposure=lv))
compaction <- custom.fit(dag,list(
  ClayContent=ClayContent,SoilWetness=SoilWetness,TotalExposure=TotalExposure,
  InherentSusceptibility=InherentSusceptibility,CompactionVulnerability=CompactionVulnerability,
  CompactionRisk=CompactionRisk
))


usethis::use_data(compaction, overwrite = TRUE)
