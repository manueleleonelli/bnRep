
library(bnlearn)

string1 <- "[X1][X2][X3][X4][X5][X6][X7][X8][X9][X10][X11][X12][X13][X14][X15][X16][X17][X18][X19][X20][X21][X22][X23][X24]"
string2 <- "[TankLeakage|M15:M12:M7:M8:M9][M15|M13:M14][M13|X21:X22:X23][M14|X24:X25][M12|M10:M11][M10|X17:X18][M11|X19:X20][X25][M1|X1:X2:X3][M2|X4:X5][M3|X6:X7][M4|X8:X9:X10][M5|X11:X12:X13][M6|M4:M5][M7|M1:M2][M8|M3:M6][M9|X14:X15:X16]"

dag <- model2network(paste0(string1,string2))

lv <- c("True","False")


X1 <- array(c(5.02E-03,1-5.02E-03),2,list(X1=lv))
X2 <- array(c(3.82E-03,1-3.82E-03),2,list(X2=lv))
X3 <- array(c(4.52E-03,1-4.52E-03),2,list(X3=lv))
X4 <- array(c(8.19E-03,1-8.19E-03),2,list(X4=lv))
X5 <- array(c(5.39E-03,1-5.39E-03),2,list(X5=lv))
X6 <- array(c(6.48E-03,1-6.48E-03),2,list(X6=lv))
X7 <- array(c(6.47E-03,1-6.47E-03),2,list(X7=lv))
X8 <- array(c(7.02E-03,1-7.02E-03),2,list(X8=lv))
X9 <- array(c(3.06E-03,1-3.06E-03),2,list(X9=lv))
X10 <- array(c(2.79E-03,1-2.79E-03),2,list(X10=lv))
X11 <- array(c(5.48E-03,1-5.48E-03),2,list(X11=lv))
X12 <- array(c(3.47E-03,1-3.47E-03),2,list(X12=lv))
X13 <- array(c(3.30E-03,1-3.30E-03),2,list(X13=lv))
X14 <- array(c(1.91E-03,1-1.91E-03),2,list(X14=lv))
X15 <- array(c(6.02E-04,1-6.02E-04),2,list(X15=lv))
X16 <- array(c(5.09E-04,1-5.09E-04),2,list(X16=lv))
X17 <- array(c(2.90E-03,1-2.90E-03),2,list(X17=lv))
X18 <- array(c(3.38E-03,1-3.38E-03),2,list(X18=lv))
X19 <- array(c(1.05E-02,1-1.05E-02),2,list(X19=lv))
X20 <- array(c(7.70E-03,1-7.70E-03),2,list(X20=lv))
X21 <- array(c(1.27E-03,1-1.27E-03),2,list(X21=lv))
X22 <- array(c(2.17E-03,1-2.17E-03),2,list(X22=lv))
X23 <- array(c(2.40E-03,1-2.40E-03),2,list(X23=lv))
X24 <- array(c(3.03E-03,1-3.03E-03),2,list(X24=lv))
X25 <- array(c(1.84E-03,1-1.84E-03),2,list(X25=lv))
M1 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(M1=lv,X1=lv,X2=lv,X3=lv))
M2 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M2=lv,X4=lv,X5=lv))
M3 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M3=lv,X6=lv,X7=lv))
M4 <-array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(M4=lv,X8=lv,X9=lv,X10=lv))
M5 <-array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(M5=lv,X11=lv,X12=lv,X13=lv))
M6 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M6=lv,M4=lv,M5=lv))
M7 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M7=lv,M1=lv,M2=lv))
M8 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M8=lv,M3=lv,M6=lv))
M9 <-array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(M9=lv,X14=lv,X15=lv,X16=lv))
M10 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M10=lv,X17=lv,X18=lv))
M11 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M11=lv,X19=lv,X20=lv))
M12 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M12=lv,M10=lv,M11=lv))
M13 <-array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(M13=lv,X21=lv,X22=lv,X23=lv))
M14 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M14=lv,X24=lv,X25=lv))
M15 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M15=lv,M13=lv,M14=lv))
TankLeakage <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(TankLeakage=lv,M15=lv,M12=lv,M7=lv,M8=lv,M9=lv))

oildepot <- custom.fit(dag,list(
  X1=X1,
  X2=X2,
  X3=X3,
  X4=X4,
  X5=X5,
  X6=X6,
  X7=X7,
  X8=X8,
  X9=X9,
  X10=X10,
  X11=X11,
  X12=X12,
  X13=X13,
  X14=X14,
  X15=X15,
  X16=X16,
  X17=X17,
  X18=X18,
  X19=X19,
  X20=X20,
  X21=X21,
  X22=X22,
  X23=X23,
  X24=X24,
  X25=X25,
  M1=M1,
  M2=M2,
  M3=M3,
  M4=M4,
  M5=M5,
  M6=M6,
  M7=M7,
  M8=M8,
  M9=M9,
  M10=M10,
  M11=M11,
  M12=M12,
  M13=M13,
  M14=M14,
  M15=M15,
  TankLeakage=TankLeakage
))


usethis::use_data(oildepot, overwrite = TRUE)
