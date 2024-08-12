# Evaluating Methods for Setting a Prior Probability of Guilt

library(bnlearn)
theft.dag <- model2network("[Guilty][EseenCS|Guilty][EredHanded|Guilty][Ewallet|Guilty]")
lv=c("F","T")

guilty.prob <- array(c(0.995,0.005),dim=2,dimnames=list(Guilty=lv))
cs.prob <- array(c(0.94,0.06,0.71,0.29),dim=c(2,2),dimnames=list(EseenCS=lv,Guilty=lv))
handed.prob <- array(c(1,0,0.9,0.1),dim=c(2,2),dimnames=list(EredHanded=lv,Guilty=lv))
wallet.prob <- array(c(0.993,0.007,0.549,0.451),dim=c(2,2),dimnames=list(Ewallet=lv,Guilty=lv))

theft1<- custom.fit(theft.dag,list(Guilty=guilty.prob,EseenCS=cs.prob,EredHanded=handed.prob,Ewallet=wallet.prob))
usethis::use_data(theft1, overwrite = TRUE)

theft1.dag <- model2network("[Guilty|AtCrimeScene][EseenCS|AtCrimeScene][EredHanded|Guilty][Ewallet|Guilty][AtCrimeScene]")

crime.prob <- array(c(0.57,0.43),dim=2,dimnames=list(AtCrimeScene=lv))
guilty.prob <- array(c(1,0,0.67,0.33),dim=c(2,2),dimnames=list(Guilty=lv,AtCrimeScene=lv))
cs.prob <- array(c(1,0,0,1),dim=c(2,2),dimnames=list(EseenCS=lv,AtCrimeScene=lv))
handed.prob <- array(c(1,0,0.9,0.1),dim=c(2,2),dimnames=list(EredHanded=lv,Guilty=lv))
wallet.prob <- array(c(0.993,0.007,0.549,0.451),dim=c(2,2),dimnames=list(Ewallet=lv,Guilty=lv))
theft2 <- custom.fit(theft1.dag,list(Guilty=guilty.prob,EseenCS=cs.prob,EredHanded=handed.prob,Ewallet=wallet.prob,AtCrimeScene=crime.prob))

usethis::use_data(theft2, overwrite = TRUE)
