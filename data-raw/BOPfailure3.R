# Providing a comprehensive approach to oil well blowout risk assessment

library(bnlearn)

kick_detection.dag <- model2network("[X12][X13][X14][X15][X16][X17][X18][X19][X20][X21][X22][X23][X24][X25][X26][X27][X6|X12:X13][X7|X14:X15][X8|X16:X17][X9|X18:X19][X10|X22:X23][X11|X24:X25][X1|X6:X7][X4|X10:X11][X3|X20:X21][X2|X8:X9][X5|X26:X27][Kick_Detection_Failure|X1:X2:X3:X4:X5]")

lv=c("F","S")

X12.prob <- array(c(0.04,0.96),dim=2,dimnames=list(X12=lv))
X13.prob <- array(c(2e-05, 0.99998),dim=2,dimnames=list(X13=lv))
X14.prob <- array(c(0.14, 0.86),dim=2,dimnames=list(X14=lv))
X15.prob <- array(c(0.0061, 0.9939),dim=2,dimnames=list(X15=lv))
X16.prob <- array(c(0.00187 ,0.99813),dim=2,dimnames=list(X16=lv))
X17.prob <- array(c(0.001987, 0.998013),dim=2,dimnames=list(X17=lv))
X18.prob <- array(c(0.000851, 0.999149),dim=2,dimnames=list(X18=lv))
X19.prob <- array(c(0.001987, 0.998013),dim=2,dimnames=list(X19=lv))

X20.prob <- array(c(0.0003, 0.9997),dim=2,dimnames=list(X20=lv))
X21.prob <- array(c(0.07340000000000001, 0.9266),dim=2,dimnames=list(X21=lv))
X22.prob <- array(c(0.0159, 0.9841),dim=2,dimnames=list(X22=lv))
X23.prob <- array(c(0.0159, 0.9841),dim=2,dimnames=list(X23=lv))
X24.prob <- array(c(0.0005999999999999999, 0.9994),dim=2,dimnames=list(X24=lv))
X25.prob <- array(c(0.004590719, 0.995409281),dim=2,dimnames=list(X25=lv))
X26.prob <- array(c(0.004590719, 0.995409281),dim=2,dimnames=list(X26=lv))
X27.prob <- array(c(0.002167504, 0.997832496),dim=2,dimnames=list(X27=lv))

X6.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X6=lv,X12=lv,X13=lv))
X7.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X7=lv,X14=lv,X15=lv))
X8.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X8=lv,X16=lv,X17=lv))
X9.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X9=lv,X18=lv,X19=lv))
X10.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X10=lv,X22=lv,X23=lv))
X11.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X11=lv,X24=lv,X25=lv))
X1.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(X1=lv,X6=lv,X7=lv))
X4.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X4=lv,X10=lv,X11=lv))
X3.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X3=lv,X20=lv,X21=lv))
X2.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(X2=lv,X8=lv,X9=lv))
X5.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X5=lv,X26=lv,X27=lv))
kick.prob <- array(c(1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,1 ,0,1, 0, 1, 0 ,1 ,0 ,1, 0, 1, 0 ,1 ,0 ,1, 0, 1, 0, 1 ,0 ,1 ,0, 0, 1),dim=c(2,2,2,2,2,2),dimnames=list(Kick_Detection_Failure=lv,X1=lv,X2=lv,X3=lv,X4=lv,X5=lv))

cpt <- list(X12=X12.prob, X13=X13.prob,X14=X14.prob,X15=X15.prob,
            X16=X16.prob, X17=X17.prob,X18=X18.prob,X19=X19.prob,
            X20=X20.prob, X21=X21.prob, X22=X22.prob, X23=X23.prob,
            X24=X24.prob, X25=X25.prob, X26=X26.prob, X27=X27.prob,
            X6=X6.prob, X7=X7.prob, X8=X8.prob,X9=X9.prob,X10=X10.prob,
            X11=X11.prob,X1=X1.prob,X4=X4.prob,X3=X3.prob,X2=X2.prob,
            X5=X5.prob, Kick_Detection_Failure=kick.prob)

BOPfailure3 <- custom.fit(kick_detection.dag,cpt)

#usethis::use_data(BOPfailure3, overwrite = TRUE)

