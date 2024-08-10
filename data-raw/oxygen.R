# Providing an approach to analyze the risk of central oxygen tanks in hospitals during the COVID-19 pandemic
library(bnlearn)

string1 <- "[DefectsInTheTankCoating][DefectInTheTankDryer][CorrosiveEnvironment][DefectsInTheExternalCoatingSystemOfTheTank]"
string2 <- "[DefectsInInletAndOutletValvesV1][DefectsInInletAndOutletValvesV2][DefectsInConnectingTankFastenersF1][DefectsInConnectingTankFastenersF2]"
string3 <- "[DefectInTheTankReliabilityGauge][DefectInTheTankPressureGauge][DefectsInTankEquipmentRepairs][DefectsInTheInspectionAndTestingProgramOfTankDevices]"
string4 <- "[InadequacyOfPeopleSkills][WeaknessInTheInstallationOfTankEquipment][WeaknessInPurchasingTankEquipment][FailureToUseStandardAndUpdatedInstructions][WeakEducationSystem]"
string5 <- "[OxygenLeakage|TankCorrosion:DefectsInConnectionsAndGauges:HumanError][HumanError|OperationalError:FailureInRepairsAndMaintenance][FailureInRepairsAndMaintenance|OrganizationalWeakness:InadequacyOfPeopleSkills:WeaknessInTheInstallationOfTankEquipment:WeaknessInPurchasingTankEquipment][OrganizationalWeakness|FailureToUseStandardAndUpdatedInstructions:WeakEducationSystem][OperationalError|DefectsInTankEquipmentRepairs:DefectsInTheInspectionAndTestingProgramOfTankDevices][DefectsInConnectionsAndGauges|ValveLeakage:FailureOfConnectionsAndFasteners:FailureOfGauges][FailureOfGauges|DefectInTheTankReliabilityGauge:DefectInTheTankPressureGauge][FailureOfConnectionsAndFasteners|DefectsInConnectingTankFastenersF1:DefectsInConnectingTankFastenersF2][ValveLeakage|DefectsInInletAndOutletValvesV1:DefectsInInletAndOutletValvesV2][TankCorrosion|ExternalCorrosionOfTheTank:InternalCorrosionOfTheTank][ExternalCorrosionOfTheTank|CorrosiveEnvironment:DefectsInTheExternalCoatingSystemOfTheTank][InternalCorrosionOfTheTank|CorrosionCausedByTheEnvironment:FailureInProtectiveMeasures][CorrosionCausedByTheEnvironment|DefectInTheTankDryer:CorrosiveEnvironment][FailureInProtectiveMeasures|DefectsInTheTankCoating:DefectInTheTankDryer]"

oxygen.dag <- model2network(paste0(string1,string2,string3,string4,string5))

lv <- c("True","False")

