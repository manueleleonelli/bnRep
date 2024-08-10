#An interpretable unsupervised Bayesian network model for fault detection and diagnosis

diagnosis.dag = model2network("[X1|X8:X9][X2|X1][X3|X1][X4|X1][X5|X1][X6|X1][X7|X1][X8][X9][X10|X8][X11|X8][X12|X16:X3][X13|X3][X14|X3][X15|X3][X16]")


distX1 = list(coef = c("(Intercept)" = 2, "X8"=2.4, "X9"=0.8), sd = 10)
distX2 = list(coef = c("(Intercept)" = 0, "X1"=0.6), sd = 10)
distX3 = list(coef = c("(Intercept)" = 0.05, "X1"=0.22), sd = 10)
distX4 = list(coef = c("(Intercept)" = 1, "X1"=0.4), sd = 10)
distX5 = list(coef = c("(Intercept)" = 0.062, "X1"=0.16), sd = 10)
distX6 = list(coef = c("(Intercept)" = 0, "X1"=0.6), sd = 10)
distX7 = list(coef = c("(Intercept)" = 0, "X1"=0.7), sd = 10)
distX8 = list(coef = c("(Intercept)" = 2), sd = 10)
distX9 = list(coef = c("(Intercept)" = 0), sd = 10)
distX10 = list(coef = c("(Intercept)" = 1, "X8"=0.4), sd = 10)
distX11 = list(coef = c("(Intercept)" = 0.56, "X8"=0.15), sd = 10)
distX12 = list(coef = c("(Intercept)" = 0, "X16"=0.8, "X3"=0.51 ), sd = 10)
distX13 = list(coef = c("(Intercept)" = 0, "X3"=1.3), sd = 10)
distX14 = list(coef = c("(Intercept)" = 1, "X3"=0.4), sd = 10)
distX15 = list(coef = c("(Intercept)" = 0.028, "X3"=1.3), sd = 10)
distX16 = list(coef = c("(Intercept)" = 0), sd = 10)


diagnosis <- custom.fit(diagnosis.dag, dist = list(
  X1 = distX1,  X2 = distX2,  X3 = distX3,  X4 = distX4,  X5 = distX5,  X6 = distX6,  X7 = distX7,  X8 = distX8,  X9 = distX9,
  X10 = distX10,  X11 = distX11,  X12 = distX12,  X13 = distX13,  X14 = distX14,  X15 = distX15,  X16 = distX16
))

#usethis::use_data(diagnosis, overwrite = TRUE)
