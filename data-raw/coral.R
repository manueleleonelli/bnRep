
library(bnlearn)

# MBP. MarineBasedPollutionThreat
# WBP. WatershedBasedPollutionThreat
# Arag AcidificationThreat
#CDT CoastalDevelopmentThreat
# ME. ManagementEffectiveness
# OFadj Overfishing
#TNoB ThermalStress
# PopBleach CoralPopulationBleached
#LiveCoral LiveCoralCover
#LCI ReefHealthIndex
#DeadCoral KilledCoralCover
#ColBleach CoralColonyBleached

string1 <- "[CoralColonyBleached]"
string2 <- "[AcidificationThreat|CoralColonyBleached]"
string3 <- "[CoastalDevelopmentThreat|Overfishing:CoralColonyBleached]"
string4 <- "[MarineBasedPollutionThreat|CoastalDevelopmentThreat:CoralColonyBleached]"
string5 <-  "[ManagementEffectiveness|AcidificationThreat:CoralColonyBleached]"
string6 <- "[Overfishing|ManagementEffectiveness:CoralColonyBleached]"
string7 <- "[ThermalStress|CoralColonyBleached]"
string8 <- "[WatershedBasedPollutionThreat|CoastalDevelopmentThreat:CoralColonyBleached]"
dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7,string8))

lv2 <- c("Low", "High")
lv3 <- c("Low", "Medium", "High")
lvME <- c("Ineffective", "Partial", "Effective")
lvThermal <- c("None", "Severe")
lv <- c("Less than 0", "0-0.145", "0.145-0.374", "0.374-0.680", "More than 0.680")

CoralColonyBleached <- array(0.01*c(67.7290,15.9005,8.7012,4.6776,2.9917),5,list(CoralColonyBleached = lv))
AcidificationThreat <- array(0.01*c(90.6239,9.3761,80.1660,19.8340,72.4697,27.5303,61.8877,38.1123,76.3989,23.6011),c(2,5),list(AcidificationThreat=lv2,CoralColonyBleached=lv))
CoastalDevelopmentThreat <- array(0.01*c(82.9618,	15.1039	,1.9344,
                                    69.6093,	16.9970,	13.3937,
                                    24.6542,	28.3778,	46.9680,
                                    83.8398,	10.2749,	5.8853,
                                    54.3049,	31.8578,	13.8373,
                                    22.2183,	34.6889,	43.0928,
                                    83.8559,	16.1083,	0.0357,
                                    64.9643,	25.7126	,9.3231,
                                    25.5655,	30.3359,	44.0986,
                                    94.1740,	2.9130,	2.9130,
                                    76.0354,	18.0594,5.9052,
                                    27.1752,	29.4783,	43.3465,
                                    86.9644,	8.6587,	4.3769,
                                    91.8177,	8.0939,	0.0884,
                                    41.2378,	16.5438,	42.2184
),c(3,3,5),list(CoastalDevelopmentThreat=lv3,Overfishing=lv3,CoralColonyBleached=lv))
MarineBasedPollutionThreat <- array(0.01*c(87.0623,	12.2021,	0.7355,
                                      83.1523,	13.1914,	3.6564,
                                      59.6741,	18.7114,	21.6145,
                                      85.4742,	14.5068,	0.0190,
                                      71.0594,	24.4078,	4.5328,
                                      61.5795,	13.7889,	24.6317,
                                      82.9970,	16.9777,	0.0253,
                                      62.1542,	26.2324,	11.6134,
                                      49.7346,	20.1201,	30.1453,
                                      88.5817,	11.3650,	0.0533,
                                      74.8932,	9.9338,	15.1731,
                                      58.9486,	13.8107,	27.2407,
                                      88.5254,	11.3192,	0.1554,
                                      62.3661,	37.3543,	0.2796,
                                      54.3390,	9.3595,	36.3015
),c(3,3,5),list(MarineBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,CoralColonyBleached=lv))
ManagementEffectiveness <- array(0.01*c(79.5125,	18.7133,	1.7742,
                                        70.8673,	8.4252,	20.7075,
                                        81.8546,	15.5044,	2.6410,
                                        68.6731,	14.3618,	16.9651,
                                        85.5362,	12.4480,	2.0158,
                                        33.0518,	32.6172,	34.3309,
                                        84.2716,	15.6801,	0.0482,
                                        44.5823,	11.5901,	43.8276,
                                        76.0137,	9.0633,	14.9230,
                                        53.1000,	35.0781,	11.8219
),c(3,2,5),list(ManagementEffectiveness=lvME,AcidificationThreat=lv2,CoralColonyBleached=lv))
Overfishing <- array(0.01*c(8.3961,	25.9091,	65.6948,
                            49.1024,	50.8900,	0.0076,
                            99.9241,	0.0379,	0.0379,
                            7.1751,	21.9244	,70.9005,
                            42.4695,	57.4929,	0.0376,
                            99.7907,	0.1047,	0.1047,
                            7.3151,	21.9662	,70.7187,
                            73.6742,	26.2675,	0.0582,
                            99.8078,	0.0961,	0.0961,
                            10.1820,	33.2537,	56.5644,
                            50.0060,	49.8559,	0.1381,
                            99.7669,	0.1165,	0.1165,
                            9.7604,	42.9416,	47.2980,
                            72.5218,	27.2776,	0.2006,
                            99.5703,	0.2149,	0.2149
),c(3,3,5),list(Overfishing=lv3,ManagementEffectiveness=lvME,CoralColonyBleached=lv))
ThermalStress <- array(0.01*c(60.8085,	39.1915,
                              52.9332,	47.0668,
                              52.0095,	47.9905,
                              55.0169,	44.9831,
                              37.4258,	62.5742
),c(2,5),list(ThermalStress=lvThermal,CoralColonyBleached=lv))
WatershedBasedPollutionThreat <- array(0.01*c(77.2678,	17.5220,	5.2102,
                                              49.6707,	35.1216,	15.2077,
                                              31.5031,	41.2594,	27.2375,
                                              71.1357,	23.2496,	5.6147,
                                              52.4387,	33.3782,	14.1831,
                                              30.6350,	34.1898,	35.1751,
                                              71.8246,	25.3628,	2.8126,
                                              47.1581,	37.7016,	15.1403,
                                              25.7254,	35.4295,	38.8450,
                                              63.2833,	32.4725,	4.2442,
                                              34.8223,	39.7107,	25.4671,
                                              22.6623,	54.1611,	23.1765,
                                              81.1467,	16.9407,	1.9126,
                                              49.7191,	37.4906,	12.7902,
                                              17.9624,	26.7606,	55.2770
),c(3,3,5),list(WatershedBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,CoralColonyBleached=lv))

