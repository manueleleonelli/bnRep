# Dynamic Bayesian network model to study under-deposit corrosion

library(bnlearn)

corrosion.dag <- model2network("[OrganicDeposits][InorganicDeposits][MixedDeposits][SuspendedDeposits|OrganicDeposits:MixedDeposits:InorganicDeposits][SteelGrade][OD][FlowVelocity][SolidDeposits|SuspendedDeposits:FlowVelocity][MEG][Chloride][OperatingPressure][ShearingForce|FlowVelocity:OperatingPressure][PartialPressureCO2][OperatingTemperature][pH|PartialPressureCO2:OperatingTemperature][UnderDepositGalvanicCell|MEG:Chloride:pH][UDCCorrRate|ShearingForce:SolidDeposits:UnderDepositGalvanicCell][WallThicknessLoss|UDCCorrRate][DefectLength|UDCCorrRate][DefectDepth|WallThicknessLoss][BurstPressure|OD:SteelGrade:DefectLength:DefectDepth][PipeFailure|OperatingPressure:BurstPressure]")

lv <- c("Absent","Present")
lv1 <- c("High","Moderate","Low")
lv2 <- c("High","Low")
lvPH <- c("Acidic","Neutral","Basic")
lv3 <- c("Poor","Fair","Good","Excellent")
lv4 <- c("Yes","No")

