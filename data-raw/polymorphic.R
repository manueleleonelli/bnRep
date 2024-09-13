library(bnlearn)

dag <- model2network("[SystemDegradation|WearFault:PlasticDeformation:CorrosionFailure:InsulationDeterioration][WearFault|PresenceAbrasiveParticles:ExcessiveSpeed:PoorLubrification:InappropriateClearance:HighTemperatureGluing:ScratchVibration][InsulationDeterioration|HighFrequencyPulseVoltage:LocalizedHighTemperatures:PoorCooling:SeverePartialDischarges:SurfaceCorrosion][CorrosionFailure|Moisture:ExcessiveInterShaftCurrent:ChemicalCorrosion][PlasticDeformation|Indentation:ImproperLubrification:ImproperAssembly][PresenceAbrasiveParticles][ExcessiveSpeed][PoorLubrification][InappropriateClearance][HighTemperatureGluing][ScratchVibration][Indentation][ImproperLubrification][ImproperAssembly][Moisture][ExcessiveInterShaftCurrent][ChemicalCorrosion][HighFrequencyPulseVoltage][LocalizedHighTemperatures][PoorCooling][SeverePartialDischarges][SurfaceCorrosion]")

lv <- c("Normal","Degradation","Failed")

PresenceAbrasiveParticles <- array(c(0.9973,0.001,0.0017),3,list(PresenceAbrasiveParticles=lv))
ExcessiveSpeed <- array(c(0.99952,0.0003,0.00018),3,list(ExcessiveSpeed=lv))
PoorLubrification <- array(c(0.9996,0.0002,0.0002),3,list(PoorLubrification =lv))
InappropriateClearance <- array(c(0.99965,0.00025,0.0001),3,list(InappropriateClearance=lv))
HighTemperatureGluing <- array(c(0.9973,0.001,0.0017),3,list(HighTemperatureGluing=lv))
ScratchVibration <- array(c(0.99952,0.0003,0.00018),3,list(ScratchVibration=lv))
Indentation <- array(c(0.9997,0.0002,0.0001),3,list(Indentation=lv))
ImproperLubrification <- array(c(0.9996,0.0002,0.0002),3,list(ImproperLubrification=lv))
ImproperAssembly <- array(c(0.99965,0.00025,0.0001),3,list(ImproperAssembly=lv))
Moisture <- array(c(0.9973,0.001,0.0017),3,list(Moisture=lv))
ExcessiveInterShaftCurrent <- array(c(0.99952,0.0003,0.00018),3,list(ExcessiveInterShaftCurrent=lv))
ChemicalCorrosion <- array(c(0.99965,0.00025,0.0001),3,list(ChemicalCorrosion=lv))
HighFrequencyPulseVoltage <- array(c(0.9996,0.0002,0.0002),3,list(HighFrequencyPulseVoltage=lv))
LocalizedHighTemperatures <- array(c(0.9973,0.001,0.0017),3,list(LocalizedHighTemperatures=lv))
PoorCooling <- array(c(0.99952,0.0003,0.00018),3,list(PoorCooling =lv))
SeverePartialDischarges <- array(c(0.9996,0.0002,0.0002),3,list(SeverePartialDischarges=lv))
SurfaceCorrosion <- array(c(0.99965,0.00025,0.0001),3,list(SurfaceCorrosion=lv))
PlasticDeformation <- array(c(1,0,0,0,1,0,0,0,1,  0,1,0, 0,1,0, rep(c(0,0,1),4), 0,1,0,0,1,0,0,0,1 ,0,1,0,0,1,0,rep(c(0,0,1),4),rep(c(0,0,1),9)),c(3,3,3,3),list(PlasticDeformation=lv,Indentation=lv,ImproperLubrification=lv,ImproperAssembly=lv))
CorrosionFailure <- array(c(1,0,0,0,1,0,0,0,1,  0,1,0, 0,1,0, rep(c(0,0,1),4), 0,1,0,0,1,0,0,0,1 ,0,1,0,0,1,0,rep(c(0,0,1),4),rep(c(0,0,1),9)),c(3,3,3,3),list(CorrosionFailure=lv,Moisture=lv,ExcessiveInterShaftCurrent=lv,ChemicalCorrosion=lv))


a<- c(1,0,0)
b <- c(0,1,0)
d <- c(0,0,1)
f1 <- c(a,b,d,b,b,d,b,d,d,d,d,b,b,d,b,b,d,d,d,d,rep(d,9))
f2 <- c(b,b,d,b,b,d,b,d,d,d,d,b,b,d,b,b,d,d,d,d,rep(d,9))
f3 <- rep(d,27)
f4 <- f2
f5 <- f2
f6 <- f3
f7 <- f8 <- f9 <- f3
InsulationDeterioration <- array(c(f1,f2,f3,f4,f5,f6,f7,f8,f9),rep(3,6),list(InsulationDeterioration=lv,HighFrequencyPulseVoltage=lv,LocalizedHighTemperatures=lv,PoorCooling=lv,SeverePartialDischarges=lv,SurfaceCorrosion=lv))

f1 <- c(a,b,d,b,b,d,d,d,d,b,b,d,b,b,d,d,d,d,rep(d,9))
f2 <- c(b,b,d,b,b,d,d,d,d,b,b,d,b,b,d,d,d,d,rep(d,9))
f3 <- rep(d,27)
f4 <- f5 <- f2
f6 <- f3
f7 <- f8 <- f9 <- f3
f10 <- f11 <- f2
f12 <- f3
f13 <- f14 <- f2
f15 <- f16 <- f17 <- f18 <- f3
f19 <- f20 <- f21 <- f22 <- f23 <- f24 <- f25 <- f26 <- f27 <- f3


WearFault <- array(c(f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,f21,f22,f23,f24,f25,f26,f27),rep(3,7),list(WearFault=lv,PresenceAbrasiveParticles=lv,ExcessiveSpeed=lv,PoorLubrification=lv,InappropriateClearance=lv,HighTemperatureGluing=lv,ScratchVibration=lv))

SystemDegradation <- array(c(f1,f2,f3),rep(3,5),list(SystemDegradation=lv,WearFault=lv,PlasticDeformation=lv,CorrosionFailure=lv,InsulationDeterioration=lv))

polymorphic <- custom.fit(dag,list(
  PresenceAbrasiveParticles=PresenceAbrasiveParticles,
  ExcessiveSpeed=ExcessiveSpeed,
  PoorLubrification=PoorLubrification,
  InappropriateClearance=InappropriateClearance,
  HighTemperatureGluing=HighTemperatureGluing,
  ScratchVibration=ScratchVibration,
  Indentation =Indentation ,
  ImproperLubrification=ImproperLubrification,
  ImproperAssembly=ImproperAssembly,
  Moisture=Moisture,
  ExcessiveInterShaftCurrent=ExcessiveInterShaftCurrent,
  ChemicalCorrosion=ChemicalCorrosion,
  HighFrequencyPulseVoltage=HighFrequencyPulseVoltage,
  LocalizedHighTemperatures=LocalizedHighTemperatures,
  PoorCooling=PoorCooling,
  SeverePartialDischarges=SeverePartialDischarges,
  SurfaceCorrosion=SurfaceCorrosion,PlasticDeformation=PlasticDeformation,
  CorrosionFailure=CorrosionFailure,
  InsulationDeterioration=InsulationDeterioration, WearFault=WearFault,
  SystemDegradation=SystemDegradation
))


usethis::use_data(polymorphic, overwrite = TRUE)
