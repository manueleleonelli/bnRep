
library(bnlearn)

dag <- model2network("[Burglar][PrimaryItemStolen|Burglar][BurglaryTime|Burglar]")
lv <- c("Suspect 1","Suspect 2", "Suspect 3")

Burglar  <- array(c(1/3,1/3,1/3),3,list(Burglar=lv))
PrimaryItemStolen <- array(c(0.8,0.1,0.1,0.1,0.8,0.1,0.1,0.1,0.8),c(3,3),list(PrimaryItemStolen=c("Jewellery","Electronics","Money"),Burglar=lv))
BurglaryTime <- array(c(0.1,0.9,0.9,0.1,0.25,0.75),c(2,3),list(BurglaryTime=c("Day","Night"),Burglar=lv))
burglar <- custom.fit(dag,list(
  Burglar=Burglar,PrimaryItemStolen=PrimaryItemStolen,BurglaryTime=BurglaryTime
))


usethis::use_data(burglar, overwrite = TRUE)
