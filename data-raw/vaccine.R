#Sensitivity analysis in multilinear probabilistic models

library(bnlearn)

dag <- model2network("[Screening_Test][Disease|Screening_Test][Vaccine|Screening_Test:Disease]")
lvTest <- c("Negative","Positive")
lvDisease <- c("Healthy","Mildly","Severly")
lvVaccine <- c("No","Yes")

Test.prob <- array(c(0.6,0.4), dim=2,dimnames = list(Screening_Test=lvTest))
Disease.prob <- array(c(0.5,0.4,0.1,0.24,0.35,0.41),dim=c(3,2),dimnames=list(Disease=lvDisease, Screening_Test=lvTest))
Vaccine.prob <- array(c(0.8,0.2,0.5,0.5,0.2,0.8,0.6,0.4,0.5,0.5,0.2,0.8),dim=c(2,3,2), dimnames= list(Vaccine=lvVaccine,Disease=lvDisease,Screening_Test=lvTest))

cpt <- list(Screening_Test=Test.prob,Disease=Disease.prob,Vaccine=Vaccine.prob)
vaccine <- custom.fit(dag,cpt)

usethis::use_data(vaccine, overwrite = TRUE)
