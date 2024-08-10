# Scenario derivation and consequence evaluation of dust explosion accident based on dynamic Bayesian network

library(bnlearn)

string1 <- "[RestrictedSpace][StrengthenDustControl][CombustibleDustAccumulates|StrengthenDustControl:RestrictedSpace]"
string2 <- "[Misoperation][SparkDetectorExtinguishSparks][SparkOccurence|Misoperation:CombustibleDustAccumulates:SparkDetectorExtinguishSparks]"
string3 <- "[IgnitingTheDustCloud|NoExplosionControlMeasures:SparkOccurence:ExplosionPreventionMeasures][NoExplosionControlMeasures][ExplosionPreventionMeasures]"
string4 <- "[TriggerSecondaryExplosion|IgnitingTheDustCloud:BlastWavesThroughPipes][BlastWavesThroughPipes]"
string5 <- "[DustAccumulationUnderControl|CombustibleDustAccumulates][ExtinctionOfSpark|SparkOccurence][PreventFurtherExpansion|IgnitingTheDustCloud][OpenFireExtinguished|TriggerSecondaryExplosion]"
string6 <- "[InitiateEmergencyResponse][AccidentUnderControl|PreventFurtherExpansion:InitiateEmergencyResponse][DustCloudDisappearance|DustAccumulationUnderControl][AccidentDoNotOccur|ExtinctionOfSpark][EndOfRescue|OpenFireExtinguished]"
string7 <- "[DustExplosionIntensityCoefficient|CombustibleDustAccumulates][Casualties|IgnitingTheDustCloud:TriggerSecondaryExplosion][DirectEconomicLosses|SparkOccurence:IgnitingTheDustCloud:TriggerSecondaryExplosion][EquipmentDamage|SparkOccurence:IgnitingTheDustCloud:TriggerSecondaryExplosion][BuildingDamage|IgnitingTheDustCloud:TriggerSecondaryExplosion][EnvironmentalImpact|IgnitingTheDustCloud:TriggerSecondaryExplosion]"
dustexplosion.dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7))

lv <- c("True","False")
lv1 <- c("I","II","III","IV")