coral1 <- custom.fit(dag,list(
  CoralColonyBleached=CoralColonyBleached,
  AcidificationThreat=AcidificationThreat,
  CoastalDevelopmentThreat=CoastalDevelopmentThreat,
  MarineBasedPollutionThreat=MarineBasedPollutionThreat,
  ManagementEffectiveness=ManagementEffectiveness,
  Overfishing=Overfishing,
  ThermalStress=ThermalStress,
  WatershedBasedPollutionThreat=WatershedBasedPollutionThreat
))


usethis::use_data(coral1, overwrite = TRUE)




library(bnlearn)

# MBP. MarineBasedPollutionThreat
# WBP. WatershedBasedPollutionThreat
# Arag AcidificationThreat
#CDT CoastalDevelopmentThreat
# ME. ManagementEffectiveness
# OFadj Overfishing
#TNoB ThermalStress
# PopBleach CoralPopulationBleached
#LiveCoral LiveCoralCover
#LCI ReefHealthIndex
#DeadCoral KilledCoralCover
#ColBleach CoralColonyBleached

string1 <- "[KilledCoralCover]"
string2 <- "[AcidificationThreat|ManagementEffectiveness:KilledCoralCover]"
string3 <- "[CoastalDevelopmentThreat|Overfishing:KilledCoralCover]"
string4 <- "[MarineBasedPollutionThreat|CoastalDevelopmentThreat:KilledCoralCover]"
string5 <-  "[ManagementEffectiveness|KilledCoralCover]"
string6 <- "[Overfishing|ManagementEffectiveness:KilledCoralCover]"
string7 <- "[ThermalStress|KilledCoralCover]"
string8 <- "[WatershedBasedPollutionThreat|CoastalDevelopmentThreat:KilledCoralCover]"

dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7,string8))

lv2 <- c("Low", "High")
lv3 <- c("Low", "Medium", "High")
lvME <- c("Ineffective", "Partial", "Effective")
lvThermal <- c("None", "Severe")
lv <- c("Less than 0", "0-0.075", "0.075-0.212", "0.212-0.450", "More than 0.450")

