library(bnlearn )

dag <- model2network("[ObjectDroppedAccidentally|Stealing:Sneak][Motive][Sneak|Motive][Stealing|Motive][EPsychReport|Motive][ECamera|ECameraSeenStealing][ECameraSeenStealing|Stealing][EObjectGone|Stealing:ObjectDroppedAccidentally]")

lv <- c(0,1)

Motive <- array(c(0.99,0.01),2, list(Motive=lv))
ObjectDroppedAccidentally <- array(c(0.75,0.25,0.5,0.5,1,0,1,0),c(2,2,2),list(ObjectDroppedAccidentally=lv,Sneak=lv,Stealing=lv))
Sneak <- array(c(1,0,0.01,0.99),c(2,2),list(Sneak=lv,Motive=lv))
Stealing <- array(c(1,0,0.01,0.99),c(2,2),list(Stealing=lv,Motive=lv))
EPsychReport <- array(c(1,0,0.01,0.99),c(2,2),list(EPsychReport=lv,Motive=lv))
ECamera <- array(c(0.75,0.25,0,1),c(2,2),list(ECamera=lv, ECameraSeenStealing=lv))
ECameraSeenStealing <- array(c(1,0,0.99,0.01),c(2,2),list(ECameraSeenStealing=lv,Stealing=lv))
EObjectGone <- array(c(1,0,0,1,0,1,0.5,0.5),c(2,2,2),list(EObjectGone=lv,ObjectDroppedAccidentally=lv,Stealing=lv))

criminal4 <- custom.fit(dag,list(
  Motive=Motive, ObjectDroppedAccidentally=ObjectDroppedAccidentally,
  Sneak=Sneak,Stealing=Stealing,EPsychReport=EPsychReport,
  ECameraSeenStealing=ECameraSeenStealing,
  ECamera=ECamera,EObjectGone=EObjectGone
))

usethis::use_data(criminal4, overwrite = TRUE)


dag <- model2network("[ObjectDroppedAccidentally|Stealing:Sneak][Motive][Sneak|Motive][Stealing|Motive][EPsychReport|Motive][ECamera|ECameraSeenStealing][ECameraSeenStealing|Stealing][EObjectGone|Stealing:ObjectDroppedAccidentally]")

lv <- c(0,1)

Motive <- array(c(0.95189, 0.04811),2, list(Motive=lv))
ObjectDroppedAccidentally <- array(c(0.663095, 0.336905,1,0,0.389873, 0.610127,1,0),c(2,2,2),list(ObjectDroppedAccidentally=lv,Stealing=lv,Sneak=lv))
Sneak <- array(c(1,0,0.00519643, 0.994804),c(2,2),list(Sneak=lv,Motive=lv))
Stealing <- array(c(1,0,0.0823114, 0.917689),c(2,2),list(Stealing=lv,Motive=lv))
EPsychReport <- array(c(1,0,0.104344, 0.895656),c(2,2),list(EPsychReport=lv,Motive=lv))
ECamera <- array(c( 0.841984, 0.158016,0,1),c(2,2),list(ECamera=lv, ECameraSeenStealing=lv))
ECameraSeenStealing <- array(c(1,0,0.885844, 0.114156),c(2,2),list(ECameraSeenStealing=lv,Stealing=lv))
EObjectGone <- array(c(1,0,0,1,0,1,0.5,0.5),c(2,2,2),list(EObjectGone=lv,ObjectDroppedAccidentally=lv,Stealing=lv))

criminal3 <- custom.fit(dag,list(
  Motive=Motive, ObjectDroppedAccidentally=ObjectDroppedAccidentally,
  Sneak=Sneak,Stealing=Stealing,EPsychReport=EPsychReport,
  ECameraSeenStealing=ECameraSeenStealing,
  ECamera=ECamera,EObjectGone=EObjectGone
))

usethis::use_data(criminal3, overwrite = TRUE)


dag <- model2network("[Scenario1][Scenario2][Scenario3][Constraint|Scenario1:Scenario2:Scenario3][ObjectDroppedAccidentally|Scenario2][Motive|Scenario1][Sneak|Scenario1:Motive][Stealing|Scenario1:Sneak][EPsychReport|Motive][ECamera][ECameraSeenStealing|Stealing:ECamera][EObjectGone|Stealing:ObjectDroppedAccidentally]")

lv <- c(0,1)

