
library(bnlearn)

dag <- model2network("[TS][FP][TSI|TS][TC|TS:FP][FPI|FP][CPMS][ECFS][ECFCBI|ECFS][ECA|CPMS:ECFS][CPMSI|CPMS][CP|CPMS][ECOL|ECA][ECFOL|ECA][OMD|CP][OMDL|OMD][CLPL|CP][CAW|CP:TC]")




CAW  <- array(c(0.001,0.999,0.999,0.001,0.999,0.001,0.999,0.001),c(2,2,2),list(CAW=c("yes","no"),CP=c("normal","low"),TC=c("correct","wrong")))
CLPL <- array(c(0.001,0.999,0.999,0.001),c(2,2),list(CLPL=c("illuminated","extinguished"),CP=c("normal","low")))
CP <- array(c(0.99,0.001,0.001,0.999),c(2,2),list(CP=c("normal","low"),CPMS=c("automatic","manual")))
CPMS<- array(c(0.997,0.003),2,list(CPMS=c("automatic","manual")))
CPMSI<- array(c(0.999,0.001,0.001,0.999),c(2,2),list(CPMSI= c("automatic","manual"),CPMS=c("automatic","manual")))
ECA<- array(c(0.999,0.001,0.001,0.999,0.001,0.999,0.999,0.001),c(2,2,2),list(ECA=c("normal","low"),ECFS=c("normal","faulted"),CPMS=c("automatic","manual")))
ECFCBI<- array(c(0.999,0.001,0.001,0.999),c(2,2),list(ECFCBI=c("on","off"),ECFS=c("normal","faulted")))
ECFOL<- array(c(0.001,0.999,0.999,0.001),c(2,2),list(ECFOL=c("illuminated","extinguished"),ECA=c("normal","low")))
ECFS<- array(c(0.999,0.001),2,list(ECFS=c("normal","faulted")))
ECOL<- array(c(0.001,0.999,0.999,0.001),c(2,2),list(ECOL=c("illuminated","extinguished"),ECA=c("normal","low")))
FPI<- array(c(0.999,0.001,0.001,0.999),c(2,2),list(FPI=c("retracted","extended"),FP=c("retracted","extended")))
FP<- array(c(0.001,0.999),2,list(FP=c("retracted","extended")))
OMD<- array(c(0.001,0.999,0.999,0.001),c(2,2),list(OMD=c("yes","no"),CP=c("normal","low")))
OMDL<- array(c(0.999,0.001,0.001,0.999),c(2,2),list(OMDL=c("illuminated","extinguished"),OMD=c("yes","no")))
TC<- array(c(0,1,1,0,0,1,0,1),c(2,2,2),list(TC=c("correct","wrong"),FP=c("retracted","extended"),TS=c("normal","abnormal")))
TS<- array(c(0.999,0.001),2,list(TC=c("normal", "abnormal")))
TSI<- array(c(0.99,0.001,0.001,0.999),c(2,2),list(TSI=c("normal","abnormal"),TS=c("normal","abnormal")))

emergency <- custom.fit(dag,list(
  CAW=CAW,CLPL=CLPL,CP=CP,CPMS=CPMS,CPMSI=CPMSI,ECA=ECA,ECFCBI=ECFCBI,ECFOL=ECFOL,ECOL=ECOL,
  ECFS=ECFS,FP=FP,FPI=FPI,OMD=OMD,OMDL=OMDL,TC=TC,TS=TS,TSI=TSI
  ))


usethis::use_data(emergency, overwrite = TRUE)
