
library(bnlearn)

dag <- model2network("[AccidentType][Information|AccidentType][ErgonomicDesign|AccidentType][EquipmentDevice|AccidentType][VesselCondition|AccidentType][ShipSpeed|AccidentType][FairwayTraffic|AccidentType][TimeOfDay|AccidentType][SeaCondition|AccidentType][WeatherCondition|AccidentType][VoyageSegment|AccidentType][ShipOperation|AccidentType][Length|AccidentType][GrossTonnage|AccidentType][ShipAge|AccidentType][HullType|AccidentType][ShipType|AccidentType]")

lv <-c("Collision","Grounding","Flooding","Fire/Explosion","Capsize","Contact/Crush","Sinking","Overboard","Others")

AccidentType <- array(round(c(0.203,0.212,0.0369,0.0553,0.111,0.106,0.0415,0.0922,0.143)/sum(c(0.203,0.212,0.0369,0.0553,0.111,0.106,0.0415,0.0922,0.143)),3),9,list(AccidentType=lv))
EquipmentDevice  <- array(c(64.4445,35.5556,48.9362,51.0638,66.6667,33.3333,69.2308,30.7692,60,40,62.5,37.5,30,70,80.9524,19.0476,65.6250,34.3750)*0.01,c(2,9),list(EquipmentDevice=c("Devices and equipment on board operate correctly","Devices and equipment not fully utilised or operated correctly"),AccidentType=lv))
ErgonomicDesign<- array(c(71.1111,28.8889,85.1064,14.8936,88.8889,11.1111,92.3077,7.6923,96,4,75,25,90,10,95.2381,4.7619,96.8750,3.1250)*0.01,c(2,9),list(ErgonomicDesign=c("Ergonomic friendly","Ergonomic impact of innovative bridge design"),AccidentType=lv))
FairwayTraffic<- array(c(66.6667,33.3333,74.4681,25.5319,66.6667,33.3333,92.3077,7.6923,92,8,79.1667,20.8333,90,10,95.2381,4.7619,90.6250,9.3750)*0.01,c(2,9),list(FairwayTraffic=c("Good","Poor"),AccidentType=lv))
GrossTonnage<- array(c(36.1702, 23.4043, 29.7872, 10.6383,18.3674, 48.9796, 28.5714, 4.0816,36.3636, 18.1818, 36.3636, 9.0909,46.6667, 26.6667, 20.0000, 6.6667,62.9630, 18.5185 ,7.4074, 11.1111,19.2308, 38.4615, 38.4615, 3.8462,75.0000, 25/3, 25/3,25/3,52.1739,26.0870, 13.0435 ,8.6957,38.2353, 29.4118, 20.5882, 11.7647 )*0.01,c(4,9),list(GrossTonnage=c("Less than 300", "300-1000","More than 1000","NA"),AccidentType=lv))
HullType<- array(c(72.3404, 10.6383 ,8.5106, 8.5106,
                   81.6327, 6.1225 ,4.0816 ,8.1633,
                   45.4545, 27.2727, 9.0909, 18.1818,
                   53.3333, 33.3333, 6.6667, 6.6667,
                   59.2593, 7.4074 ,11.1111, 22.2222,
                   76.9231, 7.6923 ,7.6923 ,7.6923,
                   41.6667, 25.0000 ,8.3333, 25.0000,
                   52.1739, 4.3478 ,4.3478, 39.1304,
                   67.6471, 2.9412, 5.8824 ,23.5294)*0.01,c(4,9),list(HullType=c("Steel","Wood","Aluminium","Others"),AccidentType=lv))
Information<- array(c(64.4445, 35.5556,
                      31.9149, 68.0851,
                      33.3333, 66.6667,
                      69.2308, 30.7692,
                      68.0000, 32.0000,
                      25.0000, 75.0000,
                      60.0000, 40.0000,
                      71.4286, 28.5714,
                      68.7500 ,31.2500)*0.01,c(2,9),list(Information=c("Effective and updated information provided","Insufficient or lack of updated information"),AccidentType=lv))
