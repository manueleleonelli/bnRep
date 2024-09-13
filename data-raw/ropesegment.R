
library(bnlearn)

dag <- model2network("[DragRopeFault][DragChainLinkBroken][DragHitchShacklePinOut][DumpRopeFault][DumpSocketPinOut][HoistRopeSystem][HoistChainPinOut][DragSubsystem|DragRopeFault:DragChainLinkBroken:DragHitchShacklePinOut][DumpSubsystem|DumpRopeFault:DumpSocketPinOut][HoistSubsystem|HoistRopeSystem:HoistChainPinOut][RopeSegment|DragSubsystem:DumpSubsystem:HoistSubsystem]")

lv <- c("TRUE","FALSE")

DragRopeFault <- array(c(0.0250,0.975),2,list(DragRopeFault=lv))
DragChainLinkBroken <- array(c(0.008,0.992),2,list(DragChainLinkBroken=lv))
DragHitchShacklePinOut <- array(c(0.003,0.997),2,list(DragHitchShacklePinOut=lv))
DumpRopeFault <- array(c(0.006,0.994),2,list(DumpRopeFault=lv))
DumpSocketPinOut <- array(c(0.004,0.996),2,list(DumpSocketPinOut=lv))
HoistRopeSystem <- array(c(0.003,0.997),2,list(HoistRopeSystem=lv))
HoistChainPinOut <- array(c(0.004,0.996),2,list(HoistChainPinOut=lv))
DragSubsystem <- array(c(1,0,rep(c(0,1),7)),rep(2,4),list(DragSubsystem=lv,DragRopeFault =lv,DragChainLinkBroken=lv,DragHitchShacklePinOut=lv))
DumpSubsystem <- array(c(1,0,0,1,0,1,0,1),rep(2,3),list(DumpSubsystem=lv,DumpRopeFault =lv,DumpSocketPinOut=lv))
HoistSubsystem <- array(c(1,0,0,1,0,1,0,1),rep(2,3),list(HoistSubsystem=lv,HoistRopeSystem =lv,HoistChainPinOut=lv))
RopeSegment <- array(c(1,0,rep(c(0,1),7)),rep(2,4),list(RopeSegment=lv,DragSubsystem =lv,DumpSubsystem=lv,HoistSubsystem=lv))


ropesegment <- custom.fit(dag,list(
  DragRopeFault=DragRopeFault,DragChainLinkBroken =DragChainLinkBroken ,
  DragHitchShacklePinOut=DragHitchShacklePinOut,
  DumpRopeFault=DumpRopeFault,DumpSocketPinOut=DumpSocketPinOut,
  HoistRopeSystem =HoistRopeSystem ,HoistChainPinOut=HoistChainPinOut,
  DragSubsystem=DragSubsystem,DumpSubsystem=DumpSubsystem,
  HoistSubsystem =HoistSubsystem ,RopeSegment =RopeSegment
))


usethis::use_data(ropesegment, overwrite = TRUE)
