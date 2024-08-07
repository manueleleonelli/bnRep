# Measuring coherence with Bayesian networks

#library(bnlearn)
sallyclark.dag <- model2network("[AMurder][ABruising|AMurder][ADisease|AMurder][BMurder|AMurder][BBruising|BMurder][BDisease|BMurder]")

lv <-c("TRUE","FALSE")

AMurder.prob <- array(c(0.078,0.922),dim=2,dimnames = list(AMurder=lv))
BMurder.prob <- array(c(1,0,0.001,0.999),dim=c(2,2),dimnames = list(BMurder=lv,AMurder=lv))
ABruising.prob <- array(c(0.05,0.95,0.01,0.99),dim=c(2,2),dimnames = list(ABruising=lv,AMurder=lv))
ADisease.prob <- array(c(0.001,0.999,0.05,0.95),dim=c(2,2),dimnames = list(ADisease=lv,AMurder=lv))
BBruising.prob <- array(c(0.05,0.95,0.01,0.99),dim=c(2,2),dimnames = list(BBruising=lv,BMurder=lv))
BDisease.prob <- array(c(0.001,0.999,0.05,0.95),dim=c(2,2),dimnames = list(BDisease=lv,BMurder=lv))


sallyclark <- custom.fit(sallyclark.dag, list(AMurder=AMurder.prob,BMurder=BMurder.prob,ABruising=ABruising.prob,BBruising=BBruising.prob,ADisease=ADisease.prob, BDisease=BDisease.prob))

usethis::use_data(sallyclark, overwrite = TRUE)

