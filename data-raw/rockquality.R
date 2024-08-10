# A probability prediction method for the classification of surrounding rock quality of tunnels with incomplete data using Bayesian networks
library(bnlearn)

rockquality.dag = model2network("[WeatheringDegree][StructuralPlaneIntegrity][RockMassStructure][Groundwater][InSituStress][RockHardness|WeatheringDegree][RockMassIntegrity|StructuralPlaneIntegrity:RockMassStructure][BQ|RockHardness:RockMassIntegrity][RockQuality|BQ:Groundwater:InSituStress]")

lvWeathering = c("Fresh","Slight","Medium","Severe","Extreme")
lvStructural = c("Good","Ordinary","Bad","VeryBad")
lvRock = c("State1","State2","State3","State4","State5")
lvGroundwater = c("DryWet","MoistDripping","RainlikeDripping","TubularGushing")
lvInSitu = c("Low","Medium","High","ExtremelyHigh")
lvHard = c("Hard","SlightlyHard","SlightlySoft","Soft","ExtremelySoft")
lvIntegrity = c("Complete","SlightlyComplete","SlightlyBroken","Broken","ExtremelyBroken")
lvBQ <- paste0("Num",1:5)
lvQuality <- c("I","II","III","IV","V")

a <- c(0.900 ,0.025 ,0.025, 0.025 , 0.025, 0.60,0.10,0.10,0.10,0.10,0.20,0.5,0.1,0.1,0.1,0.1,0.2,0.5,0.1,0.1,0.6,0.1,0.1,0.1,0.1,0.5,0.2,0.1,0.1,0.1,0.2,0.5,0.1,0.1,0.1,0.1,0.1,0.6,0.1,0.1,0.067,0.733,0.067,0.067,0.067,0.05,0.8,0.05,0.05,0.05,0.1,0.1,0.6,0.1,0.1,0.1,0.1,0.1,0.6,0.1,rep(c(0.05,0.05,0.05,0.05,0.80),4) )

b <- c(0.015,0.938,0.015,0.015,0.015,0.1,0.6,0.1,0.1,0.1,0.05,0.8,0.05,0.05,0.05,0.10,0.10,0.60,0.10,0.10   , 0.013,0.888,0.075,0.013,0.012,0.10,0.20,0.50,0.10,0.10,0.10,0.10,0.60,0.10,0.10,0.029,0.029,0.743,0.171,0.029,  0.029,0.314,0.60,0.029,0.029,0.05,0.05,0.80,0.05,0.05,0.067,0.067,0.733,0.067,0.067,0.1,0.1,0.1,0.6,0.1,    0.05,0.05,0.80,0.05,0.05,0.05,0.05,0.80,0.05,0.05,0.05,0.05,0.05,0.80,0.05,0.05,0.05,0.05,0.80,0.05)

d<- c(0.029,0.029,0.886,0.029,0.029,0.04,0.04,0.84,0.04,0.04,0.10,0.10,0.10,0.60,0.10,0.05,0.05,0.05,0.80,0.05,0.018,0.018,0.927,0.018,0.018,0.02,0.02,0.82,0.12,0.02,0.04,0.04,0.84,0.04,0.04,0.05,0.05,0.05,0.80,0.05,      0.067,0.067,0.40,0.40,0.067,0.10,0.10,0.10,0.60,0.10,0.05,0.05,0.05,0.80,0.05,0.10,0.10,0.10,0.10,0.60,   rep(c(0.05,0.05,0.05,0.05,0.80),4))

e <- c(0.029,0.029,0.029,0.886,0.029,0.029,0.029,0.029,0.886,0.029, 0.02,0.02,0.02,0.62,0.32, 0.02,0.02,0.02,0.32,0.62,   0.011,0.011,0.011,0.747,0.221, 0.014,0.014,0.014,0.943,0.014,0,0,0.05,0.05,0.90,0.10,0.10,0.10,0.10,0.60,     0.017,0.017,0.017,0.35,0.60,0,0,0.05,0.05,0.90,0.05,0.05,0.05,0.05,0.80,0.05,0.05,0.05,0.05,0.80,   0.029,0.029,0.029,0.171,0.743,0.067,0.067,0.067,0.067,0.733,0.022,0.022,0.022,0.022,0.911,0.022,0.022,0.022,0.022,0.911)

f <- c(0.029,0.029,0.029,0.029,0.886,0.02,0.02,0.02,0.02,0.92,0.025,0.025,0.025,0.025,0.90,0,0,0,0,1,     0.013,0.013,0.013,0.013,0.95,0.012,0.012,0.012,0.012,0.953,0.015,0.015,0.015,0.015,0.938,0,0,0,0,1,    0.1,0.1,0.1,0.1,0.6,0.04,0.04,0.04,0.04,0.84,0.05,0.05,0.05,0.05,0.80,0,0,0,0,1,    rep(c(0,0,0,0,1),4))

