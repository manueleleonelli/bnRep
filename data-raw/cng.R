
library(bnlearn)


string1 <- "[FailureToInspectAndOperateEquipment|ImproperOperatorPerformance:X60][ImproperOperatorPerformance|ChemicalContaminants:HearingLoss:Stress:InadequateTraining:Lighting:X41:X40:X39:X36:X33:X32][ChemicalContaminants|X43:X42][HearingLoss|X38:X37][Stress|X35:X34][InadequateTraining|X31:X30][Lighting|X29:X28][X1][X2][X3][X4][X5][X6][X7][X8][X9][X10]"
string2 <- "[Dispenser|X59:X58:X57][Exhaustion|X5:X6:X7][X11][X12][X13][X14][X15][X16][X17][X18][X19][X20]"
string3 <- "[AdjacentLandUses|X48:X47:X46][Wastes|X45:X44][Storage|X56:X55][Dryer|X54:X53:X52][RoomMetering|X51:X50][X21][X22][X23][X24][X25][X26][X27][X28][X29][X30]"
string4 <- "[WindSpeed|X12:X11][Temperature|X10:X9][X31][X32][X33][X34][X35][X36][X37][X38][X39][X40]"
string5 <- "[TankStructure|Exhaustion:X8:X4:X3:X2:X1][FortuitousEvents|NaturalDisasters:MilitaryIncidents:X24][MilitaryIncidents|X21:X22:X23][NaturalDisasters|X20:X19:X18:X17:X16][X41][X42][X43][X44][X45][X46][X47][X48][X49][X50]"
string6 <- "[LeakOfCNG|AnticipatedEvents:FortuitousEvents][AnticipatedEvents|ProcessProblems:EnvironmentChanges:HumanReasons:ClimateChanges:TankStructure][ProcessProblems|Dispenser:Storage:Dryer:RoomMetering][EnvironmentChanges|AdjacentLandUses:Wastes:X49][HumanReasons|FailureToInspectAndOperateEquipment:X25:X26:X27][ClimateChanges|X15:X14:X13:WindSpeed:Temperature][X51][X52][X53][X54][X55][X56][X57][X58][X59][X60]"

dag <- model2network(paste0(string1,string2,string3,string4,string5,string6))
lv <- c("T","F")

