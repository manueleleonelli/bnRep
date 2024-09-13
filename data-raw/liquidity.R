
library(bnlearn)

dag <- model2network("[X6][X7|X6][X8|X7][X5|X8:X4][X3|X5][X9|X8][X1|X9][X4|X1:X9][X2|X4][X10|X1:X2:X4]")
lv <- c("FALSE","TRUE")

X1 <- array(c(0.448,0.552,0.067,0.933),c(2,2),list(X1=lv,X9=lv))
X2 <- array(c(0.76,0.24,1,0),c(2,2),list(X2=lv,X4=lv))
X3 <- array(c(1,0,0.949,0.051),c(2,2),list(X3=lv,X5=lv))
X4 <- array(c(0.151,0.849,0.874,0.126,1,0,1,0),c(2,2,2),list(X4=lv,X9=lv,X1=lv))
X5 <- array(c(0,1,0,1,0.723,0.277,0.311,0.689),c(2,2,2),list(X5=lv,X8=lv,X4=lv))
X6 <- array(c(0.98,0.02),c(2),list(X6=lv))
X7 <- array(c(0.988,0.012,0.429,0.571),c(2,2),list(X7=lv,X6=lv))
X8 <- array(c(0.006,0.994,0.875,0.125),c(2,2),list(X8=lv,X7=lv))
X9 <- array(c(0,1,0.982,0.018),c(2,2),list(X9=lv,X8=lv))
X10 <- array(c(0.684,0.316,0,1,0,1,0.474,0.526,1,0,0,1,0.481,0.519,1,0),c(2,2,2,2),list(X10=lv,X4=lv,X2=lv,X1=lv))

liquidity <- custom.fit(dag,list(
  X1=X1,
  X2=X2,
  X3=X3,
  X4=X4,
  X5=X5,
  X6=X6,
  X7=X7,
  X8=X8,
  X9=X9,
  X10=X10
))


usethis::use_data(liquidity, overwrite = TRUE)
