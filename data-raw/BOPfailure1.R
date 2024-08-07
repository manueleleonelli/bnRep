# Providing a comprehensive approach to oil well blowout risk assessment

#library(bnlearn)

BOP_Failure.dag <- model2network("[X12][X13][X14][X15][X16][X17][X18|X23:X24][X19][X20][X21][X22][X23][X24][X25][X26|X28:X29][X27][X28][X29][X6|X12:X13][X7|X14:X15:X16:X17][X8][X9][X10][X11][X1|X6:X7][X4|X10:X11][X3|X18:X19:X20:X21:X22][X2|X8:X9][X5|X26:X27:X25][BOP_System_Failure|X1:X2:X3:X4:X5]")

lv=c("F","S")

X8.prob <- array(c(0.242,0.758),dim=2,dimnames=list(X8=lv))
X9.prob <- array(c(0.000242, 0.999758),dim=2,dimnames=list(X9=lv))
X10.prob <- array(c(0.346, 0.654),dim=2,dimnames=list(X10=lv))
X11.prob <- array(c(0.346, 0.654),dim=2,dimnames=list(X11=lv))
X12.prob <- array(c(0.0245, 0.9755),dim=2,dimnames=list(X12=lv))
X13.prob <- array(c(0.0245, 0.9755),dim=2,dimnames=list(X13=lv))
X14.prob <- array(c(0.0245, 0.9755),dim=2,dimnames=list(X14=lv))
X15.prob <- array(c(0.0245, 0.9755),dim=2,dimnames=list(X15=lv))
X16.prob <- array(c(0.0245, 0.9755),dim=2,dimnames=list(X16=lv))
X17.prob <- array(c(0.014, 0.986),dim=2,dimnames=list(X17=lv))
X19.prob <- array(c(0.012802685, 0.987197315),dim=2,dimnames=list(X19=lv))
X20.prob <- array(c(0.014823261, 0.985176739),dim=2,dimnames=list(X20=lv))
X21.prob <- array(c(0.01482, 0.9851799999999999),dim=2,dimnames=list(X21=lv))
X22.prob <- array(c(0.0148, 0.9852),dim=2,dimnames=list(X22=lv))
X23.prob <- array(c(0.002521597, 0.997478403),dim=2,dimnames=list(X23=lv))
X24.prob <- array(c(0.003209155 ,0.996790845),dim=2,dimnames=list(X24=lv))
X25.prob <- array(c(0.000242, 0.999758),dim=2,dimnames=list(X25=lv))
X27.prob <- array(c(0.010516, 0.989484),dim=2,dimnames=list(X27=lv))
X28.prob <- array(c(0.009769928000000001, 0.990230072),dim=2,dimnames=list(X28=lv))
X29.prob <- array(c(0.009769928000000001, 0.990230072),dim=2,dimnames=list(X29=lv))


X26.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(X26=lv,X28=lv,X29=lv))
X18.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X18=lv,X23=lv,X24=lv))
X6.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X6=lv,X12=lv,X13=lv))
X7.prob <- array(c(1, 0, 0, 1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1),dim=c(2,2,2,2,2),dimnames=list(X7=lv,X14=lv,X15=lv,X16=lv,X17=lv))
X1.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(X1=lv,X6=lv,X7=lv))
X2.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X2=lv,X8=lv,X9=lv))
X3.prob <- array(c(1, 0 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1, 0, 1, 0, 1 ,0 ,1 ,0, 1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1),dim=c(2,2,2,2,2,2),dimnames=list(X3=lv,X20=lv,X21=lv,X18=lv,X19=lv,X22=lv))
X4.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X4=lv,X10=lv,X11=lv))
X5.prob <- array(c(1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,0 ,1),dim=c(2,2,2,2),dimnames=list(X5=lv,X26=lv,X27=lv,X25=lv))
bop.prob <- array(c(1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0, 1, 0, 1, 0, 1 ,0 ,1 ,0 ,1, 0, 1, 0 ,1 ,0 ,1, 0, 1 ,0 ,1 ,0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 ,1),dim=c(2,2,2,2,2,2),dimnames=list(BOP_System_Failure=lv,X1=lv,X2=lv,X3=lv,X4=lv,X5=lv))

cpt <- list(X12=X12.prob, X13=X13.prob,X14=X14.prob,X15=X15.prob,
            X16=X16.prob, X17=X17.prob,X18=X18.prob,X19=X19.prob,
            X20=X20.prob, X21=X21.prob, X22=X22.prob, X23=X23.prob,
            X24=X24.prob, X25=X25.prob, X26=X26.prob, X27=X27.prob, X28=X28.prob, X29=X29.prob,
            X6=X6.prob, X7=X7.prob, X8=X8.prob,X9=X9.prob,X10=X10.prob,
            X11=X11.prob,X1=X1.prob,X4=X4.prob,X3=X3.prob,X2=X2.prob,
            X5=X5.prob, BOP_System_Failure=bop.prob)

BOPfailure1 <- custom.fit(BOP_Failure.dag,cpt)

usethis::use_data(BOPfailure1, overwrite = TRUE)

