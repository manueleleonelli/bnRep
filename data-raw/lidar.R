#Decision support using SAR and LiDAR machine learning target classification and Bayesian belief networks

library(bnlearn)

lidar.dag = model2network("[UsualRushHourTraffic][TrafficUnusualEvent][ActivityIndustrialArea|UsualRushHourTraffic:TrafficUnusualEvent][ActivitySiteA|ActivityIndustrialArea][ActivitySiteB|ActivityIndustrialArea][ThunderstormsB|ActivitySiteB][VehicleDensityB|ActivitySiteB][ThunderstormsA|ActivitySiteA][VehicleDensityA|ActivitySiteA]")

lv = c("True","False")
lv1 = c("Routine","Unusual")
lv2 <- c("High","Low")

UsualRushHourTraffic.prob <- array(c(0.80,0.20),dim = 2, dimnames = list(UsualRushHourTraffic = lv))
TrafficUnusualEvent.prob <- array(c(0.20,0.80),dim = 2, dimnames = list(TrafficUnusualEvent = lv))
ActivityIndustrialArea.prob <- array(c(0.01,0.99,0.99,0.01,0.01,0.99,0.70,0.30),dim = c(2,2,2), dimnames = list(ActivityIndustrialArea = lv1, TrafficUnusualEvent=lv,UsualRushHourTraffic=lv))
ActivitySiteA.prob <- array(c(0.80,0.20,0.20,0.80), dim=c(2,2),dimnames = list(ActivitySiteA=lv1,ActivityIndustrialArea=lv1))
ActivitySiteB.prob <- array(c(0.99,0.01,0.01,0.99), dim=c(2,2),dimnames = list(ActivitySiteB=lv1,ActivityIndustrialArea=lv1))
ThunderstormsA.prob <- array(c(0.10,0.90,0.95,0.05), dim=c(2,2), dimnames =list(ThunderstormsA=lv2,ActivitySiteA=lv1))
ThunderstormsB.prob <- array(c(0.25,0.75,0.99,0.01), dim=c(2,2), dimnames =list(ThunderstormsB=lv2,ActivitySiteB=lv1))
VehicleDensityA.prob <- array(c(0.85,0.15,0.20,0.80), dim=c(2,2), dimnames =list(VehicleDensityA=lv2,ActivitySiteA=lv1))
VehicleDensityB.prob <- array(c(0.80,0.20,0.01,0.99), dim=c(2,2), dimnames =list(VehicleDensityB=lv2,ActivitySiteB=lv1))

lidar.cpt <- list(UsualRushHourTraffic=UsualRushHourTraffic.prob,
                  TrafficUnusualEvent=TrafficUnusualEvent.prob,
                  ActivityIndustrialArea=ActivityIndustrialArea.prob,
                  ActivitySiteA=ActivitySiteA.prob,
                  ActivitySiteB=ActivitySiteB.prob,
                  ThunderstormsA=ThunderstormsA.prob,
                  ThunderstormsB=ThunderstormsB.prob,
                  VehicleDensityA=VehicleDensityA.prob,
                  VehicleDensityB=VehicleDensityB.prob)

lidar <- custom.fit(lidar.dag,lidar.cpt)

usethis::use_data(lidar, overwrite = TRUE)
