# Development of a computerized adaptive testing for ADHD using Bayesian networks: An attempt at classification

library(bnlearn)

dag <- model2network("[Phytoplankton|Disturbance:Resources][Resources|BenthicFishForaging:NutrientLoading:Light][Disturbance|Zooplankton:Flow][Zooplankton|PlanktivorousFish:Flow][BenthicFishForaging|EpiphyticInvertebrates][PlanktivorousFish|PiscivorousFishPredation][Light|Ecosystem:MacrophyteRemoval][EpiphyticInvertebrates|Ecosystem:MacrophyteRemoval][PiscivorousFishPredation|PiscivorousFish:MacrophyteRemoval][Flow|Ecosystem:MacrophyteRemoval][MacrophyteRemoval|Perception][Perception|MacrophyteSpecies:MacrophyteGrowth:Activity:RespondentType][MacrophyteSpecies][MacrophyteGrowth][Activity][RespondentType][Ecosystem][NutrientLoading][PiscivorousFish]")

lv <- c("Low","High")

MacrophyteSpecies <- array(c(0.165,0.222,0.192,0.217,0.204),5,list(MacrophyteSpecies = c("Elodea nuttallii", "Pontederia crassipes","Ludwigia","Juncus bulbosus","Sagittaria sagittifolia")))
MacrophyteGrowth <- array(c(0.183,0.19,0.197,0.209,0.221),5,list(MacrophyteGrowth=c("Very low","Low","Medium","High","Very high")))
Activity <- array(c(0.128,0.212,0.208,0.207,0.208,0.0385),6,list(Activity=c("Swimming","Boating","Angling","Biodiversity","Aesthetics","Bird-watching")))
RespondentType <- array(c(0.507,0.493),2,list(RespondentType=c("Resident","Visitor")))
Ecosystem <- array(c(1/3,1/3,1/3),3,list(Ecosystem=c("Standing floating","Standing submerged","Flowing submerged")))
NutrientLoading <- array(c(1/3,1/3,1/3),3, list(NutrientLoading=c("Low","Moderate","High")))
PiscivorousFish <- array(c(0.5,0.5),2,list(PiscivorousFish=c("Absent","Present")))
Perception <- array(c(rep(0.5,10),0.111,0.889,0.265,0.735,0.509,0.491,0.749,0.251,0.896,0.104,0.029,0.971,0.079,0.921,0.198,0.802,0.415,0.585,0.672,0.328,0.035,0.965,0.095,0.905,0.232,0.768,0.465,0.535,0.715,0.285,0.045,0.955,
                      0.119,0.881,0.281,0.719,0.53,0.47,0.765,0.235,rep(0.5,20),0.062,0.938,   0.159,0.841,0.353,0.647,0.611,0.389,0.819,0.181,0.015,0.985,0.043,0.957,0.114,0.886,0.271,0.729,0.518,0.482,0.019,0.981,0.052,0.948,
                      0.137,0.863,0.313,0.687,0.568,0.432,0.024,0.976,0.066,0.934,0.17,0.83,0.372,0.628,0.63,0.37,rep(0.5,10),0.184,0.816,0.311,0.689,0.475,0.525,0.644,0.356,0.784,0.216,0.191,0.809,0.322,0.678,0.488,0.512,0.655,
                      0.345,0.792,0.208,0.179,0.821,0.304,0.696,0.467,0.533,0.637,0.363,0.778,0.222,0.178,0.822,0.302,0.698,0.466,0.534,0.634,0.366,0.777,0.223,0.199,0.801, 0.333,0.667,0.5,0.5,0.667,0.333,0.8,0.2,rep(0.5,10),
                      0.233,0.767,0.311,0.689,0.1,0.9,0.497,0.503,0.594,0.406,0.383,0.617,0.479,0.521,0.576,0.424,0.668,0.332,0.748,0.252,0.361,0.639,0.456,0.544,0.553,0.447,0.647,0.353,0.73,0.27,0.358,0.642,0.452,0.548,0.549,0.451,
                      0.643,0.357,0.728,0.272,0.281,0.719,0.366,0.634,0.461,0.539,0.559,0.441,0.652,0.348,rep(0.5,20),
                      0.178,0.822,0.162,0.838,0.152,0.848,0.139,0.861,0.128,0.872,0.176,0.824,0.163,0.837,0.15,0.85,0.138,0.862,0.127,0.873,0.193,0.807,0.178,0.822,0.165,0.835,0.152,0.848,0.139,0.861,0.172,0.828,0.159,0.841,0.146,0.854,0.135,0.865,0.124,0.876,0.184,0.816,0.169,0.831,0.157,0.843,0.144,0.856,0.133,0.867,rep(0.5,10),0.156,0.844,0.16,0.84,0.164,0.836,0.168,0.832,0.171,0.829,0.155,0.845,0.159,0.841,0.162,0.838,0.166,0.834,0.17,0.83,0.169,0.831,0.174,0.826,0.178,0.822,
                      0.182,0.818,0.186,0.814,0.151,0.849,0.155,0.845,0.158,0.842,0.162,0.838,0.166,0.834,0.162,0.838,0.164,0.835,0.169,0.831,0.173,0.827,0.177,0.823,0.29,0.71,0.433,0.567,0.591,0.409,0.732,0.268,0.838,0.162,0.278,0.722,0.421,0.579,0.579,0.421,0.722,0.278,0.831,0.169,0.258,0.742,0.397,0.604,0.554,0.446,0.702,0.298,0.817,0.183,0.227,0.773,0.357,0.643,0.512,0.488,0.665,0.335,0.79,0.21,0.257,0.743,0.395,0.605,0.553,0.447,0.7,0.3,0.816,0.184,rep(0.5,10),0.122,0.878,0.208,0.792,
                      0.333,0.667,0.485,0.515,0.641,0.359,0.117,0.883,0.201,0.799,0.322,0.678,0.474,0.526,0.629,0.371,0.107,0.893,0.185,0.815,0.3,0.7,0.448,0.552,0.606,0.394,0.092,0.908,0.161,0.839,0.266,0.734,0.407,0.593,0.565,0.435,0.106,0.894,0.184,0.816,0.299,0.701,0.447,0.553,0.604,0.396, rep(0.5,10),0.021,0.979,0.073,0.927,0.226,0.774,0.52,0.48,0.8,0.2,0.021,0.979,0.078,0.922,0.236,0.764,0.534,0.466,0.801,0.199,0.026,0.974,0.089,0.911,0.267,0.733,0.574,0.426,0.833,0.167,0.015,0.985,
                      0.038,0.962,0.127,0.873,0.35,0.65,0.666,0.334,0.019,0.981,0.069,0.931,0.216,0.784,0.505,0.495,0.791,0.209,rep(0.5,10),0.051,0.949,0.107,0.893,0.211,0.789,0.373,0.627,0.569,0.431,0.054,0.946,0.112,0.888,0.219,0.781,0.385,0.615,0.583,0.417,0.063,0.937,0.13,0.87,0.249,0.751,0.425,0.575,0.622,0.378,0.026,0.974,0.563,0.437,0.117,0.883,0.228,0.772,0.397,0.603,0.048,0.952,0.102,0.898,0.201,0.799,0.359,0.641,0.555,0.445,rep(0.5,10)
                      ),c(2,5,6,2,5),list(Perception=c("Nuisance","No nuisance"),MacrophyteGrowth=c("Very low","Low","Medium","High","Very high"),Activity=c("Swimming","Boating","Angling","Biodiversity","Aesthetics","Bird-watching"),RespondentType=c("Resident","Visitor"),MacrophyteSpecies = c("Elodea nuttallii", "Pontederia crassipes","Ludwigia","Juncus bulbosus","Sagittaria sagittifolia")))
