
library(bnlearn)

dag <- model2network("[RemissionAchieved|CCRAchieved:FinalCSDCAchieved][CCRAchieved|FinalCSDCAchieved][FinalCSDCAchieved]")
lv <- c("Achieved", "Not Achieved ")

FinalCSDCAchieved <- array(c(0.522,0.478),2,list(FinalCSDCAchieved=lv))
CCRAchieved <- array(c(0.474,0.526,0.184,0.816),c(2,2),list(CCRAchieved=lv,FinalCSDCAchieved=lv))
RemissionAchieved <- array(c(0.658,0.342,0.271,0.729,0.259,0.741,0.035,0.965),c(2,2,2),list(RemissionAchieved =lv,CCRAchieved=lv,FinalCSDCAchieved=lv))
corticosteroid <- custom.fit(dag,list(
  FinalCSDCAchieved=FinalCSDCAchieved,
  CCRAchieved=CCRAchieved,
  RemissionAchieved=RemissionAchieved
))


usethis::use_data(corticosteroid, overwrite = TRUE)