KilledCoralCover <- array(0.01*c(
  41.3875,	42.7422,	9.5320,	4.6059,	1.7323
),5,list(KilledCoralCover = lv))
AcidificationThreat <- array(0.01*c(
  89.4296,	10.5704,
  89.4598,	10.5402,
  40.4913,	59.5087,
  87.4166,	12.5834,
  81.6102,	18.3898,
  28.5900,	71.4100,
  90.2427,	9.7573,
  99.8721,	0.1279,
  54.5181,	45.4819,
  90.6937,	9.3063,
  99.7449,	0.2551,
  50.0000,	50.0000,
  94.7952,	5.2048,
  98.9130,	1.0870,
  50.0000,	50.0000
),c(2,3,5),list(AcidificationThreat=lv2,ManagementEffectiveness=lvME,KilledCoralCover=lv))
CoastalDevelopmentThreat <- array(0.01*c(82.2579,	15.0056,	2.7365,
                                         71.6694,	18.1853	,10.1453,
                                         26.6941,	26.2958,	47.0101,
                                         84.9228,	12.9764,	2.1008,
                                         65.3127,	20.5416,	14.1457,
                                         21.7837,	28.7135,	49.5028,
                                         81.6717,	13.6959,	4.6324,
                                         68.4611,	17.8224,	13.7165,
                                         18.9851,	37.2244,	43.7905,
                                         99.7050,	0.1475,	0.1475,
                                         55.9397,	28.0142,	16.0461,
                                         37.4961,	31.9457,	30.5581,
                                         98.9071,	0.5464,	0.5464,
                                         87.0523,	12.6722,	0.2755,
                                         36.6593,	53.2890	,10.0517
),c(3,3,5),list(CoastalDevelopmentThreat=lv3,Overfishing=lv3,KilledCoralCover=lv))
MarineBasedPollutionThreat <- array(0.01*c(86.5316,	13.0795,	0.3888,
                                           75.5631,	19.8198,	4.6171,
                                           58.6654,	17.3471,	23.9875,
                                           86.5808,	13.0204,	0.3988,
                                           81.8429,	13.9295,	4.2276,
                                           57.9069,	17.8486,	24.2445,
                                           87.1958,	12.7805,	0.0236,
                                           73.0948,	19.4168,	7.4884,
                                           59.1307,	18.3240,	22.5453,
                                           89.2192,	7.1740,	3.6068,
                                           86.5484,	10.0517,	3.3999,
                                           76.8116,	15.4305,	7.7579,
                                           81.6717,	18.2276,	0.1007,
                                           64.5833,	23.5677,	11.8490,
                                           65.9420,	33.3333,	0.7246
),c(3,3,5),list(MarineBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,KilledCoralCover=lv))
ManagementEffectiveness <- array(0.01*c(76.9755,	18.8521,	4.1725,
                                        74.8239,	17.7744,	7.4017,
                                        84.0080,	11.2260,	4.7660,
                                        86.5122,	11.6459,	1.8419,
                                        92.5750,	7.2670,	0.1580
),c(3,5),list(ManagementEffectiveness=lvME,
                KilledCoralCover=lv))
Overfishing <- array(0.01*c(9.1516,	26.1604,	64.6880,
                            56.3077,	43.6806,	0.0117,
                            99.8943,	0.0528,	0.0528,
                            8.7312,	26.4447,	64.8240,
                            50.8045,	49.1835,	0.0120,
                            99.9423,	0.0288,	0.0288,
                            3.0873,	26.6689,	70.2438,
                            19.2668,	80.6479,	0.0853,
                            99.5984,	0.2008,	0.2008,
                            7.2344,	18.5668	,74.1987,
                            46.0884,	53.7415,	0.1701,
                            97.8495	,1.0753,	1.0753,
                            7.7361,	15.4152,	76.8487,
                            33.3333,	65.9420,	0.7246,
                            33.3333	,33.3333,	33.3333
),c(3,3,5),list(Overfishing=lv3,ManagementEffectiveness=lvME,KilledCoralCover=lv))
ThermalStress <- array(0.01*c(43.2553,	56.7447,
                              47.7430,	52.2570,
                              60.3359,	39.6641,
                              50.8913,	49.1087,
                              66.5877,	33.4123
),c(2,5),list(ThermalStress=lvThermal,KilledCoralCover=lv))
WatershedBasedPollutionThreat <- array(0.01*c(76.1484,	16.5406,	7.3110,
                                              46.5397,	37.3260,	16.1343,
                                              29.5212,	39.4819,	30.9969,
                                              75.1424,	22.4866,	2.3709,
                                              50.2062,	33.7552,	16.0386,
                                              31.3136,	43.0955,	25.5910,
                                              69.1236,	23.4113,	7.4652,
                                              49.2379,	31.3453,	19.4168,
                                              29.5810,	30.9881,	39.4309,
                                              76.7340,	21.4427,	1.8232,
                                              56.6149,	39.9852,	3.3999,
                                              30.7758,	34.6121,	34.6121,
                                              81.6717,	18.2276,	0.1007,
                                              64.5833,	35.2865,	0.1302,
                                              33.3333,	0.7246,	65.9420
),c(3,3,5),list(WatershedBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,KilledCoralCover=lv))