MacrophyteRemoval <- array(c(0.2,0.2,0.6,0.8,0.2,0),c(3,2),list(MacrophyteRemoval=c("None","Partial","Full"),Perception=c("Nuisance","No nuisance")))
Flow <- array(c(1,0,0,1,0,0,0.75,0.25,0,1,0,0,1,0,0,0,0.5,0.5,1,0,0,1,0,0,0,0,1),c(3,3,3),list(Flow=c("Low","Medium","High"),Ecosystem=c("Standing floating","Standing submerged","Flowing submerged"),MacrophyteRemoval=c("None","Partial","Full")))
PiscivorousFishPredation<- array(c(1,0,1,0,1,0,0.5,0.5,1,0,0,1),c(2,2,3),list(PiscivorousFishPredation=lv,PiscivorousFish=c("Absent","Present"),MacrophyteRemoval=c("None","Partial","Full")))
EpiphyticInvertebrates <- array(c(0.75,0.25,0,0,0.25,0.75,0,0.25,0.75,0.5,0.5,0,0.25,0.75,0,0.25,0.75,0,0.25,0.5,0.25,1,0,0,1,0,0),c(3,3,3),list(EpiphyticInvertebrates=c("Low","Moderate","High"),Ecosystem=c("Standing floating","Standing submerged","Flowing submerged"),MacrophyteRemoval=c("None","Partial","Full")))
Light <- array(c(1,0,0.5,0.5,0.5,0.5,0.5,0.5,0.25,0.75,0.25,0.75,0,1,0,1,0,1),c(2,3,3),list(Light=c("Low","High"),Ecosystem=c("Standing floating","Standing submerged","Flowing submerged"),MacrophyteRemoval=c("None","Partial","Full")))
PlanktivorousFish <- array(c(0,1,1,0),c(2,2),list(PlanktivorousFish=lv,PiscivorousFishPredation=c("Low","High")))
BenthicFishForaging <- array(c(0,0,1,0,1,0,1,0,0),c(3,3),list(BenthicFishForaging=c("Low","Moderate","High"),EpiphyticInvertebrates=c("Low","Moderate","High")))
Zooplankton <- array(c(0,0,1,0.5,0.5,0,0,1,0,0.75,0.25,0,1,0,0,1,0,0),c(3,2,3),list(Zooplankton=c("Low","Moderate","High"),PlanktivorousFish=lv,Flow=c("Low","Medium","High")))
Disturbance <- array(c(1,0,0,0,1,0,0,0.75,0.25,0,1,0,0,0.5,0.5,1/3,1/3,1/3,0,0,1,1/3,1/3,1/3,1/3,1/3,1/3),c(3,3,3),list(Disturbance= c("Low","Moderate","High"),Zooplankton=c("Low","Moderate","High"),Flow=c("Low","Medium","High")))
Resources <- array(c(1,0,0,0.9,0.1,0,0.8,0.2,0,0.75,0.25,0,0.7,0.3,0,0.65,0.35,0,0.5,0.5,0,0.5,0.5,0,0.5,0.5,0,0.75,0.25,0,0.5,0.5,0,0.25,0.75,0,0,0.75,0.25,0,0.65,0.35,0,0.55,0.45,0,0,1,0,0,1,0,0,1),c(3,3,3,2),list(Resources=c("Low","Moderate","High"),BenthicFishForaging=c("Low","Moderate","High"),NutrientLoading=c("Low","Moderate","High"),Light=lv))
Phytoplankton <- array(c(0.5,0.5,0,0.75,0.25,0,1,0,0,0,0.5,0.5,0,1,0,0.5,0.5,0,0,0,1,0,0.5,0.5,0,1,0),c(3,3,3),list(Phytoplankton=c("Low","Moderate","High"),Disturbance =c("Low","Moderate","High"),Resources=c("Low","Moderate","High")))

nuisancegrowth <- custom.fit(dag,list(
  MacrophyteSpecies=MacrophyteSpecies,
  MacrophyteGrowth=MacrophyteGrowth,
  Activity=Activity,
  RespondentType =RespondentType ,
  Ecosystem=Ecosystem,
  NutrientLoading=NutrientLoading,
  PiscivorousFish=PiscivorousFish,
  Perception = Perception,
  MacrophyteRemoval=MacrophyteRemoval,
  Flow=Flow,PiscivorousFishPredation=PiscivorousFishPredation,
  EpiphyticInvertebrates=EpiphyticInvertebrates, Light=Light,
  PlanktivorousFish=PlanktivorousFish,
  BenthicFishForaging=BenthicFishForaging,
  Zooplankton=Zooplankton,
  Disturbance=Disturbance,
  Resources=Resources, Phytoplankton=Phytoplankton
))


usethis::use_data(nuisancegrowth, overwrite = TRUE)