X1 <- array(c(0.00175388,1-0.00175388),2,list(X1=lv))
X2 <- array(c(0.00166341,1-0.00166341),2,list(X2=lv))
X3 <- array(c(0.00174181,1-0.00174181),2,list(X3=lv))
X4 <- array(c(0.00151356,1-0.00151356),2,list(X4=lv))
X5 <- array(c(0.00149968,1-0.00149968),2,list(X5=lv))
X6 <- array(c(0.00149968,1-0.00149968),2,list(X6=lv))
X7 <- array(c(0.00149968,1-0.00149968),2,list(X7=lv))
X8 <- array(c(0.00141579,1-0.00141579),2,list(X8=lv))
X9 <- array(c(0.00125603,1-0.00125603),2,list(X9=lv))
X10 <- array(c(0.00110154,1-0.00110154),2,list(X10=lv))
X11 <- array(c(0.00157036,1-0.00157036),2,list(X11=lv))
X12 <- array(c(0.00133352,1-0.00133352),2,list(X12=lv))
X13 <- array(c(0.00148594,1-0.00148594),2,list(X13=lv))
X14 <- array(c(0.0011722,1-0.0011722),2,list(X14=lv))
X15 <- array(c(0.00140281,1-0.00140281),2,list(X15=lv))
X16 <- array(c(0.0013213,1-0.0013213),2,list(X16=lv))
X17 <- array(c(0.0012331,1-0.0012331),2,list(X17=lv))
X18 <- array(c(0.00128233,1-0.00128233),2,list(X18=lv))
X19 <- array(c(0.00148594,1-0.00148594),2,list(X19=lv))
X20 <- array(c(0.0012942,1-0.0012942),2,list(X20=lv))
X21 <- array(c(0.00145546,1-0.00145546),2,list(X21=lv))
X22 <- array(c(0.00142889,1-0.00142889),2,list(X22=lv))
X23 <- array(c(0.00155597,1-0.00155597),2,list(X23=lv))
X24 <- array(c(0.00115878,1-0.00115878),2,list(X24=lv))
X25 <- array(c(0.0012331,1-0.0012331),2,list(X25=lv))
X26 <- array(c(0.00083946,1-0.00083946),2,list(X26=lv))
X27 <- array(c(0.00164816,1-0.00164816),2,list(X27=lv))
X28 <- array(c(0.00138676,1-0.00138676),2,list(X28=lv))
X29 <- array(c(0.00144212,1-0.00144212),2,list(X29=lv))
X30 <- array(c(0.00151356,1-0.00151356),2,list(X30=lv))
X31 <- array(c(0.00133352,1-0.00133352),2,list(X31=lv))
X32 <- array(c(0.00102329,1-0.00102329),2,list(X32=lv))
X33 <- array(c(0.0012942,1-0.0012942),2,list(X33=lv))
X34 <- array(c(0.00151356,1-0.00151356),2,list(X34=lv))
X35 <- array(c(0.0012942,1-0.0012942),2,list(X35=lv))
X36 <- array(c(0.0015417,1-0.0015417),2,list(X36=lv))
X37 <- array(c(0.0012331,1-0.0012331),2,list(X37=lv))
X38 <- array(c(0.00120781,1-0.00120781),2,list(X38=lv))
X39 <- array(c(0.00185353,1-0.00185353),2,list(X39=lv))
X40 <- array(c(0.0013213,1-0.0013213),2,list(X40=lv))
X41 <- array(c(0.0012331,1-0.0012331),2,list(X41=lv))
X42 <- array(c(0.00103276,1-0.00103276),2,list(X42=lv))
X43 <- array(c(0.0010666,1-0.0010666),2,list(X43=lv))
X44 <- array(c(0.00115878,1-0.00115878),2,list(X44=lv))
X45 <- array(c(0.00108893,1-0.00108893),2,list(X45=lv))
X46 <- array(c(0.00130918,1-0.00130918),2,list(X46=lv))
X47 <- array(c(0.00115878,1-0.00115878),2,list(X47=lv))
X48 <- array(c(0.0012942,1-0.0012942),2,list(X48=lv))
X49 <- array(c(0.00142889,1-0.00142889),2,list(X49=lv))
X50 <- array(c(0.00127057,1-0.00127057),2,list(X50=lv))
X51 <- array(c(0.0011246,1-0.0011246),2,list(X51=lv))
X52 <- array(c(0.0013213,1-0.0013213),2,list(X52=lv))
X53 <- array(c(0.00107895,1-0.00107895),2,list(X53=lv))
X54 <- array(c(0.0011246,1-0.0011246),2,list(X54=lv))
X55 <- array(c(0.0012942,1-0.0012942),2,list(X55=lv))
X56 <- array(c(0.00108893,1-0.00108893),2,list(X56=lv))
X57 <- array(c(0.00130918,1-0.00130918),2,list(X57=lv))
X58 <- array(c(0.0010666,1-0.0010666),2,list(X58=lv))
X59 <- array(c(0.0013213,1-0.0013213),2,list(X59=lv))
X60 <- array(c(0.00016326,1-0.00016326),2,list(X60=lv))
ChemicalContaminants <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(ChemicalContaminants=lv,X43=lv,X42=lv))
HearingLoss <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(HearingLoss=lv,X38=lv,X37=lv))
Stress <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(Stress=lv,X34=lv,X35=lv))
Lighting <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(Lighting=lv,X28=lv,X29=lv))
InadequateTraining<- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(InadequateTraining=lv,X31=lv,X30=lv))
ImproperOperatorPerformance <- array(c(rep(c(1,0),2^11 -1),0,1),rep(2,12),list(ImproperOperatorPerformance=lv,X41=lv,X40=lv,X39=lv,X36=lv,X33=lv,X32=lv,Lighting=lv,InadequateTraining=lv,HearingLoss=lv,Stress=lv,ChemicalContaminants=lv))
Exhaustion <-array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(Exhaustion=lv,X7=lv,X6=lv,X5=lv))
Dispenser <- array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(Dispenser=lv,X59=lv,X58=lv,X57=lv))
Storage<- array(c(rep(c(1,0),2^2 -1),0,1),rep(2,3),list(Storage=lv,X55=lv,X56=lv))
Dryer <- array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(Dryer=lv,X54=lv,X53=lv,X52=lv))
RoomMetering <- array(c(rep(c(1,0),2^2 -1),0,1),rep(2,3),list(RoomMetering=lv,X51=lv,X50=lv))
AdjacentLandUses <- array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(AdjacentLandUses =lv,X48=lv,X47=lv,X46=lv))
Wastes <- array(c(rep(c(1,0),2^2 -1),0,1),rep(2,3),list(Wastes=lv,X45=lv,X44=lv))
FailureToInspectAndOperateEquipment <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(FailureToInspectAndOperateEquipment=lv,ImproperOperatorPerformance=lv,X60=lv))
WindSpeed <- array(c(rep(c(1,0),2^2 -1),0,1),rep(2,3),list(WindSpeed=lv,X12=lv,X11=lv))
Temperature <- array(c(rep(c(1,0),2^2 -1),0,1),rep(2,3),list(Temperature=lv,X10=lv,X9=lv))
NaturalDisasters <- array(c(rep(c(1,0),2^5 -1),0,1),rep(2,6),list(NaturalDisasters=lv,X16=lv,X17=lv,X18=lv,X19=lv,X20=lv))
MilitaryIncidents <-array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(MilitaryIncidents =lv,X21=lv,X22=lv,X23=lv))
FortuitousEvents <-array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(FortuitousEvents=lv,MilitaryIncidents =lv,X24=lv,NaturalDisasters=lv))
TankStructure<-array(c(rep(c(1,0),2^6 -1),0,1),rep(2,7),list(TankStructure=lv,Exhaustion=lv,X8=lv,X4=lv,X3=lv,X2=lv,X1=lv))
ClimateChanges<-array(c(rep(c(1,0),2^5 -1),0,1),rep(2,6),list(ClimateChanges=lv,X15=lv,X14=lv,X13=lv,WindSpeed=lv,Temperature=lv))
HumanReasons <- array(c(rep(c(1,0),2^4 -1),0,1),rep(2,5),list(HumanReasons=lv,X25=lv,X26=lv,X27=lv,FailureToInspectAndOperateEquipment=lv))
EnvironmentChanges<- array(c(rep(c(1,0),2^3 -1),0,1),rep(2,4),list(EnvironmentChanges=lv,X49=lv,Wastes=lv,AdjacentLandUses=lv))
ProcessProblems <- array(c(rep(c(1,0),2^4 -1),0,1),rep(2,5),list(ProcessProblems=lv,Dispenser=lv,Storage=lv,Dryer=lv,RoomMetering=lv))
AnticipatedEvents <- array(c(rep(c(1,0),2^5 -1),0,1),rep(2,6),list(AnticipatedEvents=lv, ProcessProblems=lv,EnvironmentChanges=lv,HumanReasons=lv,ClimateChanges=lv,TankStructure=lv))
LeakOfCNG<- array(c(rep(c(1,0),2^2 -1),0,1),rep(2,3),list(LeakOfCNG=lv,AnticipatedEvents=lv,FortuitousEvents=lv))


