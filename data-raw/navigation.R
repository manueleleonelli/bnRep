
library(bnlearn)

dag <- model2network("[ToAcquireGPSsignal][ToCheckAircraftPositionExecutingRNPProcedure][ToKeepAircraftOnProgrammedRoute|ToCheckAircraftPositionExecutingRNPProcedure:ToShowAircraftPositionBasedOnGPSSignal][ToShowAircraftPositionBasedOnGPSSignal|ToAcquireGPSsignal]")

lv <- c("Accurate","Acceptable","Inaccurate")

ToAcquireGPSsignal <- array(c(0.85,0.10,0.05),c(3),list(ToAcquireGPSsignal=lv))
ToCheckAircraftPositionExecutingRNPProcedure <- array(c(0.85,0.12,0.03),c(3),list(ToCheckAircraftPositionExecutingRNPProcedure=lv))
ToKeepAircraftOnProgrammedRoute <- array(c(0.9,0.07,0.03,0.8,0.15,0.05,0.7,0.2,0.1,0.85,0.10,0.05,0.75,0.20,0.05,0.6,0.3,0.1,0.75,0.20,0.05,0.65,0.30,0.05,0.03,0.07,0.90),c(3,3,3),list( ToKeepAircraftOnProgrammedRoute=lv,ToShowAircraftPositionBasedOnGPSSignal=lv,ToCheckAircraftPositionExecutingRNPProcedure=lv))
ToShowAircraftPositionBasedOnGPSSignal <- array(c(0.95,0.04,0.01,0.04,0.95,0.01,0.01,0.04,0.95),c(3,3),list(ToShowAircraftPositionBasedOnGPSSignal=lv,ToAcquireGPSsignal=lv))

navigation <- custom.fit(dag,list(
  ToAcquireGPSsignal=ToAcquireGPSsignal,
  ToCheckAircraftPositionExecutingRNPProcedure=ToCheckAircraftPositionExecutingRNPProcedure,
  ToKeepAircraftOnProgrammedRoute=ToKeepAircraftOnProgrammedRoute,
  ToShowAircraftPositionBasedOnGPSSignal=ToShowAircraftPositionBasedOnGPSSignal
))


usethis::use_data(navigation, overwrite = TRUE)