Scenario1 <- array(c(0.99,0.01),2,list(Scenario1=lv))
Scenario2 <- array(c(0.75,0.25),2,list(Scenario2=lv))
Scenario3 <- array(c(0.25,0.75),2,list(Scenario3=lv))
Constraint <- array(c(0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,1,1,0,0,0,rep(c(0,0,0,1),3)),c(4,2,2,2),list(Constraint=c("Scenario1","Scenario2","Scenario3","NA"),Scenario3=lv,Scenario2=lv,Scenario1=lv))
Motive <- array(c(0.99, 0.01,0,1),c(2,2), list(Motive=lv,Scenario1=lv))
ObjectDroppedAccidentally <- array(c(1,0,0,1),c(2,2),list(ObjectDroppedAccidentally=lv,Scenario2=lv))
Sneak <- array(c(1,0,0.01,0.99,0.5,0.5,0,1),c(2,2,2),list(Sneak=lv,Motive=lv,Scenario1=lv))
Stealing <- array(c(1,0,1,0,0.5,0.5,0,1),c(2,2,2),list(Stealing=lv,Sneak=lv,Scenario1=lv))
EPsychReport <- array(c(1,0,0.01,0.99),c(2,2),list(EPsychReport=lv,Motive=lv))
ECamera <- array(c( 0.75,0.25),c(2),list(ECamera=lv))
ECameraSeenStealing <- array(c(1,0,1,0,1,0,0.5,0.5),c(2,2,2),list(ECameraSeenStealing=lv,ECamera=lv,Stealing=lv))
EObjectGone <- array(c(1,0,0,1,0,1,0.5,0.5),c(2,2,2),list(EObjectGone=lv,ObjectDroppedAccidentally=lv,Stealing=lv))

criminal2 <- custom.fit(dag,list(
  Motive=Motive, ObjectDroppedAccidentally=ObjectDroppedAccidentally,
  Sneak=Sneak,Stealing=Stealing,EPsychReport=EPsychReport,
  ECameraSeenStealing=ECameraSeenStealing,
  ECamera=ECamera,EObjectGone=EObjectGone,Scenario1=Scenario1,
  Scenario2=Scenario2, Scenario3=Scenario3,Constraint=Constraint
))

usethis::use_data(criminal2, overwrite = TRUE)


dag <- model2network("[Scenario1][Scenario2][Scenario3][Constraint|Scenario1:Scenario2:Scenario3][ObjectDroppedAccidentally|Scenario2][Motive|Scenario1][Sneak|Scenario1:Motive][Stealing|Scenario1:Sneak][EPsychReport|Motive][ECamera][ECameraSeenStealing|Stealing:ECamera][EObjectGone|Stealing:ObjectDroppedAccidentally]")

lv <- c(0,1)

Scenario1 <- array(c(0.9551,1-0.9551),2,list(Scenario1=lv))
Scenario2 <- array(c(0.6752, 0.3248),2,list(Scenario2=lv))
Scenario3 <- array(c(0.3697, 0.6303),2,list(Scenario3=lv))
Constraint <- array(c(0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,1,1,0,0,0,rep(c(0,0,0,1),3)),c(4,2,2,2),list(Constraint=c("Scenario1","Scenario2","Scenario3","NA"),Scenario3=lv,Scenario2=lv,Scenario1=lv))
Motive <- array(c(0.994974, 0.00502565,0,1),c(2,2), list(Motive=lv,Scenario1=lv))
ObjectDroppedAccidentally <- array(c(1,0,0,1),c(2,2),list(ObjectDroppedAccidentally=lv,Scenario2=lv))
Sneak <- array(c(1,0,0.5,0.5,0.0833333, 0.916667,0,1),c(2,2,2),list(Sneak=lv,Scenario1=lv,Motive=lv))
Stealing <- array(c(0.999579, 0.000420743,0.5,0.5,1,0,0,1),c(2,2,2),list(Stealing=lv,Scenario1=lv,Sneak=lv))
EPsychReport <- array(c(1,0,0.0985916, 0.901408),c(2,2),list(EPsychReport=lv,Motive=lv))
ECamera <- array(c( 0.8396, 0.1604),c(2),list(ECamera=lv))
ECameraSeenStealing <- array(c(1,0,1,0,1,0, 0.538461, 0.461539),c(2,2,2),list(ECameraSeenStealing=lv,ECamera=lv,Stealing=lv))
EObjectGone <- array(c(1,0,0,1,0,1,0.5,0.5),c(2,2,2),list(EObjectGone=lv,ObjectDroppedAccidentally=lv,Stealing=lv))

criminal1 <- custom.fit(dag,list(
  Motive=Motive, ObjectDroppedAccidentally=ObjectDroppedAccidentally,
  Sneak=Sneak,Stealing=Stealing,EPsychReport=EPsychReport,
  ECameraSeenStealing=ECameraSeenStealing,
  ECamera=ECamera,EObjectGone=EObjectGone,Scenario1=Scenario1,
  Scenario2=Scenario2, Scenario3=Scenario3,Constraint=Constraint
))

usethis::use_data(criminal1, overwrite = TRUE)

