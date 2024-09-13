
library(bnlearn)

dag <- model2network("[EthanolConsumptionWithin8hrsOfDeath][5HTOL5HIAARatio|EthanolConsumptionWithin8hrsOfDeath][WitnessEvidenceOfETOHConsumption|EthanolConsumptionWithin8hrsOfDeath][BACAtTimeOfDeath|EthanolConsumptionWithin8hrsOfDeath][VACPositive|BACAtTimeOfDeath][UACPositive|VACPositive][PMAlcoholFormation][VOCDetected|PMAlcoholFormation][MeasuredBAC|PMAlcoholFormation:BACAtTimeOfDeath]")
lv1 <-c("Yes","No")
lv2 <- c("a101plus","a80-100","a50-80","a40-49","a30-39","a20-29","a10-19","Negative")
lv3 <- c("PMF","No PMF")

EthanolConsumptionWithin8hrsOfDeath <- array(c(0.05,0.95),2,list(EthanolConsumptionWithin8hrsOfDeath=lv1))
HTOL5HIAARatio <- array(c(0.999,0.001,0.001,0.999),c(2,2),list(`5HTOL5HIAARatio`=c("Above 20","Below 20"),EthanolConsumptionWithin8hrsOfDeath=lv1))
WitnessEvidenceOfETOHConsumption <- array(c(0.5,0.5,0.001,0.999),c(2,2),list(WitnessEvidenceOfETOHConsumption=c("Positive","Negative"),EthanolConsumptionWithin8hrsOfDeath=lv1))
BACAtTimeOfDeath <- array(c(0.1,0.2,0.3,0.2,0.1,0.045,0.045,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.01,0.93),c(8,2),list(BACAtTimeOfDeath =lv2,EthanolConsumptionWithin8hrsOfDeath =lv1))
VACPositive <- array(c(0.999,0.001,0.999,0.001,0.999,0.001,0.891,0.109,0.704,0.296,0.591,0.409,0.539,0.461,0.001,0.999),c(2,8),list(VACPositive=c("Positive","Negative"),BACAtTimeOfDeath=lv2))
UACPositive <- array(c(0.93,0.07,0.15,0.85),c(2,2),list(UACPositive=c("UPositive","UNegative"),VACPositive=c("Positive","Negative")))
PMAlcoholFormation <- array(c(0.5,0.5),c(2),list(PMAlcoholFormation=lv3))
VOCDetected <- array(c(0.5,0.5,0.41,0.59),c(2,2),list(VOCDetected=c("Detected","Not Detected"),PMAlcoholFormation=lv3))
MeasuredBAC <- array(c(rep(c(0.993,rep(0.001,7)),4),0.01,0.993,rep(0.001,8),0.993,rep(0.001,8),0.993,rep(0.001,4),0.202,0.149,0.053,0.117,0.329,0.043,0.106,0.001,    0.93,rep(0.01,8),0.93,rep(0.01,8),0.93,rep(0.01,8),0.93,rep(0.01,8),0.93,rep(0.01,8),0.93,rep(0.01,8),0.93,rep(0.01,8),0.93),c(8,8,2),list(MeasuredBAC =lv2,BACAtTimeOfDeath=lv2,PMAlcoholFormation=lv3))

aircrash <- custom.fit(dag,list(
 EthanolConsumptionWithin8hrsOfDeath=EthanolConsumptionWithin8hrsOfDeath,
 `5HTOL5HIAARatio`=HTOL5HIAARatio,
 WitnessEvidenceOfETOHConsumption=WitnessEvidenceOfETOHConsumption,
 BACAtTimeOfDeath=BACAtTimeOfDeath,
 VACPositive=VACPositive,
 UACPositive=UACPositive,
 PMAlcoholFormation=PMAlcoholFormation,
 VOCDetected=VOCDetected,
 MeasuredBAC=MeasuredBAC
))


usethis::use_data(aircrash, overwrite = TRUE)