coral2 <- custom.fit(dag,list(
  KilledCoralCover=KilledCoralCover,
  AcidificationThreat=AcidificationThreat,
  CoastalDevelopmentThreat=CoastalDevelopmentThreat,
  MarineBasedPollutionThreat=MarineBasedPollutionThreat,
  ManagementEffectiveness=ManagementEffectiveness,
  Overfishing=Overfishing,
  ThermalStress=ThermalStress,
  WatershedBasedPollutionThreat=WatershedBasedPollutionThreat
))


usethis::use_data(coral2, overwrite = TRUE)


# MBP. MarineBasedPollutionThreat
# WBP. WatershedBasedPollutionThreat
# Arag AcidificationThreat
#CDT CoastalDevelopmentThreat
# ME. ManagementEffectiveness
# OFadj Overfishing
#TNoB ThermalStress
# PopBleach CoralPopulationBleached
#LiveCoral LiveCoralCover
#LCI ReefHealthIndex
#DeadCoral KilledCoralCover
#ColBleach CoralColonyBleached

string1 <- "[ReefHealthIndex]"
string2 <- "[AcidificationThreat|ManagementEffectiveness:ReefHealthIndex]"
string3 <- "[CoastalDevelopmentThreat|Overfishing:ReefHealthIndex]"
string4 <- "[MarineBasedPollutionThreat|CoastalDevelopmentThreat:ReefHealthIndex]"
string5 <-  "[ManagementEffectiveness|ReefHealthIndex]"
string6 <- "[Overfishing|ManagementEffectiveness:ReefHealthIndex]"
string7 <- "[ThermalStress|ReefHealthIndex]"
string8 <- "[WatershedBasedPollutionThreat|CoastalDevelopmentThreat:ReefHealthIndex]"

dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7,string8))

lv2 <- c("Low", "High")
lv3 <- c("Low", "Medium", "High")
lvME <- c("Ineffective", "Partial", "Effective")
lvThermal <- c("None", "Severe")
lv <- c("Less than 0", "0-0.118", "0.118-0.330", "0.330-0.683", "More than 0.683")

ReefHealthIndex <- array(0.01*c(
  40.4023,	38.9655,	13.7603,	5.2217,	1.6502
),5,list(ReefHealthIndex = lv))
AcidificationThreat <- array(0.01*c(
  89.5468,	10.4532,
  89.2908,	10.7092,
  39.0422,	60.9578,
  88.4633,	11.5367,
  82.6217,	17.3783,
  23.9681,	76.0319,
  87.2252,	12.7748,
  89.6758,	10.3242,
  57.1090,	42.8910,
  91.1496,	8.8504,
  94.8505,	5.1495,
  79.6053,	20.3947,
  88.4981,	11.5019,
  99.1803,	0.8197,
  96.8750,	3.1250
),c(2,3,5),list(AcidificationThreat=lv2,ManagementEffectiveness=lvME,ReefHealthIndex=lv))
CoastalDevelopmentThreat <- array(0.01*c(81.9294,	15.2833,	2.7872,
                                         71.9208,	17.8983	,10.1809,
                                         27.1230,	26.9160,	45.9610,
                                         86.4951,	12.0996,	1.4052,
                                         67.9018,	18.2873,	13.8108,
                                         22.7483,	28.7560,	48.4957,
                                         77.9762,	17.0996,	4.9242,
                                         57.6767,	25.0053,	17.3180,
                                         23.6876,	33.6841,	42.6283,
                                         89.2774,	5.3613,	5.3613,
                                         71.3381,	25.0198,	3.6421,
                                         22.5090,	36.2476,	41.2434,
                                         99.5098,	0.2451,	0.2451,
                                         74.3169,	25.1366,	0.5464,
                                         29.6388,	37.0279,	33.3333
),c(3,3,5),list(CoastalDevelopmentThreat=lv3,Overfishing=lv3,ReefHealthIndex=lv))
MarineBasedPollutionThreat <- array(0.01*c(86.9326,	12.6733,	0.3941,
                                           75.2206,	20.0976	,4.6818,
                                           59.1373,	17.5138,	23.3489,
                                           86.7014,	12.8721,	0.4266,
                                           83.7160,	11.9685,	4.3155,
                                           57.5127,	20.3040,	22.1832,
                                           90.4831,	9.5006,	0.0162,
                                           74.1987,	20.6273,	5.1740,
                                           60.3782,	12.8848,	26.7370,
                                           76.3115,	21.8321,	1.8563,
                                           75.5995,	16.2470,	8.1535,
                                           71.3561,	11.4702,	17.1736,
                                           79.8450,	15.0609,	5.0941,
                                           72.4900,	18.2731,	9.2369,
                                           44.3627,	22.3039,	33.3333
),c(3,3,5),list(MarineBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,ReefHealthIndex=lv))
ManagementEffectiveness <- array(0.01*c(76.8204,	19.0070,	4.1726,
                                        74.9122,	17.6008,	7.4870,
                                        84.1488,	11.6547,	4.1965,
                                        80.2411,	15.7757,	3.9832,
                                        87.2305,	10.1161,	2.6534
),c(3,5),list(ManagementEffectiveness=lvME,
              ReefHealthIndex=lv))
