# Providing a comprehensive approach to oil well blowout risk assessment

library(bnlearn)

kick.dag <- model2network("[X45][X44][X43][X42][X41][X40][X39][X38][X37][X36][X35][X34][X33][X32][X31][X30][X29][X28][X27|X39:X40:X41:X42:X43:X44:X45][X26][X25][X24][X23][X22][X21|X28:X29:X30][X20|X31:X32:X33][X19|X34:X35:X36:X37:X38][X18][X17][X16|X22:X23:X24:X25:X26:X27][X15][X14|X15:X16][X13|X17:X18:X19:X20:X21][X12][X11][X10][X9][X8|X10:X11:X12][X7][X6][X5|X6:X7:X8:X9][X4|X14:X13][X3][X1][X2|X4:X5][Kick|X1:X2:X3]")
lv=c("F","S")

X1.prob <- array(c(0.0055, 0.9945000000000001), dim = 2, dimnames= list(X1=lv))
X17.prob <- array(c(0.0395, 0.9605), dim = 2, dimnames= list(X17=lv))
X18.prob <- array(c(0.044593, 0.955407), dim = 2, dimnames= list(X18=lv))
X34.prob <- array(c(0.017597, 0.982403), dim = 2, dimnames= list(X34=lv))
X35.prob <- array(c(0.009042 ,0.990958), dim = 2, dimnames= list(X35=lv))
X36.prob <- array(c(0.016612, 0.983388), dim = 2, dimnames= list(X36=lv))
X37.prob <- array(c(0.008513, 0.991487), dim = 2, dimnames= list(X37=lv))
X38.prob <- array(c(0.012756, 0.987244), dim = 2, dimnames= list(X38=lv))
X31.prob <- array(c(0.005505, 0.994495), dim = 2, dimnames= list(X31=lv))
X32.prob <- array(c(0.000188, 0.999812), dim = 2, dimnames= list(X32=lv))
X33.prob <- array(c(0.006156, 0.9938439999999999), dim = 2, dimnames= list(X33=lv))
X28.prob <- array(c(0.012756, 0.987244), dim = 2, dimnames= list(X28=lv))
X29.prob <- array(c(0.00155 ,0.9984499999999999), dim = 2, dimnames= list(X29=lv))
X30.prob <- array(c(0.000699, 0.999301), dim = 2, dimnames= list(X30=lv))
X15.prob <- array(c(0.044593, 0.955407), dim = 2, dimnames= list(X15=lv))
X22.prob <- array(c(0.00556, 0.99444), dim = 2, dimnames= list(X22=lv))
X23.prob <- array(c(0.005897, 0.994103), dim = 2, dimnames= list(X23=lv))
X24.prob <- array(c(0.0055, 0.9945000000000001), dim = 2, dimnames= list(X24=lv))
X25.prob <- array(c(0.005505, 0.994495), dim = 2, dimnames= list(X25=lv))
X26.prob <- array(c(0.005505, 0.994495), dim = 2, dimnames= list(X26=lv))
X39.prob <- array(c(0.00103, 0.99897), dim = 2, dimnames= list(X39=lv))
X40.prob <- array(c(0.004961, 0.995039), dim = 2, dimnames= list(X40=lv))
X41.prob <- array(c(0.006763, 0.993237), dim = 2, dimnames= list(X41=lv))
X42.prob <- array(c(0.005505, 0.994495), dim = 2, dimnames= list(X42=lv))
X43.prob <- array(c(0.000471 ,0.999529), dim = 2, dimnames= list(X43=lv))
X44.prob <- array(c(0.009095000000000001 ,0.990905), dim = 2, dimnames= list(X44=lv))
X45.prob <- array(c(0.001933, 0.998067), dim = 2, dimnames= list(X45=lv))
X6.prob <- array(c(0.004293, 0.995707), dim = 2, dimnames= list(X6=lv))
X7.prob <- array(c(0.005505, 0.994495), dim = 2, dimnames= list(X7=lv))
X10.prob <- array(c(0.005505, 0.99449), dim = 2, dimnames= list(X10=lv))
X11.prob <- array(c(0.00334, 0.99666), dim = 2, dimnames= list(X11=lv))
X12.prob <- array(c(0.001933, 0.998067), dim = 2, dimnames= list(X12=lv))
X9.prob <- array(c(0.004493, 0.995507), dim = 2, dimnames= list(X9=lv))
X3.prob <- array(c(0.2518, 0.7482), dim = 2, dimnames= list(X3=lv))