RockQuality.prob <- array(  c(a,b,d,e,f)  ,  dim = c(5,4,4,5), dimnames = list(RockQuality=lvQuality, InSituStress=lvInSitu,Groundwater=lvGroundwater,BQ=lvBQ))
BQ.prob <- array(c(0.938,0.015,0.015,0.015,0.015,0.01,0.962,0.01,0.01,0.01,0.018,0.018,0.927,0.018,0.018,0.04,0.04,0.04,0.84,0.04,0,0,0,0,1,0.005,0.979,0.005,0.005,0.005,0.007,0.007,0.97,0.007,0.007,0.008,0.008,0.008,0.969,0.008,0.022,0.022,0.022,0.911,0.022,0,0,0,0,1,0.05,0.05,0.8,0.05,0.05,0.006,0.006,0.006,0.976,0.006,0.006,0.006,0.006,0.976,0.006,0.011,0.011,0.011,0.011,0.956,0,0,0,0,1,0.05,0.05,0.05,0.7,0.15,0.1,0.1,0.1,0.6,0.1,0.012,0.012,0.012,0.012,0.953,0.01,0.01,0.01,0.01,0.96,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0.05,0.05,0.05,0.05,0.80,0.02,0.02,0.02,0.02,0.92,0.017,0.017,0.017,0.017,0.933), dim=c(5,5,5), dimnames = list(BQ=lvBQ, RockMassIntegrity=lvIntegrity,RockHardness=lvHard))
RockMassIntegrity.prob <- array(c(0.775,0.15,0.025,0.025,0.025,0.511,0.456,0.011,0.011,0.011,0.40,0.323,0.246,0.015,0.015,0,0,0.05,0.80,0.15,0,0,0,0.10,0.90,0.578,0.356,0.022,0.022,0.022,0.384,0.564,0.044,0.004,0.004,0.101,0.376,0.42,0.09,0.013,0.006,0.006,0.163,0.663,0.163,0.04,0.04,0.04,0.64,0.24,0.005,0.005,0.672,0.313,0.005,0.005,0.005,0.672,0.313,0.005,0.005,0.005,0.672,0.313,0.005,0.009,0.009,0.418,0.464,0.10,0.10,0.10,0.6,0.1,0.1,0.04,0.04,0.24,0.64,0.04,0.04,0.04,0.24,0.64,0.04,0.04,0.04,0.24,0.64,0.04,0.067,0.067,0.40,0.067,0.40,0.067,0.067,0.067,0.067,0.733),dim=c(5,5,4), dimnames= list(RockMassIntegrity=lvIntegrity,RockMassStructure=lvRock,StructuralPlaneIntegrity=lvStructural))
WeatherDegree.prob <- array(c(0.311,0.147,0.405,0.126,0.011),dim = 5, dimnames = list(WeatheringDegree = lvWeathering))
StructuralPlaneIntegrity.prob <- array(c(0.126,0.635,0.21,0.029),dim = 4, dimnames = list(StructuralPlaneIntegrity = lvStructural))
RockMassStructure.prob <- array(c(0.053,0.231,0.502,0.189,0.025), dim=5, dimnames = list(RockMassStructure=lvRock))
Groundwater.prob <- array(c(0.266,0.503,0.154,0.078), dim=4, dimnames = list(Groundwater = lvGroundwater))
InSituStress.prob <- array(c(0.443,0.294,0.224,0.039),dim=4,dimnames = list(InSituStress= lvInSitu))
RockHardness.prob <- array(c(0.202,0.369,0.158,0.147,0.124,0.377,0.353,0.237,0.028,0.005,0.096,0.335,0.309,0.181,0.079,0.032,0.276,0.627,0.032,0.032,0.05,0.05,0.05,0.30,0.55), dim=c(5,5),dimnames = list(RockHardness = lvHard, WeatheringDegree=lvWeathering))


rockquality.cpt <- list(WeatheringDegree=WeatherDegree.prob,
                        StructuralPlaneIntegrity=StructuralPlaneIntegrity.prob,
                        RockMassStructure=RockMassStructure.prob,
                        Groundwater=Groundwater.prob,
                        InSituStress=InSituStress.prob,
                        RockHardness=RockHardness.prob,
                        RockMassIntegrity=RockMassIntegrity.prob, BQ= BQ.prob,
                        RockQuality = RockQuality.prob)

rockquality <- custom.fit(rockquality.dag,rockquality.cpt)

usethis::use_data(rockquality, overwrite = TRUE)


