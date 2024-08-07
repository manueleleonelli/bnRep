## Towards system-theoretic risk management for maritime transportation systems: A case study of the yangtze river estuary

# library(bnlearn)

yangtze.dag <- model2network("[TrafficFlow][Wind][Visibility][ShipType][ShipAge][GrossTonnage][AvoidanceRules][QualifiedCrew][SupervisingCompanies][CrewTraining][CautiousDriving][SafetyTraining][ResourceManagement][ShipTracking][HardwareMaintenance][SupervisionVessel][EquipmentFailure|ShipAge:SupervisingCompanies:HardwareMaintenance][ImproperStowage|SupervisionVessel:HardwareMaintenance:SupervisingCompanies:ShipTracking:ShipType][CompetentCrew|SupervisionVessel:QualifiedCrew:SupervisingCompanies][NegligentLookout|CrewTraining:CautiousDriving:TrafficFlow:Wind][InadequateCommunication|ResourceManagement:AvoidanceRules:SafetyTraining:CompetentCrew:NegligentLookout][AssessmentFailure|CrewTraining:AvoidanceRules:NegligentLookout:TrafficFlow][NoGiveWay|AvoidanceRules:SafetyTraining:TrafficFlow:Visibility][EarlyMeasures|CrewTraining:AvoidanceRules:AssessmentFailure:InadequateCommunication][UnsafeSpeed|QualifiedCrew:AvoidanceRules:AssessmentFailure:EquipmentFailure:Wind][Collision|EarlyMeasures:NoGiveWay:UnsafeSpeed][Sinking|CompetentCrew:ImproperStowage:Wind][Contact|AssessmentFailure:NegligentLookout][ConsequenceCollision|ShipAge:GrossTonnage:ShipType][ConsequenceSinking|ShipAge:GrossTonnage:ShipType][ConsequenceContact|ShipAge:GrossTonnage:ShipType]")

lvTraffic <- c("Heavy","NormalOrLow")
lvWind <- c(">= Category 5", "< Category 5")
lvVisibility <- c("Poor","Good")
lvType <- c("Carrier/Container","Tanker","Other ship")
lvAge <- c("<10 years","10-20 years","> 20 years")
lvTonnage <- c("< 3000 tons","3000-10000 tons", "> 10000 tons")
lv <- c("Adopted","Unadopted")
lv1 <- c("YES","NO")
lv2 <- c("Serious","Moderate","Minor")

