dag <- model2network("[A1][A2][A3][B1|A1][B4|A1:A2][B2|B1][B3|B2][B5|B4:B2][B6|B5][B7|B6][B8|B7][B9|B8][B10|A2][B11|B7:B10][B12|A3][B13|B12][B14|B12][C1|B3:B8][C2|B8][C3|B9:B11:B13][C4|B14][C5|B14][C6|B12]")

lv <- c("T", "F")

A1 <- array(c(0.5,0.5),2,list(A1=lv))
A2 <- array(c(0.5,0.5),2,list(A2=lv))
A3 <- array(c(0.5,0.5),2,list(A3=lv))
B1 <- array(c(0.7,0.3,0.1,0.9),c(2,2),list(B1=lv,A1=lv))
B2 <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(B2=lv,B1=lv))
B3 <- array(c(0.9,0.1,0.01,0.99),c(2,2),list(B3=lv,B2=lv))
B4 <- array(c(0.9,0.1,0.85,0.15,0.85,0.15,0.05,0.95),c(2,2,2),list(B4=lv,A1=lv,A2=lv))
B5 <- array(c(0.95,0.05,0.9,0.1,0.9,0.1,0.01,0.99),c(2,2,2),list(B5=lv,B2=lv,B4=lv))
B6 <- array(c(0.95,0.05,0.01,0.99),c(2,2),list(B6=lv,B5=lv))
B7 <- array(c(0.99,0.01,0.01,0.99),c(2,2),list(B7=lv,B6=lv))
B8 <- array(c(0.98,0.02,0.01,0.99),c(2,2),list(B8=lv,B7=lv))
B9 <- array(c(0.85,0.15,0.01,0.99),c(2,2),list(B9=lv,B8=lv))
B10 <- array(c(0.7,0.3,0.2,0.8),c(2,2),list(B10=lv,A2=lv))
B11<- array(c(0.99,0.01,0.90,0.1,0.9,0.1,0.01,0.99),c(2,2,2),list(B11=lv,B7=lv,B10=lv))
B12 <- array(c(0.7,0.3,0.25,0.75),c(2,2),list(B12=lv,A3=lv))
B13 <- array(c(0.6,0.4,0.25,0.75),c(2,2),list(B13=lv,B12=lv))
B14 <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(B14=lv,B12=lv))
C1 <- array(c(0.99,0.01,0.7,0.3,0.9,0.1,0.01,0.99),c(2,2,2),list(C1=lv,B3=lv,B8=lv))
C2 <- array(c(0.97,0.03,0.02,0.98),c(2,2),list(C2=lv,B8=lv))
C3 <- array(c(0.99,0.01,  0.9,0.1,  0.9,0.1,  0.9,0.1,  0.8,0.2,  0.8,0.2,  0.8,0.2 , 0.001,0.999),c(2,2,2,2),list(C3=lv,B13=lv,B11=lv,B9=lv))
C4 <- array(c(0.5,0.5,0.5,0.5),c(2,2),list(C4=lv,B14=lv))
C5 <- array(c(0.4,0.6,0.2,0.8),c(2,2),list(C5=lv,B14=lv))
C6 <- array(c(0.65,0.35,0.2,0.8),c(2,2),list(C6=lv,B12=lv))

firerisk <- custom.fit(dag,list(
  A1=A1,A2=A2,A3=A3,
  B1=B1,B2=B2,B3=B3,B4=B4,B5=B5,B6=B6,B7=B7,B8=B8,B9=B9,B10=B10,B11=B11,B12=B12,B13=B13,B14=B14,
  C1=C1,C2=C2,C3=C3,C4=C4,C5=C5,C6=C6
))

usethis::use_data(firerisk, overwrite = TRUE)
