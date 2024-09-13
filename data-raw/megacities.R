
library(bnlearn)

string1 <- "[X1][X2][X3][X4][X5][X6][X7][X8][X9][X10][X11]"
string3 <- "[M1|M5:X1][M5|X8:X9][M2|X2:X3][M6|X10:X11][M4|X7:M6][M3|X4:X5:X6][ExcessVehicleEmission|M1:M2:M3:M4]"
dag <- model2network(paste0(string1,string3))

lv <- c("True","False")

X1 <- array(c(0.15,1-0.15),2,list(X1=lv))
X2 <- array(c(0.7071,1-0.7071),2,list(X2=lv))
X3 <- array(c(0.4583,1-0.4583),2,list(X3=lv))
X4 <- array(c(0.4440,1-0.4440),2,list(X4=lv))
X5 <- array(c(0.2286,1-0.2286),2,list(X5=lv))
X6 <- array(c(0.2,1-0.2),2,list(X6=lv))
X7 <- array(c(0.25,1-0.25),2,list(X7=lv))
X8 <- array(c(0.2,1-0.2),2,list(X8=lv))
X9 <- array(c(0.6078,1-0.6078),2,list(X9=lv))
X10 <- array(c(0.7044,1-0.7044),2,list(X10=lv))
X11 <- array(c(0.8003,1-0.8003),2,list(X11=lv))
M1 <- array(c(1,0,0,1,0,1,0,1),rep(2,3),list(M1=lv,X1=lv,M5=lv))
M2 <- array(c(1,0,0,1,0,1,0,1),rep(2,3),list(M2=lv,X2=lv,X3=lv))
M3 <- array(c(1,0,rep(c(0,1),7)),rep(2,4),list(M3=lv,X4=lv,X5=lv,X6=lv))
M4 <- array(c(1,0,0,1,0,1,0,1),rep(2,3),list(M4=lv,X7=lv,M6=lv))
M5 <- array(c(1,0,0,1,0,1,0,1),rep(2,3),list(M5=lv,X8=lv,X9=lv))
M6 <- array(c(1,0,1,0,1,0,0,1),rep(2,3),list(M6=lv,X10=lv,X11=lv))
ExcessVehicleEmission<- array(c(rep(c(1,0),2^4-1),0,1),rep(2,5),list(ExcessVehicleEmission=lv,M1=lv,M2=lv,M3=lv,M4=lv))

megacities <- custom.fit(dag,list(
  X1=X1,
  X2=X2, M1=M1,M2=M2,M3=M3,M4=M4,M5=M5,M6=M6,
  X3=X3, ExcessVehicleEmission=ExcessVehicleEmission,
  X4=X4,
  X5=X5,
  X6=X6,
  X7=X7,
  X8=X8,
  X9=X9,
  X10=X10,
  X11=X11
))
usethis::use_data(megacities, overwrite = TRUE)
