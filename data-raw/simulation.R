# Integration of fuzzy reliability analysis and consequence simulation to conduct risk assessment

library(bnlearn)

simul.dag <- model2network("[SealFailure][JointFailure][ValveActivation][PressureRegulatorLeakage|SealFailure:JointFailure:ValveActivation]")

lv <- c("True","False")

probSeal <- array(c(1-0.99578,0.99578),2,list(SealFailure=lv))
probJoint <- array(c(1-0.99981,0.99981),2,list(JointFailure=lv))
probValve <- array(c(1-0.99558,0.99558),2,list(ValveActivation=lv))
probPres <- array(c(0.186,0.814,0.186,0.814,0.00434,1-0.00434,0.00433,1-0.00433,0.183,0.817,0.183,0.817,1.47E-5,1-1.47E-5,1E-6,1-1E-6),c(2,2,2,2),list(PressureRegulatorLeakage=lv, ValveActivation=lv,JointFailure=lv,SealFailure=lv))


simulation <- custom.fit(simul.dag,list(
  SealFailure=probSeal,
  JointFailure=probJoint,
  ValveActivation=probValve,
  PressureRegulatorLeakage=probPres
))

usethis::use_data(simulation, overwrite = TRUE)
