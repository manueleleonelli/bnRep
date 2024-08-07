# An object-oriented Bayesian network model for the quantitative risk assessment of navigational accidents in ice-covered Arctic waters

library(bnlearn)

string1 <- "[Rain][Fog][StrongWind][SeaCurrent][IceType][SeaTemperature][AirTemperature][ChannelDepth][IceThickness|SeaTemperature][IceConcentration|SeaTemperature][IceStrength|IceType:IceThickness]"
string2 <- "[EnvironmentalObstacles][Visibility|Fog:Rain][DriftIce|StrongWind:SeaCurrent][WaterwayCondition|EnvironmentalObstacles:ChannelDepth][WeatherCondition|Visibility:AirTemperature:StrongWind][IceCondition|DriftIce:IceStrength:IceConcentration]"
string3 <- "[ShipType][GrossTonnage][RadarFailure][NavigatorFailure][PropellerFailure][SteeringFailure][CommunicationEquipmentFailure][PowerFailure|PropellerFailure:SteeringFailure][UnsafeSpeed|PowerFailure][AidNavigationFailure|NavigatorFailure:RadarFailure][MechanicalEquipmentFailure|PowerFailure:AidNavigationFailure:CommunicationEquipmentFailure]"
string4 <- "[Fatigue][Negligence][InadequateKnowledge][LackSafetyMeasures][ChartUpdating][LackSituationalAwareness|Fatigue][LackCommunication|CommunicationEquipmentFailure][JudgmentFailure|LackCommunication:LackSituationalAwareness:InadequateKnowledge][UnsafeAct|ChartUpdating:LackSafetyMeasures:Negligence:JudgmentFailure]"
string5 <- "[UnsafeCondition|UnsafeSpeed:MechanicalEquipmentFailure][P_Collision|WeatherCondition:IceCondition:UnsafeAct:UnsafeCondition][P_Grounding|WeatherCondition:WaterwayCondition:UnsafeAct:UnsafeCondition][P_BesettingInIce|WeatherCondition:IceCondition:UnsafeAct:UnsafeCondition][P_ShipIceCollision|WeatherCondition:IceCondition:UnsafeAct:UnsafeCondition]"
string6 <- "[C_Collision|GrossTonnage:ShipType][C_ShipIceCollision|GrossTonnage:ShipType][C_Grounding|GrossTonnage:ShipType][C_BesettingInIce|GrossTonnage:ShipType]"
arcticwaters.dag <- model2network(paste0(string1,string2,string3,string4,string5,string6))

l <- c("Significant","Severe","Catastrophic")
lvShip <- c("Oil Tanker","General Cargo Ship","Passenger Ship","Icebreaker","Others")
lvTonnage <- c("(0,500]", "(500,3000]","(3000,10000]", "> 10000")
lv <- c("No","Yes")
lvType <- c("Thin Ice","Medium Ice", "Old Ice")
lv1 <- c("Inadequate","Adequate")
lvTemp <- c("<0",">0")
lvThick <- c("< 0.5m","> 0.5 m")
lvConcentration <- c("<3/10","4/10~6/10",">7/10")
lv2 <- c("Low","Medium","High")
lv3 <- c("Poor","Good")

