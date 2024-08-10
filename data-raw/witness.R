# Measuring coherence with Bayesian networks

#library(bnlearn)
witness.dag <- model2network("[WhoCommittedTheDeed][W1SteveDidIt|WhoCommittedTheDeed][W2SteveDidIt|WhoCommittedTheDeed][W3SteveMartinOrDavidDidIt|WhoCommittedTheDeed][W4SteveJohnOrJamesDidIt|WhoCommittedTheDeed][W5SteveJohnOrPeterDidIt|WhoCommittedTheDeed]")

lv <-c("TRUE","FALSE")

Deed.prob <- array(c(1/6,1/6,1/6,1/6,1/6,1/6),dim=6,dimnames = list(WhoCommittedTheDeed=c("Steve","Martin","David","John","James","Peter")))
W1.prob <- array(c(0.8,0.2,rep(c(0.05,0.95),5)),dim=c(2,6),dimnames = list(W1SteveDidIt=lv,WhoCommittedTheDeed=c("Steve","Martin","David","John","James","Peter")))
W2.prob <- array(c(0.8,0.2,rep(c(0.05,0.95),5)),dim=c(2,6),dimnames = list(W2SteveDidIt=lv,WhoCommittedTheDeed=c("Steve","Martin","David","John","James","Peter")))
W3.prob <- array(c(rep(c(0.8,0.2),3),rep(c(0.05,0.95),3)),dim=c(2,6),dimnames = list(W3SteveMartinOrDavidDidIt=lv,WhoCommittedTheDeed=c("Steve","Martin","David","John","James","Peter")))
W4.prob <- array(c(0.8,0.2,0.05,0.95,0.05,0.95,0.8,0.2,0.8,0.2,0.05,0.95),dim=c(2,6), dimnames = list(W4SteveJohnOrJamesDidIt = lv,WhoCommittedTheDeed=c("Steve","Martin","David","John","James","Peter")))
W5.prob <- array(c(0.8,0.2,0.05,0.95,0.05,0.95,0.8,0.2,0.05,0.95,0.8,0.2),dim=c(2,6), dimnames = list(W5SteveJohnOrPeterDidIt = lv,WhoCommittedTheDeed=c("Steve","Martin","David","John","James","Peter")))


witness <- custom.fit(witness.dag, list(WhoCommittedTheDeed=Deed.prob,W1SteveDidIt=W1.prob,W2SteveDidIt=W2.prob,W3SteveMartinOrDavidDidIt=W3.prob,W4SteveJohnOrJamesDidIt=W4.prob,W5SteveJohnOrPeterDidIt=W5.prob))
#usethis::use_data(witness, overwrite = TRUE)