Overfishing <- array(0.01*c(9.3936,	26.7202,	63.8862,
                            55.6070,	44.3811,	0.0119,
                            99.8918,	0.0541,	0.0541,
                            8.3005,	26.1610,	65.5385,
                            50.8912,	49.0955,	0.0133,
                            99.9375,	0.0313,	0.0313,
                            4.9712,	27.6609,	67.3678,
                            33.3333,	66.6098,	0.0569,
                            99.6840,	0.1580,	0.1580,
                            5.9003,	15.6978,	78.4019,
                            39.9779,	59.9114,	0.1107,
                            99.1228,	0.4386,	0.4386,
                            14.3219,	8.6185,	77.0596,
                            74.3169,	25.1366,	0.5464,
                            95.8333	,2.0833,	2.0833
),c(3,3,5),list(Overfishing=lv3,ManagementEffectiveness=lvME,ReefHealthIndex=lv))
ThermalStress <- array(0.01*c(42.9892,	57.0108,
                              49.2099,	50.7901,
                              54.6241,	45.3759,
                              51.9654,	48.0346,
                              47.5124	,52.4876
),c(2,5),list(ThermalStress=lvThermal,ReefHealthIndex=lv))
WatershedBasedPollutionThreat <- array(0.01*c(76.2128,	16.3765,	7.4108,
                                              47.1919,	36.9148,	15.8933,
                                              30.7400,	40.4651,	28.7950,
                                              76.3653,	21.9425,	1.6922,
                                              44.9724,	37.7976,	17.2300,
                                              29.7002,	43.2306,	27.0692,
                                              67.1368,	25.5512,	7.3119,
                                              62.8663,	25.7784,	11.3553,
                                              33.6631,	29.7054,	36.6315,
                                              76.3115,	21.8321,	1.8563,
                                              54.0168,	32.4341,	13.5492,
                                              28.5805,	45.6907,	25.7288,
                                              79.8450,	15.0609,	5.0941,
                                              45.3815,	45.3815,	9.2369,
                                              11.2745,	11.2745,	77.4510
),c(3,3,5),list(WatershedBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,ReefHealthIndex=lv))

coral3 <- custom.fit(dag,list(
  ReefHealthIndex=ReefHealthIndex,
  AcidificationThreat=AcidificationThreat,
  CoastalDevelopmentThreat=CoastalDevelopmentThreat,
  MarineBasedPollutionThreat=MarineBasedPollutionThreat,
  ManagementEffectiveness=ManagementEffectiveness,
  Overfishing=Overfishing,
  ThermalStress=ThermalStress,
  WatershedBasedPollutionThreat=WatershedBasedPollutionThreat
))


usethis::use_data(coral3, overwrite = TRUE)



# MBP. MarineBasedPollutionThreat
# WBP. WatershedBasedPollutionThreat
# Arag AcidificationThreat
#CDT CoastalDevelopmentThreat
# ME. ManagementEffectiveness
# OFadj Overfishing
#TNoB ThermalStress
# PopBleach CoralPopulationBleached
#LiveCoral LiveCoralCover
#LCI ReefHealthIndex
#DeadCoral KilledCoralCover
#ColBleach CoralColonyBleached

string1 <- "[LiveCoralCover]"
string2 <- "[AcidificationThreat|ManagementEffectiveness:LiveCoralCover]"
string3 <- "[CoastalDevelopmentThreat|Overfishing:LiveCoralCover]"
string4 <- "[MarineBasedPollutionThreat|CoastalDevelopmentThreat:LiveCoralCover]"
string5 <-  "[ManagementEffectiveness|LiveCoralCover]"
string6 <- "[Overfishing|ManagementEffectiveness:LiveCoralCover]"
string7 <- "[ThermalStress|LiveCoralCover]"
string8 <- "[WatershedBasedPollutionThreat|CoastalDevelopmentThreat:LiveCoralCover]"

dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7,string8))

lv2 <- c("Low", "High")
lv3 <- c("Low", "Medium", "High")
lvME <- c("Ineffective", "Partial", "Effective")
lvThermal <- c("None", "Severe")
lv <- c("Less than 0", "0-0.040", "0.040-0.122", "0.122-0.241", "0.241-0.417","More than 0.417")

