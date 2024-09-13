
library(bnlearn)

dag <- model2network("[AverageNumberOfDryDaysPerYear|Representativeness][RainwaterDemand|Representativeness:SeriesLength][SeasonalityIndex|Representativeness][Representativeness][SeriesLength|Representativeness][AverageAnnualRainfall|Representativeness]")
lv <- c("High","Medium","Low")
lv1 <-c("Yes","No")
lv2 <- c("One Year","Two Year","Three Year","Four Year","Five Year","Six Year","Seven Year","Eight Year","Nine Year","Ten Year","Fifteen Year","Twenty Year")
lv3 <- c("Demand 20", "Demand 30","Demand 40","Demand 50")

Representativeness <- array(c(0.789,0.211),2,list(Representativeness=lv1))
SeriesLength <- array(c(0.0525,0.0683,0.0752,0.0780,0.0752,0.0849,0.0878,0.0888,0.0925,0.0935,0.1010,0.1023,     0.2217,0.1525,0.1219,0.1093,0.0870,0.0794,0.0667,0.0621,0.0459,0.0414,0.0087,0.0034),c(12,2),list(SeriesLength=lv2,Representativeness=lv1))
AverageAnnualRainfall <- array(c(0.3417,0.1959,0.4624,0.3122,0.1826,0.5052),c(3,2),list(AverageAnnualRainfall=lv,Representativeness=lv1))
SeasonalityIndex <- array(c(0.1873,0.2350,0.5770,0.3199,0.3899,0.2902),c(3,2),list(SeasonalityIndex=lv,Representativeness=lv1))
RainwaterDemand  <- array(c(0.2578,0.2663,0.2373,0.2386,
                            0.2507,0.2587,0.2468,0.2438,
                            0.2542,0.2552,0.2448,0.2458,
                            0.2545,0.2611,0.2346,0.2498,
                            0.2472,0.2615,0.2400,0.2513,
                            0.2438,0.2600,0.2428,0.2533,
                            0.2387,0.2632,0.2397,0.2583,
                            0.2372,	0.2623,	0.2432,	0.2573,
                              0.2372,	0.2577,	0.2433,	0.2618,
                            0.2424,	0.2529,	0.2466,	0.2581,
                            0.2450,	0.2538,	0.2462,	0.2550,
                            0.2433,	0.2522,	0.2522,	0.2522,
                            0.2411,	0.2315,	0.2644,	0.2630,
                            0.2485,	0.2327,	0.2564,	0.2623,
                            0.2386,	0.2360,	0.2640,	0.2614,
                            0.2363,	0.2161,	0.2968,	0.2507,
                            0.2574,	0.2198,	0.2761,	0.2466,
                            0.2756,	0.2087,	0.2795,	0.2362,
                            0.3009,	0.1903,	0.2965,	0.2124,
                            0.3147,	0.1878,	0.2843,	0.2132,
                            0.3235,	0.2059,	0.2882,	0.1824,
                            0.3037,	0.2296,	0.2741,	0.1926,
                            0.3611,	0.1667,	0.3333,	0.1389,
                            0.5385,	0.1538,	0.1538,	0.1538

),c(4,12,2),list(RainwaterDemand=lv3,SeriesLength=lv2,Representativeness=lv1))
AverageNumberOfDryDaysPerYear <- array(c(0.3407,0.2502,0.4091,0.4197,0.4197,0.1606),c(3,2),list(AverageNumberOfDryDaysPerYear=lv,Representativeness=lv1))

rainwater <- custom.fit(dag,list(
  Representativeness=Representativeness,
  SeriesLength=SeriesLength,
  AverageAnnualRainfall = AverageAnnualRainfall,
  SeasonalityIndex =SeasonalityIndex,
  RainwaterDemand=RainwaterDemand,
  AverageNumberOfDryDaysPerYear= AverageNumberOfDryDaysPerYear
))


usethis::use_data(rainwater, overwrite = TRUE)