cng <- custom.fit(dag,list(
 X1=X1,X2=X2,X3=X3,X4=X4,X5=X5,X6=X6,X7=X7,X8=X8,X9=X9,X10=X10,
 X11=X11,X12=X12,X13=X13,X14=X14,X15=X15,X16=X16,X17=X17,X18=X18,X19=X19,X20=X20,
 X21=X21,X22=X22,X23=X23,X24=X24,X25=X25,X26=X26,X27=X27,X28=X28,X29=X29,X30=X30,
 X31=X31,X32=X32,X33=X33,X34=X34,X35=X35,X36=X36,X37=X37,X38=X38,X39=X39,X40=X40,
 X41=X41,X42=X42,X43=X43,X44=X44,X45=X45,X46=X46,X47=X47,X48=X48,X49=X49,X50=X50,
 X51=X51,X52=X52,X53=X53,X54=X54,X55=X55,X56=X56,X57=X57,X58=X58,X59=X59,X60=X60,
 ChemicalContaminants=ChemicalContaminants,HearingLoss=HearingLoss,Stress=Stress,Lighting=Lighting,
 InadequateTraining=InadequateTraining,ImproperOperatorPerformance=ImproperOperatorPerformance,
 Exhaustion=Exhaustion,Dispenser=Dispenser,Storage=Storage,Dryer=Dryer,RoomMetering=RoomMetering,
 AdjacentLandUses=AdjacentLandUses,Wastes=Wastes,FailureToInspectAndOperateEquipment=FailureToInspectAndOperateEquipment,
 WindSpeed=WindSpeed,Temperature=Temperature,NaturalDisasters=NaturalDisasters,MilitaryIncidents=MilitaryIncidents,
 FortuitousEvents=FortuitousEvents,TankStructure=TankStructure,ClimateChanges=ClimateChanges,
 HumanReasons=HumanReasons,EnvironmentChanges=EnvironmentChanges,ProcessProblems=ProcessProblems,
 AnticipatedEvents=AnticipatedEvents,LeakOfCNG=LeakOfCNG
  ))


usethis::use_data(cng, overwrite = TRUE)