LiveCoralCover <- array(0.01*c(
  0.7458,	3.1678,	14.2105,	25.2531,	30.4256	,26.1973
),6,list(LiveCoralCover = lv))
AcidificationThreat <- array(0.01*c(
  74.9135,	25.0865,
  97.3684,	2.6316,
  97.3684,	2.6316,
  96.3169,	3.6831,
  92.6877,	7.3123,
  87.2414,	12.7586,
  93.4695,	6.5305,
  79.0063,	20.9937,
  62.4138,	37.5862,
  84.5625,	15.4375,
  83.9445,	16.0555,
  38.9060,	61.0940,
  89.8897,	10.1103,
  88.3056,	11.6944,
  27.5312,	72.4688,
  88.8403,	11.1597,
  92.7590,	7.2410,
  20.5548,	79.4452
),c(2,3,6),list(AcidificationThreat=lv2,ManagementEffectiveness=lvME,LiveCoralCover=lv))
CoastalDevelopmentThreat <- array(0.01*c(98.1982,	0.9009,	0.9009,
                                         49.5495,	49.5495,	0.9009,
                                         14.3610,	21.4756	,64.1634,
                                         72.1026,	16.7179,	11.1795,
                                         64.6037,	23.5613,	11.8350,
                                         30.9555,	14.3109,	54.7336,
                                         95.2587,	3.1512,	1.5901,
                                         46.4199,	30.9540,	22.6261,
                                         19.1959,	27.7793,	53.0248,
                                         80.5774,	15.6790,	3.7436,
                                         71.4169,	17.5872,	10.9958,
                                         22.4101,	31.1041,	46.4859,
                                         80.2308,	17.9065,	1.8626,
                                         72.2385,	17.2292,	10.5324,
                                         24.0554,	32.4326,	43.5120,
                                         89.1408,	10.0108,	0.8484,
                                         70.7586,	17.9531,	11.2883,
                                         30.6506,	27.8647,	41.4847
),c(3,3,6),list(CoastalDevelopmentThreat=lv3,Overfishing=lv3,LiveCoralCover=lv))
MarineBasedPollutionThreat <- array(0.01*c(39.9267,	39.9267,	20.1465,
                                           74.4292,	0.4566	,25.1142,
                                           44.3763,	22.2904,	33.3333,
                                           72.9135,	21.6392,	5.4473,
                                           92.0567,	7.8014,	0.1418,
                                           51.8138,	14.8528,	33.3333,
                                           82.5889,	17.3977,	0.0134,
                                           68.6511,	21.6945,	9.6544,
                                           63.1867,	9.6105,	27.2027,
                                           81.9584,	17.3800,	0.6617,
                                           76.6958,	19.8681,	3.4360,
                                           56.6994,	20.1264,	23.1742,
                                           86.7487,	13.2463,	0.0050,
                                           79.4456,	15.6810,	4.8734,
                                           61.2820,	19.3590,	19.3590,
                                           94.4669,	5.2371,	0.2960,
                                           82.4618,	13.8765,	3.6617,
                                           57.9531,	19.7500,	22.2969
),c(3,3,6),list(MarineBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,LiveCoralCover=lv))
ManagementEffectiveness <- array(0.01*c(88.3792,	5.8104,	5.8104,
                                        71.3463,	18.2145,	10.4392,
                                        79.7464,	17.9265	,2.3271,
                                        76.8988,	17.2401,	5.8611,
                                        76.1037,	18.4919,	5.4044,
                                        78.6715,	15.2085,	6.1200
),c(3,6),list(ManagementEffectiveness=lvME,
              LiveCoralCover=lv))
