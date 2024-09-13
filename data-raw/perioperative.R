
 dag <- model2network("[DrugSuspension][ThromboticRisk|DrugSuspension][BleedingRisk|DrugSuspension][PlateletCount|DrugSuspension][AbnormalAPTT|DrugSuspension]")

 lv <- c("0 days", "5 days", "7 days")
 lv1 <- c("high","medium", "low")
 lv2 <- c("high", "null")

 DrugSuspension <- array(c(0.61,0.05,0.34),3,list(DrugSuspension=lv))
 ThromboticRisk <- array(c(0.54,0.46,0,1,0,0,0.33,0.67,0),c(3,3),list(ThromboticRisk=lv1,DrugSuspension=lv))
 BleedingRisk <- array(c(1,0,1,0,1,0),c(2,3),list(BleedingRisk=lv2,DrugSuspension=lv))
 PlateletCount <- array(c(1/3,1/3,1/3,0,1/3,2/3,0.39,0.33,0.28),c(3,3),list(PlateletCount=lv1,DrugSuspension=lv))
 AbnormalAPTT <- array(c(1/3,1/3,1/3,  0,1/3,2/3,  0.39,0.33,0.28),c(3,3),list(AbnormalAPTT=lv1,DrugSuspension=lv))

perioperative <- custom.fit(dag,list(
  DrugSuspension=DrugSuspension,
  ThromboticRisk=ThromboticRisk,
  BleedingRisk=BleedingRisk,
  PlateletCount=PlateletCount,
  AbnormalAPTT=AbnormalAPTT
))

usethis::use_data(perioperative, overwrite = TRUE)