Length<- array(c(58.6957, 34.7826, 6.5217,
                 60.4167, 37.5000, 2.0833,
                 50.0000, 40.0000, 10.0000,
                 71.4286, 21.4286, 7.1429,
                 84.6154, 7.6923 ,7.6923,
                 52.0000, 44.0000, 4.0000,
                 81.8182, 9.0909 ,9.0909,
                 77.2727, 18.1818, 4.5455,
                 63.6364, 30.3030, 6.0606)*0.01,c(3,9),list(Length=c("Less than 100","More than 100","NA"),AccidentType=lv))
SeaCondition<- array(c(55.5556, 44.4444,
                       31.9149, 68.0851,
                       66.6667, 33.3333,
                       61.5385, 38.4615,
                       24.0000, 76.0000,
                       54.1667, 45.8333,
                       40.0000, 60.0000,
                       47.6191, 52.3810,
                       59.3750, 40.6250)*0.01,c(2,9),list(SeaCondition=c("Good","Poor"),AccidentType=lv))
ShipAge<- array(c(18.3674, 16.3265, 8.1633, 8.1633, 26.5306, 22.4490,
                  13.7255, 13.7255, 11.7647, 11.7647, 45.0980, 3.9216,
                  15.3846, 7.6923, 23.0769, 7.6923, 38.4615, 7.6923,
                  11.7647, 11.7647, 17.6471, 5.8824, 35.2941, 17.6471,
                  17.2414, 10.3448, 10.3448, 13.7931, 34.4828, 13.7931,
                  21.4286, 10.7143, 10.7143, 14.2857, 21.4286, 21.4286,
                  7.1429, 14.2857, 21.4286, 7.1429, 35.7143, 14.2857,
                  12.0000, 12.0000, 12.0000, 16.0000, 24.0000, 24.0000,
                  13.8889, 19.4444, 5.5556 ,11.1111, 36.1111, 13.8889)*0.01,c(6,9),list(ShipAge=c("(0,5]","[6,10]","[11,15]","[16-20]","More than 20","NA"),AccidentType=lv))
ShipOperation<- array(c(1.9608, 1.9608, 1.9608, 5.8824, 5.8824, 1.9608 ,78.4314, 1.9608,
                        18.8679, 1.8868, 18.8679, 11.3207, 1.8868, 5.6604, 39.6226, 1.8868,
                        6.6667, 6.6667, 13.3333, 6.6667, 20.0000, 6.6667, 33.3333, 6.6667,
                        5.2632, 10.5263, 5.2632, 5.2632, 5.2632, 10.5263, 52.6316, 5.2632,
                        29.0323, 3.2258, 3.2258, 16.1290, 22.5806, 3.2258, 16.1290, 6.4516,
                        10.0000, 6.6667, 13.3333, 16.6667, 6.6667, 6.6667, 33.3333, 6.6667,
                        18.7500, 6.2500, 6.2500, 6.2500, 6.2500 ,12.5000, 37.5000, 6.2500,
                        7.4074, 7.4074, 7.4074, 11.1111, 37.0370, 3.7037, 22.2222, 3.7037,
                        18.4210, 21.0526, 7.8947, 13.1579, 10.5263, 7.8947, 18.4210 ,2.6316)*0.01,c(8,9),list(ShipOperation=c("Towing","Loading/Unloading","Pilotage","Manoeuvring","Fishing","At anchor","On passage","Others"),AccidentType=lv))
ShipSpeed<- array(c(80.0000, 20.0000,
                    89.3617, 10.6383,
                    88.8889, 11.1111,
                    92.3077, 7.6923,
                    92.0000, 8.0000,
                    70.8333, 29.1667,
                    90.0000, 10.0000,
                    95.2381, 4.7619,
                    93.7500 ,6.2500)*0.01,c(2,9),list(ShipSpeed=c("Normal","Fast"),AccidentType=lv))