OrganicDeposits <- array(c(0.6667,0.3333),dim=2,dimnames=list(OrganicDeposits=lv))
InorganicDeposits <- array(c(0.56,1-0.56),dim=2,dimnames=list(InorganicDeposits=lv))
MixedDeposits <- array(c(0.57,0.43),dim=2,dimnames=list(MixedDeposits=lv))
SuspendedDeposits <- array(c(0.1,0.1,0.8,0.85,0.10,0.05,0.4,0.2,0.4,0.75,0.01,0.24,0.1,0.2,0.7,0.7,0.05,0.25,0.6,0.2,0.2,0.95,0.005,0.045),dim=c(3,2,2,2),dimnames=list(SuspendedDeposits=lv1,MixedDeposits=lv,InorganicDeposits=lv,OrganicDeposits=lv))
SteelGrade <- array(c(0.78,1-0.78),dim=2,dimnames=list(SteelGrade=lv2))
OD <- array(c(0.92,0.08),dim=2,dimnames=list(OD=lv2))
FlowVelocity <- array(c(1,0,0),dim=3,dimnames=list(FlowVelocity=lv1))
SolidDeposits <- array(c(0.4,0.3,0.3,0.5,0.3,0.2,0.01,0.05,0.94,0.6,0.2,0.2,0.4,0.3,0.3,0.1,0.5,0.4,0.7,0.2,0.1,0.5,0.2,0.3,1/3,1/3,1/3), dim= c(3,3,3),dimnames=list(SolidDeposits=lv1,SuspendedDeposits=lv1,FlowVelocity=lv1))
MEG <- array(c(0.3,0.7),dim=2,dimnames = list(MEG=lv))
Chloride <- array(c(0.456,0.1,0.444),dim=3,dimnames=list(Chloride=lv1))
OperatingPressure <- array(c(0.99,0.01,0),dim=3,dimnames=list(OperatingPressure=lv1))
ShearingForce <- array(c(0.4,0.4,0.2,0.15,0.65,0.2,1.11E-16,2.00E-1,0.8,0.1,0.2,0.7,0.05,0.05,0.9,0.05,0.05,0.9,0.05,0.1,0.85,0.01,0.05,0.94,0.03,0.01,0.96), dim= c(3,3,3),dimnames=list(ShearingForce=lv1,FlowVelocity=lv1,OperatingPressure=lv1))
PartialPressureCO2 <- array(c(0.578,0.1,0.322),dim=3,dimnames = list(PartialPressureCO2=lv1))
OperatingTemperature <- array(c(0.1584,0.6754,0.1671),dim=3,dimnames=list(OperatingTemperature=lv1))
pH <- array(c(0.7,0.2,0.1,0.6,0.2,0.2,0,0.2,0.8,0.4,0.3,0.3,0.35,0.15,0.5,0.2,0.2,0.6,0.45,0.25,0.3,0.2,0.1,0.7,0.03,0.01,0.96),dim=c(3,3,3),dimnames=list(pH=lvPH,PartialPressureCO2=lv1,OperatingTemperature=lv1))
UnderDepositGalvanicCell <- array(c(0.5,0.35,0.1,0.05,0.5,0.35,0.1,0.05,0.2,0.20,0.35,0.25,0.2,0.2,0.35,0.25,0.0001,0.001,0.01,0.9889,0.0001,0.001,0.01,0.9889,rep(c(0.0001,0.001,0.01,0.9889),4),0.7,0.2,0.08,0.02,0.7,0.2,0.08,0.02,rep(c(0.7,0.2,0.08,0.02),6)),dim=c(4,2,3,3),dimnames=list(UnderDepositGalvanicCell=lv3,MEG=lv,Chloride=lv1,pH=lvPH))
UDCCorrRate <- array(c(0.91,0.08,0.01,0.98,0,0.02,0.12,0.78,0.1,0.88,0.07,0.05,0.43,0.52,0.05,0.55,0.4,0.05,0.78,0.22,0,0.78,0.22,0,0.78,0.20,0.02,0.88,0.1,0.02,0.98,0.01,0.01,0.88,0.12,0,0.78,0.22,0,0.99,0,0.01,0.89,0.09,0.02,0.88,0.09,0.03,0.56,0.4,0.04,0.45,0.5,0.05,0.43,0.47,0.1,0.43,0.37,0.2,0.56,0.1,0.34,0.34,0.66,0,0.88,0,0.12,0.22,0.56,0.22,0.45,0.32,0.23,0.88,0,0.12,0.73,0.16,0.11,0.43,0.47,0.10,0.43,0.37,0.20,0.56,0.1,0.34,0.34,0.66,0,0.88,0,0.12,0.22,0.56,0.22,0.45,0.32,0.23,0.88,0,0.12,0.73,0.16,0.11),dim=c(3,3,3,4),dimnames=list(UDCCorrRate=lv1,ShearingForce=lv1,SolidDeposits=lv1,UnderDepositGalvanicCell=lv3))
WallThicknessLoss <- array(c(0.88,0.12,0.02,0.98,0.19,0.81),dim=c(2,3),dimnames=list(WallThicknessLoss=lv4,UDCCorrRate=lv1))
DefectLength <- array(c(0.88,0.12,0.56,0.44,0.02,0.98),dim=c(2,3),dimnames=list(DefectLength=lv4,UDCCorrRate=lv1))
DefectDepth <- array(c(1,0,0,1),dim=c(2,2),dimnames=list(DefectDepth=lv4,WallThicknessLoss=lv4))
BurstPressure <- array(c(0,1,0.12,0.88,0.27,0.73,0.58,0.42,0.1,0.9,0.01,0.99,0.18,0.82,0.22,0.78,0.1,0.9,0.02,0.98,0.45,0.55,0.39,0.61,0.12,0.88,0.44,0.56,0.81,0.19,0.34,0.66),dim=c(2,2,2,2,2),dimnames=list(BurstPressure=lv2,OD=lv2,SteelGrade=lv2,DefectLength=lv4,DefectDepth=lv4))
PipeFailure <- array(c(0.44,0.56,0.88,0.12,0.78,0.22,0.77,0.23,0.324,0.676,0.12,0.88),dim=c(2,3,2),dimnames = list(PipeFailure=lv4,OperatingPressure=lv1,BurstPressure=lv2))

probs <- list(OrganicDeposits=OrganicDeposits,InorganicDeposits=InorganicDeposits,MixedDeposits=MixedDeposits,SuspendedDeposits=SuspendedDeposits,
              SteelGrade=SteelGrade,OD=OD,FlowVelocity=FlowVelocity,SolidDeposits=SolidDeposits,MEG=MEG,Chloride=Chloride,OperatingPressure=OperatingPressure,
              ShearingForce=ShearingForce,PartialPressureCO2=PartialPressureCO2,OperatingTemperature=OperatingTemperature, pH=pH,UnderDepositGalvanicCell=UnderDepositGalvanicCell,
              UDCCorrRate=UDCCorrRate,WallThicknessLoss=WallThicknessLoss,DefectDepth=DefectDepth,DefectLength=DefectLength, BurstPressure =BurstPressure,PipeFailure=PipeFailure )

corrosion <- custom.fit(corrosion.dag,probs)

usethis::use_data(corrosion, overwrite = TRUE)