traffic.prob <- array(c(0.4038,1-0.4038),dim=2, dimnames = list(TrafficFlow=lvTraffic))
wind.prob <- array(c(0.192307692,1-0.192307692),dim=2,dimnames=list(Wind=lvWind))
visibility.prob <- array(c(0.25,0.75), dim = 2, dimnames=list(Visibility=lvVisibility))
type.prob <- array(c(0.78021978,0.142857143,0.076923077),dim=3,dimnames=list(ShipType=lvType))
age.prob <- array(c(0.78021978,0.142857143,0.076923077),dim=3,dimnames=list(ShipAge=lvAge))
tonnage.prob <- array(c(0.505494505,0.252747253,0.241758242),dim=3,dimnames=list(GrossTonnage=lvTonnage))
avoidance.prob <- array(c(0.363636364,1-0.363636364),dim=2,dimnames=list(AvoidanceRules=lv))
qualified.prob <- array(c(0.290909091,1-0.290909091),dim=2,dimnames=list(QualifiedCrew=lv))
supervising.prob <- array(c(0.181818182,1-0.181818182),dim=2,dimnames=list(SupervisingCompanies =lv))
crew.prob <- array(c(0.163636364,1-0.163636364),dim=2,dimnames=list(CrewTraining =lv))
cautious.prob <- array(c(0.127272727,1-0.127272727),dim=2,dimnames=list(CautiousDriving=lv))
safety.prob <- array(c(0.109090909,1-0.109090909),dim=2,dimnames=list(SafetyTraining =lv))
resource.prob <- array(c(0.109090909,1-0.109090909),dim=2,dimnames=list(ResourceManagement=lv))
tracking.prob <- array(c(0.072727273,1-0.072727273),dim=2,dimnames=list(ShipTracking=lv))
hardware.prob <- array(c(0.054545455,1-0.054545455),dim=2,dimnames=list(HardwareMaintenance=lv))
supervision.prob <- array(c(0.78021978,1-0.78021978),dim=2,dimnames=list(SupervisionVessel=lv))
equipment.prob <- array(c(0.009428066,1-0.009428066,0.05,0.95,0.05,0.95,0.030660377,1-0.030660377,0.05,0.95,0.05,0.95,0.029009434,1-0.029009434,0.05,0.95,0.05,0.95,0.094339623,1-0.094339623,0.05,0.95,0.05,0.95), dim = c(2,3,2,2), dimnames=list(EquipmentFailure=lv1,ShipAge=lvAge,SupervisingCompanies=lv,HardwareMaintenance=lv))
improper.prob <-array(c(0.000954451,1-0.000954451,0.003103906,1-0.003103906,0.002936773,1-0.002936773,0.009550481,1-0.009550481,0.003291211,1-0.003291211,0.010703125,1-0.010703125,0.010126803,1-0.010126803,0.032932692,1-0.032932692,0.002786719,1-0.002786719,0.0090625,1-0.0090625,0.008574519,1-0.008574519,0.027884615,1-0.027884615,0.009609375,1-0.009609375,0.03125,1-0.03125,0.029567308,1-0.029567308,0.096153846,1-0.096153846,rep(c(0.05,0.95),32)),dim=c(2,2,2,2,2,3),dimnames= list(ImproperStowage=lv1,SupervisionVessel=lv,HardwareMaintenance=lv,SupervisingCompanies=lv,ShipTracking=lv,ShipType=lvType))
competent.prob <- array(c(0.014238125,1-0.014238125,0.016140385,1-0.016140385,0.017424279,1-0.017424279,0.073365385,1-0.073365385,0.05225,1-0.05225,0.059230769,1-0.059230769,0.063942308,1-0.063942308,0.269230769,1-0.269230769), dim=c(2,2,2,2),dimnames= list(CompetentCrew=lv1, SupervisionVessel=lv, QualifiedCrew=lv, SupervisingCompanies=lv))
negligent.prob <- array(c(0.042533333,1-0.042533333,0.193333333,1-0.193333333,0.146666667,1-0.146666667,0.666666667,1-0.666666667,0.009114286,1-0.009114286,0.041428571,1-0.041428571,0.031428571,1-0.031428571,0.142857143,1-0.142857143,0.056711111,1-0.056711111,0.257777778,1-0.257777778,0.195555556,1-0.195555556,0.888888889,1-0.888888889,0.0319,1-0.0319,0.145,1-0.145,0.11,1-0.11,0.5,0.5),dim=c(2,2,2,2,2), dimnames= list(NegligentLookout=lv1, CrewTraining=lv,CautiousDriving=lv,TrafficFlow=lvTraffic,Wind=lvWind))
communication.prob <- array(c(0.00470475,1-0.00470475,0.01845,1-0.01845,0.01306875,1-0.01306875,0.05125,1-0.05125,0.0153,1-0.0153,0.06,1-0.06,0.0425,1-0.0425,0.166666667,1-0.166666667,0.01467882,1-0.01467882,0.057564,1-0.057564,0.0407745,1-0.0407745,0.1599,1-0.1599,0.047736,1-0.047736,0.1872,1-0.1872,0.1326,1-0.1326,0.52,1-0.52,0.003528563,1-0.003528563,0.0138375,1-0.0138375,0.009801563,1-0.009801563,0.0384375,1-0.0384375,0.011475,1-0.011475,0.045,1-0.045,0.031875,1-0.031875,0.125,1-0.125,0.006514269,1-0.006514269,0.025546154,1-0.025546154,0.018095192,1-0.018095192,0.070961539,1-0.070961539,0.021184615,1-0.021184615,0.083076923,1-0.083076923,0.058846154,1-0.058846154,0.230769231,1-0.230769231),dim=c(2,2,2,2,2,2),dimnames= list(InadequateCommunication=lv1,ResourceManagement=lv,AvoidanceRules=lv,SafetyTraining=lv,CompetentCrew=lv1,NegligentLookout=lv1))
assessment.prob <- array(c(0.04335,1-0.04335,0.17,1-0.17,0.17,1-0.17,0.666666667,1-0.666666667,0.06177375,1-0.06177375,0.24225,1-0.24225,0.24225,1-0.24225,0.95,1-0.95,0.045017308,1-0.045017308,0.176538461,1-0.176538461,0.176538461,1-0.176538461,0.692307692,1-0.692307692,0.021675,1-0.021675,0.085,1-0.085,0.085,1-0.085,0.333333333,1-0.333333333),dim=c(2,2,2,2,2),dimnames=list(AssessmentFailure=lv1,CrewTraining=lv,AvoidanceRules=lv,NegligentLookout=lv1,TrafficFlow=lvTraffic))
way.prob <- array(c(0.01975625,1-0.01975625,0.0725,1-0.0725,0.068125,1-0.068125,0.25,0.75,rep(c(0.05,0.95),4),0.037188235,1-0.037188235,0.136470588,1-0.136470588,0.128235294,1-0.128235294,0.470588235,1-0.470588235,0.021552273,1-0.021552273,0.079090909,1-0.079090909,0.074318182,1-0.074318182,0.272727273,1-0.272727273),dim=c(2,2,2,2,2),dimnames=list(NoGiveWay=lv1,AvoidanceRules=lv,SafetyTraining=lv,TrafficFlow=lvTraffic,Visibility=lvVisibility))
early.prob <- array(c(0.062845313,1-0.062845313,0.230625,1-0.230625,0.204375,1-0.204375,0.75,0.25,0.041896875,1-0.041896875,0.15375,1-0.15375,0.13625,1-0.13625,0.5,0.5,0.032586458,1-0.032586458,0.119583333,1-0.119583333,0.105972222,1-0.105972222,0.388888889,1-0.388888889,0.020948438,1-0.020948438,0.076875,1-0.076875,0.068125,1-0.068125,0.25,0.75),dim=c(2,2,2,2,2),dimnames=list(EarlyMeasures=lv1, CrewTraining=lv,AvoidanceRules=lv,AssessmentFailure=lv1,InadequateCommunication=lv1))
unsafe.prob <- array(c(rep(c(0.05,0.95),8),0.011265916,1-0.011265916,0.044180062,1-0.044180062,0.036637124,1-0.036637124,0.143674998,1-0.143674998,rep(c(0.05,0.95),12),0.052275,1-0.052275,0.205,1-0.205,0.17,1-0.17,0.666666667,1-0.666666667,0.029404688,1-0.029404688,0.1153125,1-0.1153125,0.095625,1-0.095625,0.375,1-0.375), dim=c(2,2,2,2,2,2),dimnames=list(UnsafeSpeed=lv1,QualifiedCrew=lv,AvoidanceRules=lv,AssessmentFailure=lv1,EquipmentFailure=lv1,Wind=lvWind))
collision.prob <- array(c(rep(c(0.95,0.05),6),0.33333,0.66667,0.05,0.95),dim=c(2,2,2,2),dimnames= list(Collision=lv1,EarlyMeasures=lv1,NoGiveWay=lv1,UnsafeSpeed=lv1))
sinking.prob <- array(c(0.95,0.05,0.95,0.05,0.95,0.05,0.2,0.8,0.95,0.05,0.95,0.05,0.05,0.95,0.05,0.95),dim=c(2,2,2,2),dimnames=list(Sinking=lv1,CompetentCrew=lv1,ImproperStowage=lv1,Wind=lvWind))
contact.prob <- array(c(0.2,0.8,0.1,0.9,0.11111,0.88889,0.05,0.95),dim=c(2,2,2),dimnames= list(Contact=lv1,AssessmentFailure=lv1,NegligentLookout=lv1))
col.prob <- array(c(0.19,0.02,0.79,0.071428571,0.214285714,0.714285714,0.01,0.01,0.98,0.26272727,0.02,0.71727273,0.02,0.49,0.49,0.01,0.01,0.98,0.29,0.02,0.69,0.19,0.02,0.79,0.01,0.01,0.98,0.01,0.01,0.98,0.01,0.01,0.98,0.01,0.98,0.01,0.323333,0.02,0.656667,0.98,0.01,0.01,rep(c(0.01,0.01,0.98),4),0.49,0.02,0.49,rep(c(0.01,0.01,0.98),8)), dim=c(3,3,3,3),dimnames = list(ConsequenceCollision = lv2, ShipAge=lvAge,GrossTonnage=lvTonnage,ShipType=lvType))
sink.prob <- array(c(rep(c(0.01,0.01,0.98),3),0.01,0.98,0.01,rep(c(0.01,0.01,0.98),23)), dim=c(3,3,3,3),dimnames = list(ConsequenceSinking = lv2, ShipAge=lvAge,GrossTonnage=lvTonnage,ShipType=lvType))
cont.prob <- array(c(rep(c(0.01,0.01,0.98),26),0.02,0.02,0.96), dim=c(3,3,3,3),dimnames = list(ConsequenceContact = lv2, ShipAge=lvAge,GrossTonnage=lvTonnage,ShipType=lvType))