rain.prob <- array(c(0.93,0.07),dim=2,dimnames=list(Rain=lv))
fog.prob <- array(c(0.96,0.04),dim=2,dimnames=list(Fog=lv))
wind.prob <- array(c(0.79,0.21),dim=2,dimnames=list(StrongWind=lv))
current.prob <- array(c(0.96,0.04),dim=2,dimnames=list(SeaCurrent=lv))
obstacles.prob <- array(c(0.96,0.04),dim=2,dimnames=list(EnvironmentalObstacles=lv))
depth.prob <- array(c(0.02837,0.97163),dim=2,dimnames=list(ChannelDepth=lv1))
airtemp.prob <- array(c(0.29,0.71),dim=2,dimnames=list(AirTemperature=lvTemp))
seatemp.prob <- array(c(0.42,0.58),dim=2,dimnames=list(SeaTemperature=lvTemp))
type.prob <- array(c(0.1,0.8,0.1),dim=3,dimnames=list(IceType=lvType))
thick.prob <- array(c(0.74,0.26,0.95,0.05),dim=c(2,2),dimnames=list(IceThickness=lvThick,SeaTemperature=lvTemp))
concentration.prob <- array(c(0.87,0.09,0.04,1,0,0),dim=c(3,2),dimnames=list(IceConcentration=lvConcentration,SeaTemperature=lvTemp))
strength.prob <- array(c(0.9,0.1,0,0.6,0.3,0.1,0.1,0.3,0.6,0.6,0.3,0.1,0.1,0.3,0.6,0,0.1,0.9),dim=c(3,3,2),dimnames=list(IceStrength=lv2,IceType=lvType,IceThickness=lvThick))
visibility.prob <- array(c(0.08,0.92,0.8,0.2,0.7,0.3,0.95,0.05),dim=c(2,2,2),dimnames=list(Visibility=lv3,Fog=lv,Rain=lv))
drift.prob <- array(c(0.99738,0.00262,0.9,0.1,0.8,0.2,0.6,0.4),dim=c(2,2,2),dimnames=list(DriftIce=lv,StrongWind=lv,SeaCurrent=lv))
waterway.prob <- array(c(0.9,0.1,1,0,0,1,0.7,0.3),dim=c(2,2,2),dimnames=list(WaterwayCondition=lv3,EnvironmentalObstacles=lv,ChannelDepth=lv1))
weather.prob <- array(c(0.75,0.25,0.2,0.8,0.6,0.4,0.05,0.95,0.8,0.2,0.15,0.85,0.7,0.3,0.1,0.9),dim=c(2,2,2,2),dimnames=list(WeatherCondition=lv3,Visibility=lv3,AirTemperature=lvTemp,StrongWind=lv))
condition.prob <- array(c(0.05,0.95,0.15,0.85,0.1,0.9,0.25,0.75,0.3,0.7,0.4,0.6,0.3,0.7,0.4,0.6,0.5,0.5,0.6,0.4,0.7,0.3,0.75,0.25,0.7,0.3,0.85,0.15,0.8,0.2,0.9,0.1,0.95,0.05,1,0),dim=c(2,2,3,3),dimnames=list(IceCondition=lv3,DriftIce=lv,IceStrength=lv2,IceConcentration=lvConcentration))
ship.prob <- array(c(0.06,0.28,0.38,0.03,0.25),dim=5,dimnames=list(ShipType=lvShip))
tonnage.prob <- array(c(0.17,0.41,0.23,0.19),dim=4,dimnames=list(GrossTonnage=lvTonnage))
radar.prob <- array(c(0.9996632,1-0.9996632),dim=2,dimnames=list(RadarFailure=lv))
navigator.prob <- array(c(0.99995604,1-0.99995604),dim=2,dimnames=list(NavigatorFailure=lv))
propeller.prob <- array(c(0.9997128,1-0.9997128),dim=2,dimnames=list(PropellerFailure=lv))
steering.prob <- array(c(0.99986,1-0.99986),dim=2,dimnames=list(SteeringFailure=lv))
communication.prob <- array(c(0.99934,1-0.99934),dim=2,dimnames=list(CommunicationEquipmentFailure=lv))
power.prob <- array(c(1,0,0.1,0.9,0.1,0.9,0,1),dim=c(2,2,2),dimnames=list(PowerFailure=lv,PropellerFailure=lv,SteeringFailure=lv))
speed.prob <- array(c(0.6,0.4,0.1,0.9),dim=c(2,2),dimnames=list(UnsafeSpeed=lv,PowerFailure=lv))
aid.prob <- array(c(1,0,0.1,0.9,0.1,0.9,0,1),dim=c(2,2,2),dimnames=list(AidNavigationFailure=lv,NavigatorFailure=lv,RadarFailure=lv))
mechanical.prob <- array(c(1,0,0.1,0.9,0.1,0.9,0.05,0.95,0.1,0.9,0.05,0.95,0.05,0.95,0,1),dim=c(2,2,2,2),dimnames=list(MechanicalEquipmentFailure=lv,PowerFailure=lv,AidNavigationFailure=lv,CommunicationEquipmentFailure=lv))
meas.prob <- array(c(0.75,0.25),dim=2,dimnames=list(LackSafetyMeasures=lv))
chart.prob <- array(c(0.82,0.18),dim=2,dimnames=list(ChartUpdating=lv))
fatigue.prob <- array(c(0.96,0.04),dim=2,dimnames=list(Fatigue=lv))
negligence.prob <- array(c(0.96,0.04),dim=2,dimnames=list(Negligence=lv))
knowledge.prob <- array(c(0.86,0.14),dim=2,dimnames=list(InadequateKnowledge=lv))
commu.prob <- array(c(0.82,0.18,0.10,0.9),dim=c(2,2),dimnames=list(LackCommunication=lv,CommunicationEquipmentFailure=lv))
awareness.prob <- array(c(0.7,0.3,0.1,0.9),dim=c(2,2),dimnames=list(LackSituationalAwareness=lv,Fatigue=lv))
judgment.prob <- array(c(0.875,0.125,0.8,0.2,0.75,0.25,0.67,0.33,0.6,0.4,0.1,0.9,0.2,0.8,0.05,0.95),dim=c(2,2,2,2),dimnames=list(JudgmentFailure=lv,LackCommunication=lv,LackSituationalAwareness=lv,InadequateKnowledge=lv))
unsafe.prob <- array(c(1,0,0.3,0.7,0.3,0.7,0.2,0.8,0.3,0.7,0.2,0.8,0.2,0.8,0.1,0.9,0.3,0.7,0.2,0.8,0.2,0.8,0.1,0.9,0.2,0.8,0.1,0.9,0.01,0.99,0,1),dim=rep(2,5),dimnames=list(UnsafeAct=lv,ChartUpdating=lv,LackSafetyMeasures=lv,Negligence=lv,JudgmentFailure=lv))
unsafe1.prob <- array(c(0.9,0.1,0.2,0.8,0.2,0.8,0.1,0.9),dim=c(2,2,2),dimnames=list(UnsafeCondition=lv,UnsafeSpeed=lv,MechanicalEquipmentFailure=lv))
pcoll.prob <- array(c(0.975,0.025,0.986,0.014,0.99,0.01,1,0,0.963,0.037,0.973,0.027,0.973,0.027,0.983,0.017,0.965,0.035,0.975,0.025,0.975,0.025,0.985,0.015,0.950276243,1-0.950276243,0.96,0.04,0.96,0.04,0.97,0.03),dim=c(2,2,2,2,2),dimnames = list(P_Collision=lv,WeatherCondition=lv3,IceCondition=lv3,UnsafeAct=lv,UnsafeCondition=lv))
pground.prob <- array(c(0.85,0.15,0.91,0.09,0.88,0.12,1,0,0.81,0.19,0.85,0.15,0.845,0.155,0.885,0.115,0.82,0.18,0.86,0.14,0.855,0.145,0.895,0.105,0.773480663,1-0.773480663,0.83,0.17,0.84,0.16,0.9,0.1),dim=c(2,2,2,2,2),dimnames = list(P_Grounding=lv,WeatherCondition=lv3,WaterwayCondition=lv3,UnsafeAct=lv,UnsafeCondition=lv))
pbes.prob <- array(c(0.95,0.05,0.97,0.03,0.999,0.001,1,0,0.9,0.1,0.95,0.05,0.99,0.01,0.995,0.005,0.85,0.15,0.9,0.1,0.96,0.04,0.98,0.02,0.8,0.2,0.82,0.18,0.95,0.05,0.97,0.03),dim=c(2,2,2,2,2),dimnames=list(P_BesettingInIce=lv,WeatherCondition=lv3,IceCondition=lv3,UnsafeAct=lv,UnsafeCondition=lv))
pcol.prob <- array(c(0.95,0.05,0.98,0.02,0.999,0.001,1,0,0.94,0.06,0.94,0.06,0.996,0.004,0.998,0.002,0.92,0.08,0.93,0.07,0.992,0.008,0.995,0.005,0.9,0.1,0.91,0.09,0.99,0.01,0.994,0.006),dim=c(2,2,2,2,2),dimnames=list(P_ShipIceCollision=lv,WeatherCondition=lv3,IceCondition=lv3,UnsafeAct=lv,UnsafeCondition=lv))
ccoll.prob  <- array(c(0.835,0.15,0.015,0.857,0.13,0.013,0.889,0.1,0.011,0.982,0.008,0.01,0.82,0.15,0.03,0.845,0.13,0.025,0.87,0.11,0.02,0.905,0.08,0.015,0.966,0.02,0.014,0.973,0.015,0.012,0.977,0.013,0.01,0.982,0.01,0.008,0.79,0.2,0.01,0.842,0.15,0.008,0.894,0.1,0.006,0.946,0.05,0.004,0.79,0.2,0.01,0.842,0.15,0.008,0.894,0.1,0.006,0.946,0.05,0.004),dim=c(3,4,5),dimnames=list(C_Collision=l,GrossTonnage=lvTonnage,ShipType=lvShip))
cground.prob <- array(c(0.835,0.15,0.015,0.857,0.13,0.013,0.889,0.1,0.011,0.91,0.08,0.01,0.4/1.31,0.6/1.31,0.31/1.31,0.538461538/1.29,0.461538462/1.29,0.29/1.29,0.333333333/1.27,0.666666667/1.27,0.27/1.27,0.25,0.5,0.25,0.667,0.333,0,0.428571429,1-0.428571429,0,0.5,0.5,0,0.667,0.333,0,0.8,0.2,0,0.85,0.15,0,0.9,0.1,0,0.95,0.05,0,0.64,0.35,0.01,0.706285714,0.285714286,0.008,0.744,0.25,0.006,0.796,0.2,0.004),dim=c(3,4,5),dimnames=list(C_Grounding=l,GrossTonnage=lvTonnage,ShipType=lvShip))
cbes.prob <- array(c(0.835,0.15,0.015,0.857,0.13,0.013,0.889,0.1,0.011,0.91,0.08,0.01,0.89,0.1,0.01,0.92,0.07,0.01,0.95,0.04,0.01,0.98,0.01,0.01,0.97,0.02,0.01,0.975,0.015,0.01,0.977,0.013,0.01,0.98,0.01,0.01,0.98,0.02,0,0.985,0.015,0,0.99,0.01,0,0.995,0.005,0,0.89,0.1,0.01,0.92,0.07,0.01,0.95,0.04,0.01,0.98,0.01,0.01),dim=c(3,4,5),dimnames=list(C_BesettingInIce=l,GrossTonnage=lvTonnage,ShipType=lvShip))
ccol.prob <- array(c(0.835,0.15,0.015,0.857,0.13,0.013,0.889,0.1,0.011,0.91,0.08,0.01,0.82,0.15,0.03,0.845,0.13,0.025,0.87,0.11,0.02,0.905,0.08,0.015,0.966,0.02,0.014,0.973,0.015,0.012,0.977,0.013,0.01,0.982,0.01,0.008,0.98,0.02,0,0.985,0.015,0,0.99,0.01,0,0.995,0.005,0,0.886,0.1,0.014,0.917,0.07,0.013,0.948,0.04,0.012,0.979,0.01,0.011),dim=c(3,4,5),dimnames=list(C_ShipIceCollision=l,GrossTonnage=lvTonnage,ShipType=lvShip))

