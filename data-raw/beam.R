
library(bnlearn)

dag <- model2network("[WrappingScheme][ShearGain|BeamShearSpan:FRPSheetsSpacing:WrappingScheme][FRPSheetsSpacing][BeamShearSpan][ModelOfFailure|ShearGain][ProbabilityOfFailure|ModelOfFailure]")

lvW <- c("Grooving","Side Bonding","Three Side Bonding","Three Side Bonding With Anchoring","Full Wrapping")
lv1 <- c("Low","Medium","High")
lv <- c("Low","High")
lvM <- c("Rupture","Debonding","FRP Pass")
lvP <- c("Fail","Pass")

BeamShearSpan <- array(c(0.65,0.35),c(2),list(BeamShearSpan=lv))
FRPSheetsSpacing <- array(c(0.7,0.3),c(2),list(FRPSheetsSpacing=lv))
ModelOfFailure <- array(c(0.3,0.5,0.2,0.2,0.4,0.4,0.15,0.25,0.6),c(3,3),list(ModelOfFailure=lvM,ShearGain=lv1))
ProbabilityOfFailure <- array(c(1,0,1,0,0,1),c(2,3),list(ProbabilityOfFailure=lvP, ModelOfFailure=lvM))
ShearGain <- array(c(0.075,0.275,0.65,0.125,0.325,0.55,0.1,0.3,0.6,0.15,0.35,0.5,0.05,0.25,0.7,0.1,0.3,0.6,0.075,0.275,0.65,0.125,0.325,0.55,0.1,0.3,0.6,0.15,0.35,0.5,0.125,0.325,0.55,0.175,0.375,0.45,0.15,0.35,0.5,0.2,0.4,0.4,0.175,0.375,0.45,0.225,0.425,0.35,0.2,0.4,0.4,0.25,0.45,0.3,0.225,0.425,0.35,0.275,0.475,0.25),c(3,2,2,5),list(ShearGain=lv1,FRPSheetsSpacing=lv,BeamShearSpan=lv,WrappingScheme=lvW))
WrappingScheme <- array(c(0.15,0.1,0.2,0.25,0.3),c(5),list(WrappingScheme=lvW))

beam1 <- custom.fit(dag,list(
  BeamShearSpan=BeamShearSpan,
  FRPSheetsSpacing=FRPSheetsSpacing,
  ModelOfFailure=ModelOfFailure,
  ProbabilityOfFailure=ProbabilityOfFailure,
  ShearGain=ShearGain,
  WrappingScheme=WrappingScheme
))


usethis::use_data(beam1, overwrite = TRUE)


library(bnlearn)

dag <- model2network("[WaterCementRatio][ProbabilityOfFailure|ConcreteStrength:Reinforcement:BeamWidth][Reinforcement][ConcreteStrength|WaterCementRatio:TempAndHumidity][BeamWidth][TempAndHumidity]")

lv <- c("Low","High")
lvP <- c("Fail","Pass")

WaterCementRatio <- array(c(0.55,0.45),c(2),list(WaterCementRatio=lv))
TempAndHumidity <- array(c(0.7,0.3),c(2),list(TempAndHumidity=lv))
BeamWidth <- array(c(0.65,0.35),c(2),list(BeamWidth=lv))
ConcreteStrength <- array(c(0.3,0.7,0.4,0.6,0.35,0.65,0.45,0.55),c(2,2,2),list(ConcreteStrength=lv,TempAndHumidity=lv,WaterCementRatio=lv))
Reinforcement <- array(c(0.65,0.35),c(2),list(Reinforcement=lv))
ProbabilityOfFailure <- array(c(0.35,0.65,0.45,0.55,0.4,0.6,0.5,0.5,0.3,0.7,0.4,0.6,0.35,0.65,0.45,0.55),c(2,2,2,2),list(ProbabilityOfFailure=lvP,ConcreteStrength=lv,Reinforcement=lv,BeamWidth=lv))

beam2 <- custom.fit(dag,list(
  WaterCementRatio = WaterCementRatio,
  TempAndHumidity=TempAndHumidity,
  BeamWidth=BeamWidth,
  ConcreteStrength=ConcreteStrength,
  Reinforcement=Reinforcement,
  ProbabilityOfFailure=ProbabilityOfFailure
))


usethis::use_data(beam2, overwrite = TRUE)



