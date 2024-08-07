# Measuring coherence with Bayesian networks

#library(bnlearn)
beatles.dag <- model2network("[JohnIsAlive][PaulIsAlive][GeorgeIsAlive][RingoIsAlive][ExactlyOneBeatlesIsDead|JohnIsAlive:PaulIsAlive:GeorgeIsAlive:RingoIsAlive]")

lv <-c("TRUE","FALSE")

JohnIsAlive.prob <- array(c(0.5,0.5),dim=2,dimnames = list(JohnIsAlive=lv))
PaulIsAlive.prob <- array(c(0.5,0.5),dim=2,dimnames = list(PaulIsAlive=lv))
GeorgeIsAlive.prob <- array(c(0.5,0.5),dim=2,dimnames = list(GeorgeIsAlive=lv))
RingoIsAlive.prob <- array(c(0.5,0.5),dim=2,dimnames = list(RingoIsAlive=lv))
ExactlyOneBeatlesIsDead.prob <- array(c(0,1,1,0,1,0,0,1,1,0,0,1,0,1,0,1,0,1,1,0,rep(c(0,1),7)),dim=c(2,2,2,2,2), dimnames = list(ExactlyOneBeatlesIsDead = lv, RingoIsAlive=lv,GeorgeIsAlive = lv, PaulIsAlive=lv, JohnIsAlive=lv))


beatles <- custom.fit(beatles.dag, list(JohnIsAlive=JohnIsAlive.prob,
                                           PaulIsAlive=PaulIsAlive.prob,
                                           GeorgeIsAlive =GeorgeIsAlive.prob,
                                           RingoIsAlive=RingoIsAlive.prob,
                                           ExactlyOneBeatlesIsDead=ExactlyOneBeatlesIsDead.prob
))

usethis::use_data(beatles, overwrite = TRUE)
