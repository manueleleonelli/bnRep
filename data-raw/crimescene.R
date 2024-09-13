
library(bnlearn)

dag <- model2network("[SuspectPickedLock|Hypothesis][UnknownPickedLock|Hypothesis][Hypothesis][DNAFoundOnFoil|SuspectDNAOnFoilFromCutting:SuspectDNAOnFoilFromPicking:UnknownDNAOnFoil][UnknownDNAOnFoil|UnknownPickedLock:UnknownCutTheFoil][SuspectCutTheFoil|Hypothesis][UnknownCutTheFoil|Hypothesis][SuspectDNAOnFoilFromCutting|UnknownPickedLock:SuspectCutTheFoil][SuspectDNAOnFoilFromPicking|SuspectPickedLock:UnknownCutTheFoil]")

lv <- c("Prosecutor","Defense")
lv1 <- c("Yes","No")

SuspectCutTheFoil <- array(c(0,1,1,0),c(2,2),list(SuspectCutTheFoil=lv1,Hypothesis=lv ))
UnknownCutTheFoil <- array(c(1,0,0,1),c(2,2),list(UnknownCutTheFoil=lv1,Hypothesis=lv))
SuspectDNAOnFoilFromCutting <- array(c(0.07,0.93,0.12,0.88,0,1,0,1),c(2,2,2),list(SuspectDNAOnFoilFromCutting=lv1,UnknownPickedLock=lv1,SuspectCutTheFoil=lv1))
SuspectDNAOnFoilFromPicking <- array(c(0.36,0.64,0,1,0.19,0.81,0,1),c(2,2,2),list(SuspectDNAOnFoilFromPicking=lv1,SuspectPickedLock=lv1,UnknownCutTheFoil=lv1))
UnknownDNAOnFoil <- array(c(0.31,0.69,0.07,0.93,0.36,0.64,0,1),c(2,2,2),list(UnknownDNAOnFoil=lv1,UnknownPickedLock=lv1,UnknownCutTheFoil=lv1))
DNAFoundOnFoil <- array(c(0,1,0,0,0,1,0,0,0,1,0,0,0,0,1,0,1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,1),c(4,2,2,2),list(DNAFoundOnFoil=c("Suspect DNA On Foil","Suspect And Unknown DNA On Foil","Unknown DNA On Foil","No DNA On Foil"),SuspectDNAOnFoilFromCutting=lv1,SuspectDNAOnFoilFromPicking=lv1,UnknownDNAOnFoil=lv1))
Hypothesis <- array(c(0.5,0.5),2,list(Hypothesis=lv))
UnknownPickedLock <- array(c(0,1,1,0),c(2,2),list(UnknownPickedLock=lv1,Hypothesis=lv))
SuspectPickedLock <- array(c(1,0,0,1),c(2,2),list(SuspectPickedLock =lv1,Hypothesis=lv))

crimescene <- custom.fit(dag,list(
  SuspectCutTheFoil=SuspectCutTheFoil,
  UnknownCutTheFoil= UnknownCutTheFoil,
  SuspectDNAOnFoilFromCutting=SuspectDNAOnFoilFromCutting,
  SuspectDNAOnFoilFromPicking=SuspectDNAOnFoilFromPicking,
  UnknownDNAOnFoil=UnknownDNAOnFoil,
  DNAFoundOnFoil= DNAFoundOnFoil,
  Hypothesis=Hypothesis,
  UnknownPickedLock=UnknownPickedLock,
  SuspectPickedLock=SuspectPickedLock
  ))


usethis::use_data(crimescene, overwrite = TRUE)