be1.prob <- array(c(81.2E-5,1-81.2E-5),2,list(DefectsInTheTankCoating=lv))
be2.prob <- array(c(76.2E-5,1-76.2E-5),2,list(DefectInTheTankDryer=lv))
be3.prob <- array(c(90.2E-5,1-90.2E-5),2,list(CorrosiveEnvironment=lv))
be4.prob <- array(c(63.3E-5,1-63.3E-5),2,list(DefectsInTheExternalCoatingSystemOfTheTank=lv))
be5.prob <- array(c(48.2E-5,1-48.2E-5),2,list(DefectsInInletAndOutletValvesV1=lv))
be6.prob <- array(c(48.2E-5,1-48.2E-5),2,list(DefectsInInletAndOutletValvesV2=lv))
be7.prob <- array(c(6.2E-5,1-6.2E-5),2,list(DefectsInConnectingTankFastenersF1=lv))
be8.prob <- array(c(6.2E-5,1-6.2E-5),2,list(DefectsInConnectingTankFastenersF2=lv))
be9.prob <- array(c(14.3E-5,1-14.3E-5),2,list(DefectInTheTankReliabilityGauge=lv))
be10.prob <- array(c(61.3E-5,1-61.3E-5),2,list(DefectInTheTankPressureGauge=lv))
be11.prob <- array(c(63.2E-5,1-63.2E-5),2,list(DefectsInTankEquipmentRepairs=lv))
be12.prob <- array(c(72.2E-5,1-72.2E-5),2,list(DefectsInTheInspectionAndTestingProgramOfTankDevices=lv))
be13.prob <- array(c(37.3E-5,1-37.3E-5),2,list(InadequacyOfPeopleSkills=lv))
be14.prob <- array(c(41.3E-5,1-41.3E-5),2,list(WeaknessInTheInstallationOfTankEquipment=lv))
be15.prob <- array(c(32.3E-5,1-32.3E-5),2,list(WeaknessInPurchasingTankEquipment=lv))
be16.prob <- array(c(76.2E-5,1-76.2E-5),2,list(FailureToUseStandardAndUpdatedInstructions=lv))
be17.prob <- array(c(32.2E-5,1-32.2E-5),2,list(WeakEducationSystem=lv))
i11.prob <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(FailureInProtectiveMeasures=lv,DefectsInTheTankCoating=lv,DefectInTheTankDryer=lv))
i12.prob <- array(c(1,0,0,1,0,1,0,1),c(2,2,2), list(CorrosionCausedByTheEnvironment=lv,DefectInTheTankDryer=lv,CorrosiveEnvironment=lv))
i4.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(InternalCorrosionOfTheTank=lv,CorrosionCausedByTheEnvironment=lv,FailureInProtectiveMeasures=lv))
i5.prob <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(ExternalCorrosionOfTheTank=lv,CorrosiveEnvironment=lv,DefectsInTheExternalCoatingSystemOfTheTank=lv))
i1.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(TankCorrosion=lv,ExternalCorrosionOfTheTank=lv,InternalCorrosionOfTheTank=lv))
i6.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(ValveLeakage=lv,DefectsInInletAndOutletValvesV1=lv,DefectsInInletAndOutletValvesV2=lv))
i7.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(FailureOfConnectionsAndFasteners=lv,DefectsInConnectingTankFastenersF1=lv,DefectsInConnectingTankFastenersF2=lv))
i8.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(FailureOfGauges=lv,DefectInTheTankReliabilityGauge=lv,DefectInTheTankPressureGauge=lv))
i2.prob <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(DefectsInConnectionsAndGauges=lv,ValveLeakage=lv,FailureOfConnectionsAndFasteners=lv,FailureOfGauges=lv))
i9.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(OperationalError=lv,DefectsInTankEquipmentRepairs=lv,DefectsInTheInspectionAndTestingProgramOfTankDevices=lv))
i13.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(OrganizationalWeakness=lv,FailureToUseStandardAndUpdatedInstructions=lv,WeakEducationSystem=lv))
i10.prob <- array(c(rep(c(1,0),15),0,1),c(2,2,2,2,2),list(FailureInRepairsAndMaintenance=lv,OrganizationalWeakness=lv,InadequacyOfPeopleSkills=lv,WeaknessInTheInstallationOfTankEquipment=lv,WeaknessInPurchasingTankEquipment=lv))
i3.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(HumanError=lv,OperationalError=lv,FailureInRepairsAndMaintenance=lv))
prob <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(OxygenLeakage=lv,TankCorrosion=lv,DefectsInConnectionsAndGauges=lv,HumanError=lv))

probs <- list(OxygenLeakage=prob,HumanError=i3.prob,FailureInRepairsAndMaintenance=i10.prob,OrganizationalWeakness=i13.prob,OperationalError=i9.prob,DefectsInConnectionsAndGauges=i2.prob,FailureOfGauges=i8.prob,FailureOfConnectionsAndFasteners=i7.prob,ValveLeakage=i6.prob,
              TankCorrosion=i1.prob,ExternalCorrosionOfTheTank=i5.prob,
              DefectsInTheTankCoating=be1.prob,
              DefectInTheTankDryer=be2.prob,
              CorrosiveEnvironment=be3.prob,
              DefectsInTheExternalCoatingSystemOfTheTank=be4.prob,
              DefectsInInletAndOutletValvesV1=be5.prob,
              DefectsInInletAndOutletValvesV2=be6.prob,
              DefectsInConnectingTankFastenersF1=be7.prob,
              DefectsInConnectingTankFastenersF2=be8.prob,
              DefectInTheTankReliabilityGauge=be9.prob,
              DefectInTheTankPressureGauge=be10.prob,
              DefectsInTankEquipmentRepairs=be11.prob,
              DefectsInTheInspectionAndTestingProgramOfTankDevices=be12.prob,
              InadequacyOfPeopleSkills=be13.prob,
              WeaknessInTheInstallationOfTankEquipment=be14.prob,
              WeaknessInPurchasingTankEquipment=be15.prob,
              FailureToUseStandardAndUpdatedInstructions=be16.prob,
              WeakEducationSystem=be17.prob,
              FailureInProtectiveMeasures=i11.prob,
              CorrosionCausedByTheEnvironment=i12.prob,
              InternalCorrosionOfTheTank=i4.prob
)

oxygen <- custom.fit(oxygen.dag,probs)

usethis::use_data(oxygen, overwrite = TRUE)
