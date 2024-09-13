
library(bnlearn)

string1 <- "[X1][X2][X3][X4][X5][X6][X7][X8][X9][X10][X11][X12][X13][X14][X15][X16][X17][X18][X19][X20]"
string2 <- "[X21][X22][X23][X24][X25][X26][X27][X28][X29][X30][X31][X32][X33][X34][X35][X36][X37][X38][X39][X40]"
string3 <- "[Dragline|S1:S2:S3:S4:S5:S6:S7][S4|X21:X22:X23:X24:A2][S5|X25:X26:X27:X28:A3][S6|X31:X32:X33:X34:X35:X36][S7|X37:X38:X39:X40][S3|X16:X17:X18][S2|X8:X9:X10:A1:X11:X12:X13:X14:X15][S1|X1:X2:X3:X4:X5][A1|X6:X7][A2|X19:X20][A3|X29:X30]"

dag <- model2network(paste0(string1,string2,string3))

lv <- c("True","False")

X1 <- array(c(0.9928,1-0.9928),2,list(X1=lv))
X2 <- array(c(0.9801,1-0.9801),2,list(X2=lv))
X3 <- array(c(0.9978,1-0.9978),2,list(X3=lv))
X4 <- array(c(0.9969,1-0.9969),2,list(X4=lv))
X5 <- array(c(0.9908,1-0.9908),2,list(X5=lv))
X6 <- array(c(0.9599,1-0.9599),2,list(X6=lv))
X7 <- array(c(0.9599,1-0.9599),2,list(X7=lv))
X8 <- array(c(0.9998,1-0.9998),2,list(X8=lv))
X9 <- array(c(0.9963,1-0.9963),2,list(X9=lv))
X10 <- array(c(0.9973,1-0.9973),2,list(X10=lv))
X11 <- array(c(0.9981,1-0.9981),2,list(X11=lv))
X12 <- array(c(0.9998,1-0.9998),2,list(X12=lv))
X13 <- array(c(0.9715,1-0.9715),2,list(X13=lv))
X14 <- array(c(0.9816,1-0.9816),2,list(X14=lv))
X15 <- array(c(0.9751,1-0.9751),2,list(X15=lv))
X16 <- array(c(0.9985,1-0.9985),2,list(X16=lv))
X17 <- array(c(1,1-1),2,list(X17=lv))
X18 <- array(c(0.9984,1-0.9984),2,list(X18=lv))
X19 <- array(c(0.981,1-0.981),2,list(X19=lv))
X20 <- array(c(0.981,1-0.981),2,list(X20=lv))
X21 <- array(c(0.9982,1-0.9982),2,list(X21=lv))
X22 <- array(c(0.993,1-0.993),2,list(X22=lv))
X23 <- array(c(0.9995,1-0.9995),2,list(X23=lv))
X24 <- array(c(0.9955,1-0.9955),2,list(X24=lv))
X25 <- array(c(0.9764,1-0.9764),2,list(X25=lv))
X26 <- array(c(0.9922,1-0.9922),2,list(X26=lv))
X27 <- array(c(0.982,1-0.982),2,list(X27=lv))
X28 <- array(c(0.999,1-0.999),2,list(X28=lv))
X29 <- array(c(0.9965,1-0.9965),2,list(X29=lv))
X30 <- array(c(0.9965,1-0.9965),2,list(X30=lv))
X31 <- array(c(0.9978,1-0.9978),2,list(X31=lv))
X32 <- array(c(0.9774,1-0.9774),2,list(X32=lv))
X33 <- array(c(0.9544,1-0.9544),2,list(X33=lv))
X34 <- array(c(0.9866,1-0.9866),2,list(X34=lv))
X35 <- array(c(0.9904,1-0.9904),2,list(X35=lv))
X36 <- array(c(0.9675,1-0.9675),2,list(X36=lv))
X37 <- array(c(1,1-1),2,list(X37=lv))
X38 <- array(c(0.9916,1-0.9916),2,list(X38=lv))
X39 <- array(c(0.9776,1-0.9776),2,list(X39=lv))
X40 <- array(c(1,1-1),2,list(X40=lv))
A1 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A1=lv,X6=lv,X7=lv))
A2 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A2=lv,X19=lv,X20=lv))
A3 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A3=lv,X29=lv,X30=lv))
S1 <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(S1=lv,X1=lv,X2=lv,X3=lv,X4=lv,X5=lv))
S2 <- array(c(rep(c(1,0),2^9-1),0,1),rep(2,10),list(S2=lv,X8=lv,X9=lv,X10=lv,X11=lv,X12=lv,X13=lv,X14=lv,X15=lv,A1=lv))
S3 <- array(c(rep(c(1,0),2^3-1),0,1),rep(2,4),list(S3=lv,X16=lv,X17=lv,X18=lv))
S4 <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(S4=lv,X21=lv,X22=lv,X23=lv,X24=lv,A2=lv))
S5 <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(S5=lv,X25=lv,X26=lv,X27=lv,X28=lv,A3=lv))
S6 <- array(c(rep(c(1,0),2^6-1),0,1),rep(2,7),list(S6=lv,X31=lv,X32=lv,X33=lv,X34=lv,X35=lv,X36=lv))
S7 <- array(c(rep(c(1,0),2^4-1),0,1),rep(2,5),list(S7=lv,X37=lv,X38=lv,X39=lv,X40=lv))
Dragline <- array(c(rep(c(1,0),2^7-1),0,1),rep(2,8),list(Dragline=lv,S1=lv,S2=lv,S3=lv,S4=lv,S5=lv,S6=lv,S7=lv))

dragline <- custom.fit(dag,list(
  X1=X1, A1=A1,A2=A2,A3=A3,
  X2=X2, S1=S1,S2=S2,S3=S3,S4=S4,S5=S5,S6=S6,S7=S7,
  X3=X3, Dragline=Dragline,
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
  X28=X28,
  X29=X29,
  X30=X30,
  X31=X31,
  X32=X32,
  X33=X33,
  X34=X34,
  X35=X35,
  X36=X36,
  X37=X37,
  X38=X38,
  X39=X39,
  X40=X40
))
usethis::use_data(dragline, overwrite = TRUE)
