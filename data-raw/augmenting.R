# Augmenting Learning Components for Safety in Resource Constrained Autonomous Robots

#library(bnlearn)

augmenting.dag = model2network("[CurrentPosition][CurrentSteering][CurrentVelocity][CmdSteeringOnTurn][SafeTurnRegion|CurrentPosition:CurrentSteering:CurrentVelocity][InTrack|SafeTurnRegion:CurrentVelocity:CmdSteeringOnTurn]")

lv = c("Yes","No")

CurrentPosition.prob <- array(c(0.33,0.33,0.34),dim = 3, dimnames = list(CurrentPosition = c("Near","On","Far")))
CurrentSteering.prob <- array(c(0.45,0.10,0.45),dim = 3, dimnames = list(CurrentSteering = c("Straight","Left","Right")))
CurrentVelocity.prob <- array(c(0.30,0.60,0.10),dim = 3, dimnames = list(CurrentVelocity = c("Slow","Medium","Fast")))
CmdSteeringOnTurn.prob <- array(c(0.05,0.15,0.80),dim = 3, dimnames = list(CurrentSteering = c("Left","Straight","Right")))
SafeTurnRegion.prob <- array(c(1,0,0.8,0.2,0.8,0.2,0.9,0.1,0.6,0.4,0.6,0.4,0.2,0.8,0.1,0.9,0.1,0.9,rep(c(1,0),9),0.9,0.1,0.9,0.1,0.8,0.2,0.7,0.3,0.7,0.3,0.5,0.5,0.2,0.8,0.2,0.8), dim=c(2,3,3,3), dimnames = list(SafeTurnRegion = lv, CurrentSteering = c("Straight","Left","Right"),CurrentVelocity = c("Slow","Medium","Fast"),CurrentPosition = c("Near","On","Far")))
InTrack.prob <- array(c(0.6,0.4,0.2,0.8,0,1,0.7,0.3,0.5,0.5,0,1,1,0,0.9,0.1,0,1,0.2,0.8,0.1,0.9,0,1,0.3,0.7,0.2,0.8,0,1,0.5,0.5,0.4,0.6,0,1), dim=c(2,3,3,2), dimnames = list(InTrack = lv, CurrentVelocity = c("Slow","Medium","Fast"), CmdSteeringOnTurn = c("Left","Straight","Right"),SafeTurnRegion = lv))


augmenting.cpt <- list(CurrentPosition=CurrentPosition.prob, CurrentSteering=CurrentSteering.prob,CurrentVelocity= CurrentVelocity.prob,
                       CmdSteeringOnTurn=CmdSteeringOnTurn.prob,SafeTurnRegion= SafeTurnRegion.prob, InTrack= InTrack.prob)

augmenting <- custom.fit(augmenting.dag,augmenting.cpt)

usethis::use_data(augmenting, overwrite = TRUE)