probs <- list(Rain=rain.prob,Fog=fog.prob,StrongWind=wind.prob,SeaCurrent=current.prob,IceType=type.prob,SeaTemperature=seatemp.prob,AirTemperature=airtemp.prob,ChannelDepth=depth.prob,
              EnvironmentalObstacles=obstacles.prob,IceThickness=thick.prob,IceConcentration=concentration.prob,IceStrength=strength.prob,Visibility=visibility.prob,DriftIce=drift.prob,
              WaterwayCondition=waterway.prob,WeatherCondition=weather.prob,IceCondition=condition.prob,ShipType=ship.prob,GrossTonnage=tonnage.prob,RadarFailure=radar.prob,NavigatorFailure=navigator.prob,PropellerFailure=propeller.prob,
              SteeringFailure=steering.prob,CommunicationEquipmentFailure=communication.prob,PowerFailure=power.prob,UnsafeSpeed=speed.prob,AidNavigationFailure=aid.prob,MechanicalEquipmentFailure=mechanical.prob,
              Fatigue=fatigue.prob,Negligence=negligence.prob,InadequateKnowledge=knowledge.prob,LackSafetyMeasures=meas.prob,ChartUpdating=chart.prob,LackSituationalAwareness=awareness.prob,LackCommunication=commu.prob,JudgmentFailure=judgment.prob,
              UnsafeAct=unsafe.prob,UnsafeCondition=unsafe1.prob,P_Collision=pcoll.prob,P_Grounding=pground.prob,P_BesettingInIce=pbes.prob,P_ShipIceCollision=pcol.prob,
              C_ShipIceCollision = ccol.prob,C_BesettingInIce=cbes.prob,C_Grounding=cground.prob,C_Collision=ccoll.prob)

arcticwaters <- custom.fit(arcticwaters.dag,probs)

usethis::use_data(arcticwaters, overwrite = TRUE)

