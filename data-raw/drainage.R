
dag <- model2network("[AbnormalFlow|PipelineFailure:MotorFault:WaterPumpFailure][WaterPumpFailure|ImpellerDamaged:AirLeakageOfShaftSeal:Silting][MotorFault|LowVoltage:LowSpeed][PipelineFailure|PipelineRupture:GateValveFailure][PipelineRupture][GateValveFailure][LowVoltage][LowSpeed][ImpellerDamaged][AirLeakageOfShaftSeal][Silting]")

lv <- c("T", "F")

Silting <- array(c(0.78,0.22),2,list(Silting=lv))
AirLeakageOfShaftSeal <- array(c(0.91,0.09),2,list(AirLeakageOfShaftSeal=lv))
ImpellerDamaged <- array(c(0.86,0.14),2,list(ImpellerDamaged=lv))
LowSpeed <- array(c(0.8,0.2),2,list(LowSpeed=lv))
LowVoltage <- array(c(0.92,0.08),2,list(LowVoltage=lv))
GateValveFailure <- array(c(0.9,0.1),2,list(GateValveFailure=lv))
PipelineRupture <- array(c(0.98,0.02),2,list(PipelineRupture=lv))
PipelineFailure <- array(c(1,0, 0.1247,1-0.1247,0.2707,1-0.2707,0,1),c(2,2,2),list(PipelineFailure=lv,PipelineRupture=lv,GateValveFailure=lv))
MotorFault <- array(c(1,0,0.4542,1-0.4542,0.1375,1-0.1375,0,1),c(2,2,2),list(MotorFault=lv,LowVoltage=lv,LowSpeed=lv))
WaterPumpFailure <- array(c(1,0,0.8141,1-0.8141,0.5458,1-0.5458,0.4542,1-0.4542,0.1375,1-0.1375,0.1357,1-0.1357,0.2356,1-0.2356,0,1),c(2,2,2,2),list(WaterPumpFailure=lv,ImpellerDamaged=lv,AirLeakageOfShaftSeal=lv,Silting=lv))
AbnormalFlow <- array(c(1,0,0.4542,1-0.4542,0.2356,1-0.2356,0.1375,1-0.1375,0.8750,1-0.8750,0.5840,1-0.5840,0.7644,1-0.7644,0,1),c(2,2,2,2),list(AbnormalFlow=lv,WaterPumpFailure=lv,MotorFault=lv,PipelineFailure=lv))

drainage <- custom.fit(dag,list(
  Silting=Silting,AirLeakageOfShaftSeal=AirLeakageOfShaftSeal,
  ImpellerDamaged=ImpellerDamaged,LowSpeed=LowSpeed,LowVoltage=LowVoltage,
  GateValveFailure=GateValveFailure,PipelineRupture=PipelineRupture,PipelineFailure=PipelineFailure,
  MotorFault=MotorFault,WaterPumpFailure=WaterPumpFailure,AbnormalFlow=AbnormalFlow
 ))

usethis::use_data(drainage, overwrite = TRUE)
