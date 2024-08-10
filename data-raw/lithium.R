# Fire Accident Risk Analysis of Lithium Battery Energy Storage Systems during Maritime Transportation

library(bnlearn)

dag <- model2network("[X1][X2][X3][X4][X5][X6][X7][X8][X9][X10][X11][X12][X13][X14][X15][X16][X17][X18][X19][X20][X21][X22][X23][X24][X25][X26][X27][X28][X29][X30][X31][PoorShipStability|X2:X3][ImproperOperation|PoorShipStability:X4][ViolentRolling|X1:ImproperOperation][BindingFailure|X5:X6:X7][ExternalShortCircuit|X14:X15:X16:X17][InternalShortCircuit|X18:X19:X20:X21][Impact|X8:X9:ViolentRolling:BindingFailure][HighTemperature|X10:X11:X12:X13][ShortCircuit|ExternalShortCircuit:InternalShortCircuit][InsufficientFireMonitoring|X22:X23:X24:X25:X26][InsufficientFirefightingCapacity|X27:X28:X29:X30:X31][LBESSCatchFire|Impact:HighTemperature:ShortCircuit][UnableToPutOutFire|InsufficientFireMonitoring:InsufficientFirefightingCapacity][LBESSFireAccident|UnableToPutOutFire:LBESSCatchFire]")

lv <- c("True","False")

X1 <- array(c(0.0008,1-0.0008),dim=2, dimnames=list(X1=lv))
X2 <- array(c(0.0094,1-0.0094),dim=2, dimnames=list(X2=lv))
X3 <- array(c(0.0008,1-0.0008),dim=2, dimnames=list(X3=lv))
X4 <- array(c(0.0008,1-0.0008),dim=2, dimnames=list(X4=lv))
X5 <- array(c(0.0094,1-0.0094),dim=2, dimnames=list(X5=lv))
X6 <- array(c(0.0005,1-0.0005),dim=2, dimnames=list(X6=lv))
X7 <- array(c(0.0001,1-0.0001),dim=2, dimnames=list(X7=lv))
X8 <- array(c(0.0099,1-0.0099),dim=2, dimnames=list(X8=lv))
X9 <- array(c(0.0015,1-0.0015),dim=2, dimnames=list(X9=lv))
X10 <- array(c(0.0134,1-0.0134),dim=2, dimnames=list(X10=lv))
X11 <- array(c(0.0094,1-0.0094),dim=2, dimnames=list(X11=lv))
X12 <- array(c(0.0070,1-0.0070),dim=2, dimnames=list(X12=lv))
X13 <- array(c(0.0256,1-0.0256),dim=2, dimnames=list(X13=lv))
X14 <- array(c(0.0005,1-0.0005),dim=2, dimnames=list(X14=lv))
X15 <- array(c(0.0000,1-0.0000),dim=2, dimnames=list(X15=lv))
X16 <- array(c(0.0470,1-0.0470),dim=2, dimnames=list(X16=lv))
X17 <- array(c(0.0009,1-0.0009),dim=2, dimnames=list(X17=lv))
X18 <- array(c(0.0000,1-0.0000),dim=2, dimnames=list(X18=lv))
X19 <- array(c(0.0001,1-0.0001),dim=2, dimnames=list(X19=lv))
X20 <- array(c(0.0001,1-0.0001),dim=2, dimnames=list(X20=lv))
X21 <- array(c(0.0005,1-0.0005),dim=2, dimnames=list(X21=lv))
X22 <- array(c(0.0003,1-0.0003),dim=2, dimnames=list(X22=lv))
X23 <- array(c(0.0115,1-0.0115),dim=2, dimnames=list(X23=lv))
X24 <- array(c(0.0001,1-0.0001),dim=2, dimnames=list(X24=lv))
X25 <- array(c(0.0470,1-0.0470),dim=2, dimnames=list(X25=lv))
X26 <- array(c(0.0005,1-0.0005),dim=2, dimnames=list(X26=lv))
X27 <- array(c(0.0094,1-0.0094),dim=2, dimnames=list(X27=lv))
X28 <- array(c(0.0005,1-0.0005),dim=2, dimnames=list(X28=lv))
X29 <- array(c(0.0663,1-0.0663),dim=2, dimnames=list(X29=lv))
X30 <- array(c(0.0256,1-0.0256),dim=2, dimnames=list(X30=lv))
X31 <- array(c(0.0192,1-0.0192),dim=2, dimnames=list(X31=lv))
poor.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(PoorShipStability=lv,X2=lv,X3=lv))
improper.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(ImproperOperation=lv,PoorShipStability=lv,X4=lv))
violent.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(ViolentRolling=lv,ImproperOperation=lv,X1=lv))
binding.prob <- array(c(1,0,1,0,1,0,1,0,1,0,1,0,1,0,0,1),dim=c(2,2,2,2),dimnames=list(BindingFailure=lv,X5=lv,X6=lv,X7=lv))
external.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(ExternalShortCircuit=lv,X14=lv,X15=lv,X16=lv,X17=lv))
internal.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(InternalShortCircuit=lv,X18=lv,X19=lv,X20=lv,X21=lv))
impact.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(Impact=lv,ViolentRolling=lv,BindingFailure=lv,X8=lv,X9=lv))
high.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(HighTemperature=lv,X10=lv,X11=lv,X12=lv,X13=lv))
short.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(ShortCircuit=lv,ExternalShortCircuit=lv,InternalShortCircuit=lv))
insufficient.prob <- array(c(rep(c(1,0),31),0,1), dim=c(2,2,2,2,2,2),dimnames=list(InsufficientFireMonitoring=lv,X22=lv,X23=lv,X24=lv,X25=lv,X26=lv))
capacity.prob <- array(c(rep(c(1,0),31),0,1), dim=c(2,2,2,2,2,2),dimnames=list(InsufficientFirefightingCapacity=lv,X27=lv,X28=lv,X29=lv,X30=lv,X31=lv))
lbess.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(LBESSCatchFire=lv,Impact=lv,HighTemperature=lv,ShortCircuit=lv))
unable.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(UnableToPutOutFire=lv,InsufficientFireMonitoring=lv,InsufficientFirefightingCapacity=lv))
accident.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(LBESSFireAccident=lv,LBESSCatchFire=lv,UnableToPutOutFire=lv))

probs <- list(X1=X1,X2=X2,X3=X3,X4=X4,X5=X5,X6=X6,X7=X7,X8=X8,
              X9=X9,X10=X10,X11=X11,X12=X12,X13=X13,X14=X14,X15=X15,
              X16=X16,X17=X17,X18=X18,X19=X19,X20=X20,X21=X21,
              X22=X22,X23=X23,X24=X24,X25=X25,X26=X26,X27=X27,
              X28=X28,X29=X29,X30=X30,X31=X31,PoorShipStability=poor.prob,
              ImproperOperation=improper.prob, ViolentRolling=violent.prob,
              BindingFailure=binding.prob,ExternalShortCircuit=external.prob,
              InternalShortCircuit=internal.prob,
              Impact=impact.prob, HighTemperature=high.prob,
              ShortCircuit=short.prob,
              InsufficientFireMonitoring=insufficient.prob,
              InsufficientFirefightingCapacity=capacity.prob,
              LBESSCatchFire=lbess.prob,
              UnableToPutOutFire=unable.prob,
              LBESSFireAccident=accident.prob)

lithium <- custom.fit(dag,probs)
usethis::use_data(lithium, overwrite = TRUE)

