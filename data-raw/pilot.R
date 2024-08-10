#Dynamic analysis of pilot transfer accidents

library(bnlearn)

string1 <- "[PoorCommunicationWithPilotBoat][LackOfSupervision][CommercialPressure][IndividualFailure|PoorCommunicationWithPilotBoat:LackOfSupervision:CommercialPressure][PoorISMSystem][LackOfSafetyCulture][OrganizationalFailure|PoorISMSystem:LackOfSafetyCulture][ExcessiveShipSpeed][ImproperShipHandling][ManeouveringFailures|ExcessiveShipSpeed:ImproperShipHandling][PilotLadder][NonComplyTrapdoor][ShipSideObstructed][StructuralFailure|PilotLadder:NonComplyTrapdoor:ShipSideObstructed][PoorCombinationLadder][PoorPilotLadder][PoorConditionPTA|PoorCombinationLadder:PoorPilotLadder][FailureHandholds][NonCertifiedPilotLadder][PTAEquipmentFailure|FailureHandholds:NonCertifiedPilotLadder:PoorConditionPTA][PTAFailure|StructuralFailure:PTAEquipmentFailure]"

string2 <- "[PilotTransferAccident|SubstandardActs:SubstandardConditions][SubstandardConditions|PTAFailure:ExcessiveEnvironmentFactors:OperationalFailures][OperationalFailures|PoorIllumination:PTAPreparedWindward:IncorrectHeigth:RiggingFailure][PoorIllumination][PTAPreparedWindward][IncorrectHeigth][RiggingFailure|IncorrectRigging:RetrievalLine:InappropriateAngle:SecuringFailure][IncorrectRigging][RetrievalLine][InappropriateAngle][SecuringFailure|SecuringFailurePilot:SecuringFailurePTA][SecuringFailurePilot][SecuringFailurePTA][HumanFailures|IndividualFailure:OrganizationalFailure][SubstandardActs|HumanFailures:ManeouveringFailures][AdverseSeaSwell][AdverseWind][ExcessiveMotionVessel|AdverseSeaSwell:AdverseWind][RestrictedVisibility][HeavyRain][ExcessiveEnvironmentFactors|ExcessiveMotionVessel:HeavyRain:RestrictedVisibility]"

dag <- model2network(paste0(string1,string2))
lv <- c("Yes","No")