prob <- list(TrafficFlow=traffic.prob, Wind=wind.prob,
             Visibility = visibility.prob, ShipType=type.prob,
             ShipAge=age.prob,GrossTonnage=tonnage.prob,
             AvoidanceRules= avoidance.prob, #RCM1
             QualifiedCrew = qualified.prob, #RCM2
             SupervisingCompanies = supervising.prob, # RCM3
             CrewTraining = crew.prob, # RCM4
             CautiousDriving= cautious.prob, # RCM5,
             SafetyTraining = safety.prob, #RCM6
             ResourceManagement = resource.prob, #RCM7
             ShipTracking = tracking.prob, #RCM12
             HardwareMaintenance= hardware.prob, #RCM14
             SupervisionVessel = supervision.prob, #RCM15
             EquipmentFailure = equipment.prob,
             ImproperStowage = improper.prob,
             CompetentCrew = competent.prob,
             NegligentLookout = negligent.prob,
             InadequateCommunication = communication.prob,
             AssessmentFailure = assessment.prob,
             NoGiveWay = way.prob,
             EarlyMeasures = early.prob,
             UnsafeSpeed = unsafe.prob,
             Collision = collision.prob,
             Sinking = sinking.prob,
             Contact = contact.prob,
             ConsequenceCollision = col.prob,
             ConsequenceSinking = sink.prob,
             ConsequenceContact = cont.prob
)

yangtze <- custom.fit(yangtze.dag,prob)

usethis::use_data(yangtze, overwrite = TRUE)
