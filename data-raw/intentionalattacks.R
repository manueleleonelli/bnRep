
dag <- model2network("[X1][X2][U1][U2][Y|X1:X2:U1:U2][Z1|Y][Z2|Y][Z3|Y]")

lv <- c("True","False")

lv1 <- c("Intentional Attack","Accidental Technical Failure")

X1 <- array(c(0.85,0.15),2,list(X1=lv))
X2 <- array(c(0.5,0.5),2,list(X2=lv))
U1 <- array(c(0.75,0.25),2,list(U1=lv))
U2 <- array(c(0.5,0.5),2,list(U2=lv))
Y <- array(c(0.09,0.91,0.04,0.96,0.5,0.5,0.29,0.71,0.1,0.9,0.05,0.95,0.68,0.32,0.34,0.66,0.15,0.85,0.01,0.99,0.15,0.85,0.01,0.99,0.15,0.85,0.5,0.5,0.05,0.95,0.03,0.97,0.25,0.75,0.18,0.82),c(2,2,2,2,2),list(Y=lv1,U2=lv,U1=lv,X2=lv,X1=lv))
Z1 <- array(c(0.85,0.15,0.25,0.75),c(2,2),list(Z1=lv,Y=lv1))
Z3 <- array(c(0.25,0.75,0.85,0.15),c(2,2),list(Z3=lv,Y=lv1))
Z2 <- array(c(0.15,0.85,0.85,0.15),c(2,2),list(Z2=lv,Y=lv1))

intentionalattacks <- custom.fit(dag,list(
  X1=X1,X2=X2,U1=U1,U2=U2,Y=Y,Z1=Z1,Z2=Z2,Z3=Z3
))

usethis::use_data(intentionalattacks, overwrite = TRUE)