Overfishing <- array(0.01*c(0.1153,	12.5721,	87.3126,
                            96.4912,	1.7544,	1.7544,
                            96.4912,	1.7544,	1.7544,
                            5.4827,	18.1971,	76.3202,
                            49.9341,	49.9341,	0.1318,
                            99.5402,	0.2299,	0.2299,
                            9.0629,	19.2057,	71.7314,
                            49.9851,	49.9851,	0.0298,
                            99.5402,	0.2299,	0.2299,
                            8.0368,	28.7532,	63.2100,
                            56.5916,	43.3910,	0.0175,
                            99.8973,	0.0514,	0.0514,
                            8.3358,	26.0645,	65.5997,
                            54.7358,	45.2506,	0.0135,
                            99.9075,	0.0462,	0.0462,
                            8.3693,	27.2915	,64.3392,
                            40.2023,	59.7787,	0.0191,
                            99.9052,	0.0474,	0.0474
),c(3,3,6),list(Overfishing=lv3,ManagementEffectiveness=lvME,LiveCoralCover=lv))
ThermalStress <- array(0.01*c(44.4954,	55.5046,
                              24.7300,	75.2700,
                              36.7116,	63.2884,
                              45.0420,	54.9580,
                              47.2341,	52.7659,
                              59.0885,	40.9115
),c(2,6),list(ThermalStress=lvThermal,LiveCoralCover=lv))
WatershedBasedPollutionThreat <- array(0.01*c(59.7070,	39.9267,	0.3663,
                                              25.1142,	49.7717,	25.1142,
                                              11.2474,	11.2474,	77.5051,
                                              81.0095,	10.8446,	8.1459,
                                              38.4397,	30.7801,	30.7801,
                                              44.4216,	18.5489,	37.0294,
                                              80.4158,	15.9490,	3.6351,
                                              45.7748,	27.7146,	26.5106,
                                              29.6017,	36.7985,	33.5999,
                                              73.7631,	20.6580,	5.5788,
                                              52.7323,	32.8769,	14.3908,
                                              31.0983,	41.4607,	27.4410,
                                              72.4266,	22.9745,	4.5989,
                                              52.9671,	35.6750,	11.3580,
                                              32.7959,	44.6203,	22.5839,
                                              77.3185,	18.0257,	4.6558,
                                              45.2506,	41.6025,	13.1469,
                                              26.1172,	40.1250,	33.7578
),c(3,3,6),list(WatershedBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,LiveCoralCover=lv))

coral4 <- custom.fit(dag,list(
  LiveCoralCover=LiveCoralCover,
  AcidificationThreat=AcidificationThreat,
  CoastalDevelopmentThreat=CoastalDevelopmentThreat,
  MarineBasedPollutionThreat=MarineBasedPollutionThreat,
  ManagementEffectiveness=ManagementEffectiveness,
  Overfishing=Overfishing,
  ThermalStress=ThermalStress,
  WatershedBasedPollutionThreat=WatershedBasedPollutionThreat
))


usethis::use_data(coral4, overwrite = TRUE)




# MBP. MarineBasedPollutionThreat
# WBP. WatershedBasedPollutionThreat
# Arag AcidificationThreat
#CDT CoastalDevelopmentThreat
# ME. ManagementEffectiveness
# OFadj Overfishing
#TNoB ThermalStress
# PopBleach CoralPopulationBleached
#LiveCoral LiveCoralCover
#LCI ReefHealthIndex
#DeadCoral KilledCoralCover
#ColBleach CoralColonyBleached

string1 <- "[CoralPopulationBleached]"
string2 <- "[AcidificationThreat|CoralPopulationBleached]"
string3 <- "[CoastalDevelopmentThreat|Overfishing:CoralPopulationBleached]"
string4 <- "[MarineBasedPollutionThreat|CoastalDevelopmentThreat:CoralPopulationBleached]"
string5 <-  "[ManagementEffectiveness|AcidificationThreat:CoralPopulationBleached]"
string6 <- "[Overfishing|ManagementEffectiveness:CoralPopulationBleached]"
string7 <- "[ThermalStress|CoralPopulationBleached]"
string8 <- "[WatershedBasedPollutionThreat|CoastalDevelopmentThreat:CoralPopulationBleached]"
dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7,string8))

lv2 <- c("Low", "High")
lv3 <- c("Low", "Medium", "High")
lvME <- c("Ineffective", "Partial", "Effective")
lvThermal <- c("None", "Severe")
lv <- c("Less than 0", "0-0.086", "0.086-0.265", "0.265-0.507", "More than 0.507")