X21.prob <- array(c(1, 0, 1, 0, 1, 0, 1, 0, 1 ,0 ,1, 0 ,1 ,0 ,0, 1),dim=c(2,2,2,2),dimnames=list(X21=lv,X28=lv,X29=lv,X30=lv))
X20.prob <- array(c(1, 0, 0, 1 ,0 ,1 ,0 ,1, 0, 1, 0, 1, 0, 1, 0, 1),dim=c(2,2,2,2),dimnames=list(X20=lv,X31=lv,X32=lv,X33=lv))
X19.prob <- array(c(rep(c(1,0),31),0,1),dim=c(2,2,2,2,2,2),dimnames=list(X19=lv,X34=lv,X35=lv,X36=lv,X37=lv,X38=lv))
X13.prob <- array(c(rep(c(1,0),31),0,1),dim=c(2,2,2,2,2,2),dimnames=list(X13=lv,X17=lv,X18=lv,X19=lv,X20=lv,X21=lv))
X27.prob <- array(c(rep(c(1,0),127),0,1),dim=c(2,2,2,2,2,2,2,2),dimnames=list(X27=lv,X39=lv,X40=lv,X41=lv,X42=lv,X43=lv,X44=lv,X45=lv))
X16.prob <- array(c(rep(c(1,0),63),0,1),dim=c(2,2,2,2,2,2,2),dimnames=list(X16=lv,X22=lv,X23=lv,X24=lv,X25=lv,X26=lv,X27=lv))
X14.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X14=lv,X15=lv,X16=lv))
X4.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(X4=lv,X13=lv,X14=lv))
X8.prob <- array(c(1 ,0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,0, 1),dim=c(2,2,2,2),dimnames=list(X8=lv,X10=lv,X11=lv,X12=lv))
X2.prob <- array(c(1, 0, 1, 0, 1, 0, 0, 1),dim=c(2,2,2),dimnames=list(X2=lv,X4=lv,X5=lv))
X5.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(X5=lv,X6=lv,X7=lv,X8=lv,X9=lv))
kick.prob <- array(c(1 ,0 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0, 1 ,0 ,1 ,0 ,1), dim=c(2,2,2,2),dimnames=list(Kick=lv,X1=lv,X2=lv,X3=lv))

cpt <- list(X12=X12.prob, X13=X13.prob,X14=X14.prob,X15=X15.prob,
            X16=X16.prob, X17=X17.prob,X18=X18.prob,X19=X19.prob,
            X20=X20.prob, X21=X21.prob, X22=X22.prob, X23=X23.prob,
            X24=X24.prob, X25=X25.prob, X26=X26.prob, X27=X27.prob, X28=X28.prob, X29=X29.prob,
            X6=X6.prob, X7=X7.prob, X8=X8.prob,X9=X9.prob,X10=X10.prob,
            X11=X11.prob,X1=X1.prob,X4=X4.prob,X3=X3.prob,X2=X2.prob,
            X30=X30.prob,X31=X31.prob,X32=X32.prob,X33=X33.prob,X34=X34.prob,X35=X35.prob,X36=X36.prob,X37=X37.prob,X38=X38.prob,X39=X39.prob,
            X40=X40.prob,X41=X41.prob,X42=X42.prob,X43=X43.prob,X44=X44.prob,X45=X45.prob,X5=X5.prob, Kick=kick.prob)

BOPfailure2 <- custom.fit(kick.dag,cpt)

#usethis::use_data(BOPfailure2, overwrite = TRUE)

