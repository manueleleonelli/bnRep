
library(bnlearn)

dag <- model2network("[Location][Gender][AgeGroup][Tubercolosis|Location:AgeGroup:Gender][TreatmentOutcome|Tubercolosis]")
lvAge <- c("0 to 35", "35 to 65", "More than 65")
lvLocation <- c("Nkangala", "Gert Sibande", "Ehlanzeni")
lvGender <- c("Male", "Femal")
lvT <- c("Pulmonary", "ExtraPulmonary")
lvO <- c("Alive", "Died")

Location<- array(c(0.28141,0.25377,0.46482),3,list(Location=lvLocation))
AgeGroup <- array(c(0.50279,0.47097,0.02624),3,list(AgeGroup=lvAge))
Gender <- array(c(0.53685,1-0.53685),2,list(Gender=lvGender))
TreatmentOutcome <- array(c(0.86811,0.13189,0.86364,0.13636),c(2,2),list(TreatmentOutcome=lvO,Tubercolosis=lvT))
Tubercolosis <- array(c(0.87179,0.12821,0.90517,0.09483,0.89205,0.10795,0.93226,0.06774,0.96918,0.03082,0.88987,0.11013,0.90909,0.09091,1,0,0.87097,0.12903,0.88095,0.11905,0.92213,0.07787,0.8809,0.1191,0.92265,0.07735,0.90076,0.09924,0.87774,0.12226,0.9,0.1,1,0,0.90909,0.09091),c(2,3,3,2),list(Tubercolosis=lvT,Location=lvLocation,AgeGroup=lvAge,Gender=lvGender))

tubercolosis <- custom.fit(dag,list(
  Location=Location,AgeGroup=AgeGroup,Gender=Gender,Tubercolosis=Tubercolosis,TreatmentOutcome=TreatmentOutcome
))


usethis::use_data(tubercolosis, overwrite = TRUE)
