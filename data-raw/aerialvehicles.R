
library(bnlearn)

string1 <- "[X1][X2][X3][X4][X5][X6][X7][X8][X9][X10][X11][X12][X13][X14][X15][X16][X17][X18][X19][X20][X21][X22][X23][X24]"
string2 <- "[P1|A1:A2:A3][P2|A4:A5][P|P1:P2][A1|X1:X2:X3][A2|M1:X8:X9:X10:M2][A3|X13:X14:X15:X16:X17:X18][A4|X18:X19:M3:X20][A5|X21:X22:M4:X25:X26:X27][M1|X4:X5:X6:X7][M2|X11:X12][M3|X19:X20][M4|X23:X24][X25][X26][X27]"

dag <- model2network(paste0(string1,string2))

lv <- c("yes","no")


X1 <- array(c(0.0064,1-0.0064),2,list(X1=lv))
X2 <- array(c(0.0077,1-0.0077),2,list(X2=lv))
X3 <- array(c(0.0026,1-0.0026),2,list(X3=lv))
X4 <- array(c(0.0038,1-0.0038),2,list(X4=lv))
X5 <- array(c(0.0013,1-0.0013),2,list(X5=lv))
X6 <- array(c(0.0013,1-0.0013),2,list(X6=lv))
X7 <- array(c(0.0013,1-0.0013),2,list(X7=lv))
X8 <- array(c(0.0051,1-0.0051),2,list(X8=lv))
X9 <- array(c(0.0013,1-0.0013),2,list(X9=lv))
X10 <- array(c(0.0128,1-0.0128),2,list(X10=lv))
X11 <- array(c(0.0051,1-0.0051),2,list(X11=lv))
X12 <- array(c(0.0026,1-0.0026),2,list(X12=lv))
X13 <- array(c(0.0204,1-0.0204),2,list(X13=lv))
X14 <- array(c(0.0281,1-0.0281),2,list(X14=lv))
X15 <- array(c(0.0064,1-0.0064),2,list(X15=lv))
X16 <- array(c(0.0077,1-0.0077),2,list(X16=lv))
X17 <- array(c(0.0013,1-0.0013),2,list(X17=lv))
X18 <- array(c(0.0843,1-0.0843),2,list(X18=lv))
X19 <- array(c(0.0268,1-0.0268),2,list(X19=lv))
X20 <- array(c(0.0051,1-0.0051),2,list(X20=lv))
X21 <- array(c(0.0166,1-0.0166),2,list(X21=lv))
X22 <- array(c(0.0013,1-0.0013),2,list(X22=lv))
X23 <- array(c(0.0051,1-0.0051),2,list(X23=lv))
X24 <- array(c(0.0123,1-0.0123),2,list(X24=lv))
X25 <- array(c(0.0140,1-0.0140),2,list(X25=lv))
X26 <- array(c(0.0089,1-0.0089),2,list(X26=lv))
X27 <- array(c(0.0268,1-0.0268),2,list(X27=lv))
M1 <- array(c(rep(c(1,0),2^4-1),0,1),c(2,2,2,2,2),list(M1=lv,X4=lv,X5=lv,X6=lv,X7=lv))
M2 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M2=lv,X11=lv,X12=lv))
M3 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M3=lv,X19=lv,X20=lv))
M4 <-array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(M4=lv,X23=lv,X24=lv))
A1 <- array(c(rep(c(1,0),2^3-1),0,1),c(2,2,2,2),list(A1=lv,X1=lv,X2=lv,X3=lv))
A2 <- array(c(rep(c(1,0),2^5-1),0,1),c(2,2,2,2,2,2),list(A2=lv,X8=lv,X9=lv,X10=lv,M1=lv,M2=lv))
A3 <- array(c(rep(c(1,0),2^6-1),0,1),c(2,2,2,2,2,2,2),list(A3=lv,X13=lv,X14=lv,X15=lv,X16=lv,X17=lv,X18=lv))
A4 <- array(c(rep(c(1,0),2^4-1),0,1),c(2,2,2,2,2),list(A4=lv,X18=lv,X19=lv,X20=lv,M3=lv))
A5 <- array(c(rep(c(1,0),2^6-1),0,1),c(2,2,2,2,2,2,2),list(A5=lv,X21=lv,X22=lv,X25=lv,X26=lv,X27=lv,M4=lv))
P1 <- array(c(rep(c(1,0),2^3-1),0,1),c(2,2,2,2),list(P1=lv,A1=lv,A2=lv,A3=lv))
P2 <- array(c(rep(c(1,0),2^2-1),0,1),c(2,2,2),list(P2=lv,A4=lv,A5=lv))
P <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(P=lv,P1=lv,P2=lv))

aerialvehicles <- custom.fit(dag,list(
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
  X26=X26,
  X27=X27,
  M1=M1,
  M2=M2,
  M3=M3,
  M4=M4,
  A1=A1,
  A2=A2,
  A3=A3,
  A4=A4,
  A5=A5,
  P1=P1,
  P2=P2,
  P=P
))


usethis::use_data(aerialvehicles, overwrite = TRUE)