e1.prob <- array(c(0.97,0.03),2,list(RestrictedSpace=lv))
a1.prob <- array(c(0.15,0.85),2,list(StrengthenDustControl=lv))
s1.prob <- array(c(0.23,0.77,0.97,0.03,0.38,0.62,0.85,0.15),c(2,2,2),list(CombustibleDustAccumulates=lv,StrengthenDustControl=lv,RestrictedSpace=lv))
e2.prob <- array(c(0.62,0.38),2,list(Misoperation=lv))
a2.prob <- array(c(0.27,0.73),2,list(SparkDetectorExtinguishSparks=lv))
s2.prob <- array(c(0.03,0.97,0.97,0.03,0.48,0.52,0.97,0.03,0.27,0.73,0.85,0.15,0.15,0.85,0.85,0.15),c(2,2,2,2),list(SparkOccurence=lv,Misoperation=lv,CombustibleDustAccumulates=lv,SparkDetectorExtinguishSparks=lv))
e3.prob <- array(c(0.85,0.15),2,list(NoExplosionControlMeasures=lv))
a3.prob <- array(c(0.27,0.73),2,list(ExplosionPreventionMeasures=lv))
s3.prob <- array(c(0.48,0.52,0.97,0.03,0.27,0.73,0.85,0.15,0.15,0.85,0.97,0.03,0.27,0.73,0.48,0.52),c(2,2,2,2),list(IgnitingTheDustCloud=lv,NoExplosionControlMeasures=lv,SparkOccurence=lv,ExplosionPreventionMeasures=lv))
e4.prob <- array(c(0.62,0.38),2,list(BlastWavesThroughPipes=lv))
s4.prob <- array(c(0.97,0.03,0.62,0.38,0.5,0.5,0.15,0.85),c(2,2,2),list(TriggerSecondaryExplosion=lv,IgnitingTheDustCloud=lv,BlastWavesThroughPipes=lv))
g1.prob <-array(c(0.62,0.38,0.85,0.15),c(2,2),list(DustAccumulationUnderControl=lv,CombustibleDustAccumulates=lv))
g2.prob <-array(c(0.15,0.85,0.97,0.03),c(2,2),list(ExtinctionOfSpark=lv,SparkOccurence=lv))
g3.prob <-array(c(0.03,0.97,0.85,0.15),c(2,2),list(PreventFurtherExpansion=lv,IgnitingTheDustCloud=lv))
g4.prob <-array(c(0.85,0.15,0.27,0.73),c(2,2),list(OpenFireExtinguished=lv,TriggerSecondaryExplosion=lv))
s6.prob <- array(c(0.97,0.03,0.5,0.5),c(2,2),list(AccidentDoNotOccur=lv,ExtinctionOfSpark=lv))
s5.prob <- array(c(0.97,0.03,0.48,0.52),c(2,2),list(DustCloudDisappearance=lv,DustAccumulationUnderControl=lv))
s8.prob <- array(c(0.97,0.03,0.15,0.85),c(2,2),list(EndOfRescue=lv,OpenFireExtinguished=lv))
a4.prob <- array(c(0.85,0.15),2,list(InitiateEmergencyResponse=lv))
s7.prob <- array(c(0.85,0.15,0.15,0.85,0.73,0.27,0.27,0.73),c(2,2,2),list(AccidentUnderControl=lv,PreventFurtherExpansion=lv,InitiateEmergencyResponse=lv))
c1.prob <- array(c(0,0.2,0.3,0.4,0.1,0.2,0.2,0.3,0.2,0.1),c(5,2),list(DustExplosionIntensityCoefficient=c(lv1,"V"),CombustibleDustAccumulates=lv))
c2.prob <- array(c(0.9,0.1,0,0,1,0,0,0,1,0,0,0,1,0,0,0),c(4,2,2),list(Casualties=lv1,IgnitingTheDustCloud=lv,TriggerSecondaryExplosion=lv))
c3.prob <- array(c(0.9,0.1,0,0,0.9,0.1,0,0,0.9,0.1,0,0,1,0,0,0,0.9,0.1,0,0,1,0,0,0,1,0,0,0,1,0,0,0),c(4,2,2,2),list(DirectEconomicLosses=lv1,SparkOccurence=lv,IgnitingTheDustCloud=lv,TriggerSecondaryExplosion=lv))
c4.prob <- array(c(0,0.8,0.1,0.1,0.2,0.7,0.1,0,0.2,0.7,0.1,0,0.2,0.6,0.2,0,0.2,0.7,0.1,0,0.2,0.6,0.2,0,0.2,0.6,0.2,0,0.6,0.4,0,0),c(4,2,2,2),list(EquipmentDamage=lv1,SparkOccurence=lv,IgnitingTheDustCloud=lv,TriggerSecondaryExplosion=lv))
c5.prob <- array(c(0,0.8,0.1,0.1,0.3,0.6,0.1,0,0,0.6,0.3,0.1,0.3,0.5,0.2,0),c(4,2,2),list(BuildingDamage=lv1,IgnitingTheDustCloud=lv,TriggerSecondaryExplosion=lv))
c6.prob <- array(c(0.7,0.2,0.1,0,0.8,0.2,0,0,0.8,0.2,0,0,0.9,0.1,0,0),c(4,2,2),list(EnvironmentalImpact=lv1,IgnitingTheDustCloud=lv,TriggerSecondaryExplosion=lv))



probs <- list(
  RestrictedSpace=e1.prob,
  StrengthenDustControl=a1.prob,
  CombustibleDustAccumulates=s1.prob,
  Misoperation=e2.prob,
  SparkDetectorExtinguishSparks=a2.prob,
  SparkOccurence=s2.prob,
  NoExplosionControlMeasures=e3.prob,
  ExplosionPreventionMeasures=a3.prob,
  IgnitingTheDustCloud=s3.prob,
  BlastWavesThroughPipes = e4.prob,
  TriggerSecondaryExplosion=s4.prob,
  DustAccumulationUnderControl=g1.prob,
  ExtinctionOfSpark=g2.prob,
  PreventFurtherExpansion=g3.prob,
  OpenFireExtinguished=g4.prob,
  AccidentDoNotOccur=s6.prob,
  DustCloudDisappearance=s5.prob,
  EndOfRescue = s8.prob,
  InitiateEmergencyResponse=a4.prob,
  AccidentUnderControl=s7.prob,
  DustExplosionIntensityCoefficient=c1.prob,
  Casualties=c2.prob,
  DirectEconomicLosses=c3.prob,
  EquipmentDamage= c4.prob,
  BuildingDamage = c5.prob,
  EnvironmentalImpact = c6.prob
)


dustexplosion <- custom.fit(dustexplosion.dag,probs)

#usethis::use_data(dustexplosion, overwrite = TRUE)