ShipType<- array(c(7.5472, 11.3207, 3.7736, 13.2076, 5.6604, 9.4340, 5.6604, 7.5472 ,15.0943, 20.7547,
                   18.1818, 7.2727, 7.2727, 10.9091, 9.0909, 9.0909, 3.6364, 7.2727 ,21.8182 ,5.4546,
                   5.8824, 5.8824, 5.8824, 23.5294, 5.8824, 11.7647, 11.7647, 11.7647, 11.7647, 5.8824,
                   9.5238, 9.5238, 4.7619, 23.8095, 4.7619, 4.7619, 9.5238, 4.7619 ,19.0476 ,9.5238,
                   6.0606, 18.1818, 9.0909, 30.3030, 6.0606, 6.0606, 3.0303, 6.0606, 3.0303, 12.1212,
                   12.5000, 6.2500, 3.1250, 12.5000 ,3.1250, 12.5000, 12.5000, 12.5000, 12.5000, 12.5000,
                   11.1111, 11.1111, 16.6667, 22.2222, 5.5556, 5.5556, 5.5556, 5.5556, 5.5556, 11.1111,
                   10.3448, 6.8966, 3.4483, 41.3793, 6.8966, 3.4483, 3.4483, 3.4483, 10.3448, 10.3448,
                   17.5000, 12.5000, 10.0000, 12.5000, 2.5000, 12.5000, 2.5000 ,2.5000, 15.0000, 12.5000)*0.01,c(10,9),list(ShipType=c("Passenger vessel","Tug","Barge","Fishing vessel","Container ship","Bulk carrier","RORO","Tanker or chemical ship","Cargo ship","Others"),AccidentType=lv))
TimeOfDay<- array(c(42.2222, 57.7778,
                    51.0638, 48.9362,
                    55.5556, 44.4444,
                    53.8462, 46.1538,
                    60.0000, 40.0000,
                    58.3333, 41.6667,
                    70.0000, 30.0000,
                    52.3810, 47.6191,
                    65.6250, 34.3750)*0.01,c(2,9),list(TimeOfDay=c("7am to 7pm","Other"),AccidentType=lv))
VesselCondition<- array(c(84.4445, 15.5556,
                          68.0851, 31.9149,
                          77.7778, 22.2222,
                          53.8462, 46.1538,
                          60.0000, 40.0000,
                          79.1667, 20.8333,
                          20.0000, 80.0000,
                          80.9524, 19.0476,
                          62.5000, 37.5000)*0.01,c(2,9),list(VesselCondition=c("Good","Poor"),AccidentType=lv))
VoyageSegment<- array(c(2.0408, 12.2449 ,2.0408, 51.0204, 30.6123, 2.0408,
                        1.9608, 15.6863 ,29.4118, 39.2157, 11.7647, 1.9608,
                        7.6923, 7.6923 ,7.6923, 46.1538, 23.0769, 7.6923,
                        5.8824, 5.8824, 17.6471, 52.9412, 11.7647, 5.8824,
                        13.7931, 17.2414, 3.4483, 44.8276, 17.2414, 3.4483,
                        7.1429, 10.7143, 42.8571, 10.7143, 14.2857, 14.2857,
                        7.1429, 7.1429, 21.4286, 28.5714, 28.5714, 7.1429,
                        8.0000 ,4.0000, 8.0000, 60.0000, 8.0000, 12.0000,
                        19.4444 ,5.5556, 22.2222, 36.1111 ,13.8889, 2.7778)*0.01,c(6,9),list(VoyageSegment=c("In port","Departure","Arrival","Mid-water","Transit","Others"),AccidentType=lv))
WeatherCondition<- array(c(66.6667, 33.3333,
                           46.8085, 53.1915,
                           44.4444, 55.5556,
                           61.5385, 38.4615,
                           60.0000, 40.0000,
                           62.5000, 37.5000,
                           60.0000, 40.0000,
                           66.6667, 33.3333,
                           65.6250, 34.3750)*0.01,c(2,9),list(WeatherCondition=c("Good","Poor"),AccidentType=lv))

accidents <- custom.fit(dag,list(
  AccidentType=AccidentType,
  EquipmentDevice=EquipmentDevice,
  ErgonomicDesign=ErgonomicDesign,
  FairwayTraffic=FairwayTraffic,
  GrossTonnage=GrossTonnage,WeatherCondition=WeatherCondition,
  HullType=HullType,VesselCondition=VesselCondition,VoyageSegment=VoyageSegment,
  Information=Information,ShipSpeed=ShipSpeed,ShipType=ShipType,TimeOfDay=TimeOfDay,
  Length=Length,SeaCondition=SeaCondition,ShipAge=ShipAge,ShipOperation=ShipOperation
))


usethis::use_data(accidents, overwrite = TRUE)