CoralPopulationBleached<- array(0.01*c(65.7070,	24.7307	,6.3115,	1.9965,	1.2544
),5,list(CoralPopulationBleached = lv))
AcidificationThreat <- array(0.01*c(90.5562,	9.4438,
                                    75.3267,	24.6733,
                                    79.6253,	20.3747,
                                    68.6673,	31.3327,
                                    86.4659,	13.5341
),c(2,5),list(AcidificationThreat=lv2,CoralPopulationBleached=lv))
CoastalDevelopmentThreat <- array(0.01*c(83.3920,	14.6094,	1.9986,
                                         68.2440,	17.5865,	14.1694,
                                         26.1661,	28.3214,	45.5126,
                                         84.1847,	12.7656,	3.0497,
                                         66.9702,	23.9806,	9.0492,
                                         20.5708,	32.8910,	46.5382,
                                         96.1569,	0.0818,	3.7614,
                                         64.4799,	29.6010,	5.9191,
                                         25.0429,	29.5356,	45.4215,
                                         79.4142,	20.1478,	0.4380,
                                         74.7904,	18.8659,	6.3437,
                                         36.9378,	33.1604,	29.9018,
                                         49.6869,	49.2426,	1.0705,
                                         79.8200,	13.4050,	6.7750,
                                         0.1678,	15.2834,	84.5488
),c(3,3,5),list(CoastalDevelopmentThreat=lv3,Overfishing=lv3,CoralPopulationBleached=lv))
MarineBasedPollutionThreat <- array(0.01*c(87.0134,	12.4049,	0.5817,
                                           82.6491,	13.8771	,3.4738,
                                           60.9436,	18.5362,	20.5202,
                                           85.8304,	13.7050,	0.4646,
                                           74.1669,	20.3847,	5.4484,
                                           58.2364,	16.7088,	25.0548,
                                           92.8303,	7.1288,	0.0409,
                                           56.6815,	29.4491,	13.8694,
                                           49.7024,	13.8039,	36.4936,
                                           80.3464,	19.4564,	0.1972,
                                           53.6138,	30.5546,	15.8316,
                                           33.0770,	23.0468,	43.8761,
                                           61.2528,	38.4167,	0.3305,
                                           99.1239,	0.4365,	0.4396,
                                           57.9835,	8.5852,	33.4313
),c(3,3,5),list(MarineBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,CoralPopulationBleached=lv))
ManagementEffectiveness <- array(0.01*c(79.2111,	18.9554	,1.8335,
                                        67.5396,	10.6070	,21.8534,
                                        80.6788,	15.7075	,3.6138,
                                        50.8436,	20.2052	,28.9511,
                                        89.2364,	8.2118,	2.5518,
                                        58.2877,	16.0677,	25.6445,
                                        87.8023,	12.0963,	0.1014,
                                        79.8759,	6.7810,	13.3432,
                                        88.3581,	11.5153,	0.1267,
                                        50.0262,	49.1677,	0.8060
),c(3,2,5),list(ManagementEffectiveness=lvME,AcidificationThreat=lv2,CoralPopulationBleached=lv))
Overfishing <- array(0.01*c(8.4802,	25.9968,	65.5230,
                            46.6807,	53.3117,	0.0076,
                            99.9254,	0.0373,	0.0373,
                            9.2875,	24.1932,	66.5193,
                            63.4358,	36.5423,	0.0219,
                            99.9252,	0.0374,	0.0374,
                            5.5074,	22.0541,	72.4384,
                            59.9343,	39.9184,	0.1473,
                            99.6017,	0.1992,	0.1992,
                            2.4635,	31.4966,	66.0399,
                            39.9883,	59.5737,	0.4380,
                            97.8500,	1.0750,	1.0750,
                            0.0874,	47.3902,	52.5223,
                            40.0199,	59.5423,	0.4378,
                            33.4697,	33.2651,	33.2651
),c(3,3,5),list(Overfishing=lv3,ManagementEffectiveness=lvME,CoralPopulationBleached=lv))
ThermalStress <- array(0.01*c(60.1506,	39.8494,
                              54.6087,	45.3913,
                              53.3976,	46.6024,
                              43.9516,	56.0484,
                              43.3893,	56.6107
),c(2,5),list(ThermalStress=lvThermal,CoralPopulationBleached=lv))
WatershedBasedPollutionThreat <- array(0.01*c(76.6302,	17.5681,	5.8017,
                                              49.8027,	37.0403,	13.1570,
                                              32.7901,	40.1097,	27.1002,
                                              73.7793,	23.1670,	3.0537,
                                              50.1313,	29.1641,	20.7046,
                                              29.9706,	36.5406,	33.4888,
                                              75.9288,	21.2351,	2.8361,
                                              43.2591,	37.7364,	19.0045,
                                              13.4586,	47.0642,	39.4772,
                                              49.8052,	46.2961,	3.8987,
                                              61.4103,	30.6890,	7.9007,
                                              33.4521,	43.9156,	22.6323,
                                              76.7531,	23.0772,	0.1697,
                                              20.0799,	79.4771,	0.4430,
                                              8.2863,	40.8129,	50.9007
),c(3,3,5),list(WatershedBasedPollutionThreat=lv3,CoastalDevelopmentThreat=lv3,CoralPopulationBleached=lv))

coral5 <- custom.fit(dag,list(
  CoralPopulationBleached=CoralPopulationBleached,
  AcidificationThreat=AcidificationThreat,
  CoastalDevelopmentThreat=CoastalDevelopmentThreat,
  MarineBasedPollutionThreat=MarineBasedPollutionThreat,
  ManagementEffectiveness=ManagementEffectiveness,
  Overfishing=Overfishing,
  ThermalStress=ThermalStress,
  WatershedBasedPollutionThreat=WatershedBasedPollutionThreat
))


usethis::use_data(coral5, overwrite = TRUE)


