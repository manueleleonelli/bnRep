
library(bnlearn)

dag <- model2network("[YellowHydraulicSystem][GreenHydraulicSystem][BlueHydraulicSystem][HydraulicSystem|YellowHydraulicSystem:GreenHydraulicSystem:BlueHydraulicSystem]")

lv <- c("True","False")

YellowHydraulicSystem <- array(c(0.9759,0.0241),2,list(YellowHydraulicSystem=lv))
GreenHydraulicSystem <- array(c(0.9764,0.0236),2,list(GreenHydraulicSystem=lv))
BlueHydraulicSystem <- array(c(0.9829,0.0171),2,list(BlueHydraulicSystem=lv))
HydraulicSystem <- array(c(1,0,1,0,1,0,8/33,25/33,25/33,8/33,25/33,8/33,25/33,8/33,0,1),c(2,2,2,2),list(HydraulicSystem=lv,YellowHydraulicSystem=lv,GreenHydraulicSystem=lv,BlueHydraulicSystem=lv))

hydraulicsystem <- custom.fit(dag,list(
  YellowHydraulicSystem=YellowHydraulicSystem,
  GreenHydraulicSystem=GreenHydraulicSystem,
  BlueHydraulicSystem=BlueHydraulicSystem,
  HydraulicSystem=HydraulicSystem
))


usethis::use_data(hydraulicsystem, overwrite = TRUE)