poor.prob <- array(c(0.00048,1-0.00048),dim=2,dimnames=list(PoorCommunicationWithPilotBoat=lv))
lack.prob <- array(c(0.00416,1-0.00416),dim=2,dimnames=list(LackOfSupervision=lv))
commercial.prob <- array(c(0.00148,1-0.00148),dim=2,dimnames=list(CommercialPressure=lv))
ism.prob <- array(c(0.00096,1-0.00096),dim=2,dimnames=list(PoorISMSystem=lv))
safety.prob <- array(c(0.02227,1-0.02227),dim=2,dimnames=list(LackOfSafetyCulture=lv))
excessive.prob <- array(c(0.00054,1-0.00054),dim=2,dimnames=list(ExcessiveShipSpeed=lv))
improper.prob <- array(c(0.00037,1-0.00037),dim=2,dimnames=list(ImproperShipHandling=lv))
individual.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(IndividualFailure=lv,PoorCommunicationWithPilotBoat=lv, LackOfSupervision=lv, CommercialPressure=lv))
organizational.prob <- array(c(1,0,0.96,0.04,0.92,0.08,0,1),dim=c(2,2,2),dimnames=list(OrganizationalFailure=lv, PoorISMSystem=lv,LackOfSafetyCulture=lv))
pilot.prob <-array(c(0.00036,1-0.00036),dim=2,dimnames=list(PilotLadder=lv))
comply.prob <-array(c(0.00106,1-0.00106),dim=2,dimnames=list(NonComplyTrapdoor=lv))
ship.prob <-array(c(0.00078,1-0.00078),dim=2,dimnames=list(ShipSideObstructed=lv))
structural.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(StructuralFailure=lv, PilotLadder=lv, NonComplyTrapdoor=lv,ShipSideObstructed=lv))
man.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(ManeouveringFailures=lv,ExcessiveShipSpeed=lv,ImproperShipHandling=lv))
combination.prob <- array(c(0.00036,1-0.00036),dim=2,dimnames=list(PoorCombinationLadder=lv))
ladder.prob <- array(c(0.02562,1-0.02562),dim=2,dimnames=list(PoorPilotLadder=lv))
pta.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2), dimnames=list(PoorConditionPTA=lv,PoorCombinationLadder=lv,PoorPilotLadder=lv))
hand.prob <- array(c(0.00373,1-0.00373),dim=2,dimnames=list(FailureHandholds=lv))
certified.prob <- array(c(0.00050,1-0.00050),dim=2,dimnames=list(NonCertifiedPilotLadder=lv))
equipment.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(PTAEquipmentFailure=lv,FailureHandholds=lv,NonCertifiedPilotLadder=lv,PoorConditionPTA=lv))
ptaf.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2), dimnames= list(PTAFailure =lv, StructuralFailure=lv,PTAEquipmentFailure=lv))
adverse1.prob <- array(c(0.01172,1-0.01172),dim=2,dimnames=list(AdverseSeaSwell=lv))
adverse2.prob <- array(c(0.00147,1-0.00147),dim=2,dimnames=list(AdverseWind=lv))
excessive1.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(  ExcessiveMotionVessel=lv,AdverseSeaSwell=lv,AdverseWind=lv))
visibility.prob <- array(c(0.00001,1-0.00001),dim=2,dimnames=list(RestrictedVisibility=lv))
rain.prob <- array(c(0.00003,1-0.00003),dim=2,dimnames=list(HeavyRain=lv))
environment.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(ExcessiveEnvironmentFactors=lv,ExcessiveMotionVessel=lv,HeavyRain=lv,RestrictedVisibility=lv))
act.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(SubstandardActs=lv,HumanFailures=lv,ManeouveringFailures=lv))
human.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(HumanFailures=lv,IndividualFailure=lv,OrganizationalFailure=lv))
securing1.prob <- array(c(0.00980,1-0.00980),dim=2,dimnames=list(SecuringFailurePilot=lv))
securing2.prob <- array(c(0.00151,1-0.00151),dim=2,dimnames=list(SecuringFailurePTA=lv))
securing.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(SecuringFailure=lv,SecuringFailurePilot=lv,SecuringFailurePTA=lv))
angle.prob <- array(c(0.00003,1-0.00003),dim=2,dimnames=list(InappropriateAngle=lv))
retrieval.prob <- array(c(0.00006,1-0.00006),dim=2,dimnames=list(RetrievalLine=lv))
rigging.prob <- array(c(0.00025,1-0.00025),dim=2, dimnames=list(IncorrectRigging=lv))
rigging1.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(RiggingFailure=lv,IncorrectRigging=lv,RetrievalLine=lv,InappropriateAngle=lv,SecuringFailure=lv))
windward.prob <- array(c(0.00025,1-0.00025),dim=2,dimnames=list(PTAPreparedWindward=lv))
heigth.prob <- array(c(0.00091,1-0.00091),dim=2,dimnames=list(PoorIllumination=lv))
illumination.prob <- array(c(0.00078,1-0.00078),dim=2,dimnames=list(IncorrectHeigth=lv))
operational.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(OperationalFailures=lv,PoorIllumination=lv,PTAPreparedWindward=lv,IncorrectHeigth=lv,RiggingFailure=lv))
cond.prob <-array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(SubstandardConditions=lv,PTAFailure=lv,ExcessiveEnvironmentFactors=lv,OperationalFailures=lv))
acc.prob <- array(c(1,0,1,0,1,0,0,1), dim=c(2,2,2),dimnames=list(PilotTransferAccident=lv,SubstandardActs=lv,SubstandardConditions=lv))

probs <- list(PoorCommunicationWithPilotBoat=poor.prob,
              LackOfSupervision=lack.prob,
              CommercialPressure=commercial.prob,
              PoorISMSystem=ism.prob,
              LackOfSafetyCulture=safety.prob,
              ExcessiveShipSpeed=excessive.prob,
              ImproperShipHandling=improper.prob,
              IndividualFailure=individual.prob,
              OrganizationalFailure=organizational.prob,
              PilotLadder = pilot.prob,
              NonComplyTrapdoor = comply.prob,
              ShipSideObstructed= ship.prob,
              StructuralFailure=structural.prob,
              ManeouveringFailures=man.prob,
              PoorCombinationLadder = combination.prob,
              PoorPilotLadder = ladder.prob,
              PoorConditionPTA=pta.prob,
              FailureHandholds = hand.prob,
              NonCertifiedPilotLadder = certified.prob,
              PTAEquipmentFailure = equipment.prob,
              PTAFailure = ptaf.prob,
              AdverseSeaSwell=adverse1.prob,
              AdverseWind=adverse2.prob,
              ExcessiveMotionVessel=excessive1.prob,
              RestrictedVisibility=visibility.prob,
              HeavyRain=rain.prob,
              ExcessiveEnvironmentFactors=environment.prob,
              SubstandardActs=act.prob,
              HumanFailures=human.prob,
              SecuringFailurePilot=securing1.prob,
              SecuringFailurePTA=securing2.prob,
              SecuringFailure=securing.prob,
              RetrievalLine=retrieval.prob,
              InappropriateAngle=angle.prob,
              IncorrectRigging=rigging.prob,
              RiggingFailure=rigging1.prob,
              IncorrectHeigth=heigth.prob,
              PoorIllumination=illumination.prob,
              PTAPreparedWindward=windward.prob,
              OperationalFailures=operational.prob,
              SubstandardConditions=cond.prob,
              PilotTransferAccident=acc.prob)

pilot <- custom.fit(dag,probs)
usethis::use_data(pilot, overwrite = TRUE)

## Using OR Gates although the paper hints at modified cpts

