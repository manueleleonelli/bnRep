
library(bnlearn)

dag <- model2network("[X1][X2][X3|X4][X4|X2:X1]")

X1 <- list(coef=c("(Intercept)"=2.4),sd=sqrt(0.8))
X2 <- list(coef=c("(Intercept)"=1.8),sd=sqrt(0.6))
X3 <- list(coef=c("(Intercept)"=2.1, "X4"=1.2),sd=sqrt(0.9))
X4 <- list(coef=c("(Intercept)"=0.2,"X1"=1.5,"X2"=2.6),sd=sqrt(1.1))

algorithms1 <- custom.fit(dag,list(
  X1=X1,X2=X2,X3=X3,X4=X4
  ))


usethis::use_data(algorithms1, overwrite = TRUE)


dag <- model2network("[X1][X2|X1:X3][X3|X1][X4|X1]")

X1 <- list(coef=c("(Intercept)"=2.4),sd=sqrt(0.8))
X2 <- list(coef=c("(Intercept)"=0.5, "X1"=1.4, "X3"=1.2),sd=sqrt(1.1))
X3 <- list(coef=c("(Intercept)"=3.1, "X1"=1.3),sd=sqrt(0.3))
X4 <- list(coef=c("(Intercept)"=2.7,"X1"=0.8),sd=sqrt(0.5))

algorithms2 <- custom.fit(dag,list(
  X1=X1,X2=X2,X3=X3,X4=X4
))

usethis::use_data(algorithms2, overwrite = TRUE)

dag <- model2network("[X1][X2][X3|X1:X2][X4|X3]")

X1 <- array(c(0.53,0.47),2,list(X1=c("a","b")))
X2 <- array(c(0.34,0.66),2,list(X2=c("c","d")))
X3 <- array(c(0.15,0.85,0.75,0.25,0.4,0.6,0.8,0.2),c(2,2,2),list(X3=c("e","f"),X2=c("c","d"),X1=c("a","b")))
X4 <- array(c(0.2,0.8,0.42,0.58),c(2,2),list(X4=c("g","h"),X3=c("e","f")))
algorithms3 <- custom.fit(dag,list(
  X1=X1,X2=X2,X3=X3,X4=X4
))

usethis::use_data(algorithms3, overwrite = TRUE)


dag <- model2network("[X1][X2|X1:X4][X3|X1][X4|X3]")

X1 <- array(c(0.31,0.69),2,list(X1=c("a","b")))
X2 <- array(c(0.38,0.62,0.71,0.29,0.51,0.49,0.14,0.86),c(2,2,2),list(X2=c("c","d"),X4=c("g","h"),X1=c("a","b")))
X3 <- array(c(0.44,0.56,0.18,0.82),c(2,2),list(X3=c("e","f"),X1=c("a","b")))
X4 <- array(c(0.26,0.74,0.5,0.5),c(2,2),list(X4=c("g","h"),X3=c("e","f")))
algorithms4 <- custom.fit(dag,list(
  X1=X1,X2=X2,X3=X3,X4=X4
))

usethis::use_data(algorithms4, overwrite = TRUE)


dag <- model2network("[X1][X2|X1][X3][X5|X2:X3][X4|X2:X5][X6|X4]")

X1 <- array(c(0.4,0.6),2,list(X1=c("a","b")))
X2 <- array(c(0.5,0.5,0.3,0.7),c(2,2),list(X2=c("c","d"),X1=c("a","b")))
X3 <- array(c(0.2,0.8),c(2),list(X3=c("e","f")))
X5 = list(coef = matrix(c(0.1,0.2,0.4,0.4), ncol = 4,
                           dimnames = list(c("(Intercept)"), NULL)),
             sd = c(sqrt(0.09), sqrt(0.36),sqrt(0.81),sqrt(1.44)))
X4 = list(coef = matrix(c(0.1,0.2,0.6,0.8), ncol = 2,
                        dimnames = list(c("(Intercept)","X5"), NULL)),
          sd = c(sqrt(0.09), sqrt(0.36)))

X6 <-list(coef=c("(Intercept)"=0.1,"X4"=0.2),sd=sqrt(1))


algorithms5 <- custom.fit(dag,list(
  X1=X1,X2=X2,X3=X3,X5=X5,X4=X4,X6=X6
))

usethis::use_data(algorithms5, overwrite = TRUE)


dag <- model2network("[X1][X2][X3][X5|X3][X4|X3][X6|X4:X5]")

X1 <- array(c(0.75,0.25),2,list(X1=c("a","b")))
X2 <- array(c(0.32,0.68),c(2),list(X2=c("c","d")))
X3 <- array(c(0.15,0.85,0.50,0.50,0.35,0.65,0.70,0.30),c(2,2,2),list(X3=c("e","f"),X2=c("c","d"),X1=c("a","b")))
X5 = list(coef = matrix(c(1.4,0.5), ncol = 2,
                        dimnames = list(c("(Intercept)"), NULL)),
          sd = c(sqrt(1.69), sqrt(2.25)))
X4 = list(coef = matrix(c(0.3,1), ncol = 2,
                        dimnames = list(c("(Intercept)"), NULL)),
          sd = c(sqrt(0.16), sqrt(0.09)))

X6 <-list(coef=c("(Intercept)"=0.1,"X4"=0.2, "X5"=0.7),sd=sqrt(1.44))


algorithms6 <- custom.fit(dag,list(
  X1=X1,X2=X2,X3=X3,X5=X5,X4=X4,X6=X6
))

usethis::use_data(algorithms6, overwrite = TRUE)
