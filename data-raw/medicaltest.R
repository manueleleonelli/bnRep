# Global Sensitivity Analysis of Uncertain Parameters in Bayesian Networks

library(bnlearn)

dag <- model2network("[Test1][Test2][Disease|Test1:Test2]")

lv <- c("no","yes")

test1.prob <- array(c(0.6,0.4),dim=2,dimnames=list(Test1=lv))
test2.prob <- array(c(0.7,0.3),dim=2,dimnames=list(Test2=lv))
disease.prob <- array(c(0.7,0.3,0.6,0.4,0.6,0.4,0.05,0.95),dim=c(2,2,2),dimnames=list(Disease=lv,Test2=lv,Test1=lv))

medicaltest <- custom.fit(dag,list(Test1=test1.prob,Test2=test2.prob,Disease=disease.prob))

usethis::use_data(medicaltest, overwrite = TRUE)
