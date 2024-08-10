# Online risk modeling of autonomous marine systems: Case study of autonomous operations under sea ice

library(bnlearn)

string1 <- "[Copy_of_Salvage|Copy_of_Research_vessel_effectiveness:Copy_of_Operator_effectiveness][Time_left_to_salvage_the_vehicle_if_it_losts][Copy_of_Environmental_constraint|Ice_concentration:Ice_thickness][Ice_concentration][Copy_of_Operator_effectiveness|Copy_of_Weather_condition:Difficulty_of_AUV_salvage][Difficulty_of_AUV_salvage|Difficulty_of_salvage_operation:Difficulty_to_pinpoint_the_vehicle][Difficulty_to_pinpoint_the_vehicle|Tool_effectiveness:Copy_of_Training_level:Dist_to_home][Dist_to_home][Difficulty_of_salvage_operation|Ice_thickness:Tool_effectiveness:Copy_of_Training_level][Copy_of_Weather_condition|Visibility:Copy_of_Strong_wind:Copy_of_Air_temperature][Tool_effectiveness][Ice_thickness][Copy_of_Training_level][Visibility][Copy_of_Air_temperature][Copy_of_Strong_wind][Copy_of_RIF2Waypoint|Copy_of_Flawed_algorithm][RIF3Inaccurate|UCA5_P_1][Altitude_of_AUV][Steering_system_fails_to_provide_necessary_motion|Fins:Power_system][Copy_of_SoftwareFailure|Copy_of_Control_algorith_is_flawed][Copy_of_Control_algorith_is_flawed][Current_speed][Environmental_complexity|Current_speed][Power_capacity][Power_system|Power_capacity][Flawed_algorithm_of_waypoint_generation][Reliability_of_acoustic_module_in_AUV][Ice_Ruggnes][Ice_Environment|Ice_Ruggnes:Depth_of_AUV][Water_Environment][Multipath_From_Ice|Water_Environment:Ice_Environment][Failure_of_ADCP_DVL][RIF4|Failure_of_ADCP_DVL][Range_to_buoy][GNSS_accuracy][Reliability_GPS_Module][UCA18_P_1|GNSS_accuracy:Reliability_GPS_Module][Acoustic_Link_Quality_buoy|SIL_commu:RSSI_commu]"
string2 <- "[RIF3Collision|Altitude_of_AUV:Depth_of_AUV:Speed_of_AUV][Reliability_of_the_propulsion_system][Speed_of_AUV][Depth_of_AUV][Failure_of_CTD_sensor][Failure_of_IMU_module][RIF3|Failure_of_CTD_sensor:Failure_of_ADCP_DVL:Failure_of_IMU_module][Control_algorith_is_flawed][Improper_handling_of_navigation_errors][SoftwareFailure|Control_algorith_is_flawed:Improper_handling_of_navigation_errors][SIL_commu][RSSI_commu][ReliabilityAcousticNavigation]"
string3 <- "[Failure_of_temperature_sensor|UCA18_N_1:UCA18_P_1][UCA18_N_1|Acoustic_Link_Quality_buoy:ReliabilityAcousticNavigation:Reliability_of_acoustic_module_in_AUV:Range_to_buoy:Multipath_From_Ice][Position_Measurement_Quality|UCA18_P_1:UCA18_N_1][SIL_ranging][RSSI_ranging][Acoustic_Link_Quality|SIL_ranging:RSSI_ranging]"
string4 <- "[UCA6_N_3|InaccurateWaypoint:Copy_RIF5:Copy_of_RIF2Waypoint][Copy_of_Flawed_algorithm][Copy_RIF5|Steering_system_fails_to_provide_necessary_motion:RIF3Collision:Environmental_complexity][InaccurateWaypoint|Failure_of_ADCP_DVL][UCA6_N_2|RIF2Waypoint:Copy_of_SoftwareFailure:RIF3Inaccurate:RIF5][RIF5|Steering_system_fails_to_provide_necessary_motion:Environmental_complexity][Fins][RIF2Waypoint|Flawed_algorithm_of_waypoint_generation:Failure_of_temperature_sensor][UCA6_N_1|Copy_2_SoftwareFailure:RIF2Propulsion][RIF2Propulsion|Propulsion_system_fails_to_provide_necessary_motion:Environmental_complexity][Propulsion_system_fails_to_provide_necessary_motion|Reliability_of_the_propulsion_system:Power_system][Copy_2_SoftwareFailure|Copy_2_of_Control_algorith_is_flawed][Copy_2_of_Control_algorith_is_flawed][UCA17_P_1|Acoustic_Link_Quality:Range_to_buoy:Multipath_From_Ice][UCA17_N_1|Acoustic_Link_Quality:ReliabilityAcousticNavigation:Reliability_of_acoustic_module_in_AUV:Range_to_buoy][RIF_Range_Quality|UCA17_P_1:UCA17_N_1][UCA5_P_1|SoftwareFailure:Position_Measurement_Quality:RIF3:RIF4]"
string5 <- "[Loss_of_AUV|H1:H2:H7:H5][Loss_of_mission|H7:H6:H5:H1][H7|Copy_of_Salvage][Copy_of_Research_vessel_effectiveness|Copy_of_Environmental_constraint:Vessel_constraint][Vessel_constraint|Time_left_to_salvage_the_vehicle_if_it_losts][H5|UCA6_N_2][H6|UCA6_N_2:UCA6_N_3:UCA6_N_1][H1|UCA6_N_2:UCA6_N_3:UCA6_N_1][H2|UCA6_N_2:UCA6_N_3:UCA6_N_1]"
onlinerisk.dag <- model2network(paste0(string1,string2,string3,string4,string5))

lvRel <- c("Reliable","Failure")
lv <- c("High","Medium","Low")
lv1 <- c("Good","Poor")
lv2 <- c("Good","Medium","Poor")
lv3 <- c("Acceptable","Unacceptable")
lv4 <- c("Yes","No")

Rel.prob <- array(c(0.9938,0.006199999999999984),dim=2,dimnames=list(Reliability_of_acoustic_module_in_AUV=lvRel))
speed.prob <- array(c(0.49,0.5,0.01),dim=3,dimnames=list(Speed_of_AUV=lv))
depth.prob <- array(c(0.001,0.3333,0.6657),dim=3,dimnames=list(Depth_of_AUV=lv))
rug.prob <- array(c(0.001,0.001,0.998),dim=3, dimnames=list(Ice_Ruggnes=lv))
envir.prob <- array(c(0.4, 0.6, 0.3, 0.7, 0.1, 0.9, 0.7, 0.3, 0.65, 0.35, 0.3, 0.7, 0.999, 0.00100, 0.85, 0.15, 0.7, 0.3),dim=c(2,3,3),dimnames=list(Ice_Environment=lv1,Ice_Ruggnes=lv,Depth_of_AUV=lv))
water.prob <- array(c(0.9,0.1),dim=2,dimnames=list(Water_Environment=lv1))
multipath.prob <- array(c(0.999, 0.001, 0 ,0.2, 0.75, 0.05, 0.2, 0.75, 0.05, 0, 0, 1),dim=c(3,2,2),dimnames=list(Multipath_From_Ice=lv2,Water_Environment=lv1,Ice_Environment=lv1))
fai.prob <- array(c(0.9968,1-0.9968),dim=2,dimnames=list(Failure_of_ADCP_DVL=lv3))
rif4.prob <- array(c(0,1,1,0),c(2,2),dimnames=list(RIF4=lv4,Failure_of_ADCP_DVL=lv3))
ctd.prob <- array(c(0.9995,1-0.9995),dim=2,dimnames=list(Failure_of_CTD_sensor=lv3))
imu.prob <- array(c(0.9999,1-0.9999),dim=2,dimnames=list(Failure_of_IMU_module=lv3))
rif3.prob <- array(c(0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0),dim=rep(2,4),dimnames=list(RIF3=lv4,Failure_of_CTD_sensor=lv3, Failure_of_ADCP_DVL=lv3, Failure_of_IMU_module=lv3))
flawed.prob <- array(c(1,0),dim=2,dimnames=list(Control_algorith_is_flawed=lv3))
err.prob <- array(c(0,1),2,list(Improper_handling_of_navigation_errors=lv4))
soft.prob <- array(c(1, 0, 0, 1, 1, 0, 1, 0),dim=c(2,2,2),list(SoftwareFailure=lv4,Control_algorith_is_flawed=lv3,Improper_handling_of_navigation_errors=lv4))
buoy.prob <- array(c(0.1,0.2,0.7),3,list(Range_to_buoy=c("Long","Medium","Close")))
gnss.prob <-array(c(0.999,0.001),2,list(GNSS_accuracy=lv3))
gps.prob <- array(c(0.999,0.001),2,list(Reliability_GPS_Module=c("Reliable","Failure")))
sil.prob <- array(c(0.99,0.01),2,list(SIL_commu=lv3))
rssi.prob <- array(c(0.99,0.01),2,list(RSSI_commu=lv3))
uca18.prob <- array(c(0, 1, 1, 0, 1, 0, 1, 0),dim=c(2,2,2),list(UCA18_P_1=lv4,GNSS_accuracy=lv3,Reliability_GPS_Module=c("Reliable","Failure")))
link.prob <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(Acoustic_Link_Quality_buoy=lv3,SIL_commu=lv3,RSSI_commu=lv3))
ac.prob <- array(c(0.999,0.001),2,list(ReliabilityAcousticNavigation=c("Reliable","Failure")))
uca.prob <- array(c(0.1, 0.9, 0.2, 0.8, 0.45, 0.55, 0.005, 0.995, 0.01, 0.99, 0.02, 0.98, 0.001, 0.999 ,0.002, 0.998, 0.005, 0.995, 1, 0, 1, 0, 1, 0, 1, 0, 1 ,0 ,1 ,0, 1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1, 0, 1 ,0, 1, 0 ,1 ,0 ,1, 0, 1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0, 1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0), c(2,2,2,2,3,3),list(UCA18_N_1=lv4,Acoustic_Link_Quality_buoy=lv3,ReliabilityAcousticNavigation=c("Reliable","Failure"),Reliability_of_acoustic_module_in_AUV= lvRel,Range_to_buoy= c("Long","Medium","Close"),Multipath_From_Ice=lv2))
posqua.prob <- array(c(1, 0, 1, 0 ,1, 0, 0, 1),dim=c(2,2,2),list(Position_Measurement_Quality=lv4,UCA18_P_1=lv4,UCA18_N_1=lv4))
rang.prob <- array(c(0.99,0.01),2,list(SIL_ranging=lv3))
rang1.prob <- array(c(0.99,0.01),2,list(RSSI_ranging=lv3))
ququ.prob <- array(c(1, 0 ,0 ,1 ,0 ,1 ,0, 1),c(2,2,2),list(Acoustic_Link_Quality=lv3,SIL_ranging=lv3,RSSI_ranging=lv3))
uca17p.prob <- array(c(0.45, 0.55, 0.7, 0.3, 1 ,0 ,0.05, 0.95, 0.1, 0.9, 0.2 ,0.8 ,0 ,1 ,0.001, 0.999, 0.005, 0.995, 1, 0, 1, 0, 1 ,0 ,1 ,0, 1 ,0 ,1 ,0, 1 ,0 ,1, 0 ,1 ,0),c(2,2,3,3), list(UCA17_P_1=lv4,Acoustic_Link_Quality=lv3,Range_to_buoy=c("Long","Medium","Close"),Multipath_From_Ice=lv2))
uca17n.prob <- array(c(0.4, 0.6, 0.05, 0.95, 0.001, 0.999, 1 ,0 ,1 ,0 ,1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0, 1, 0, 1, 0 ,1 ,0, 1 ,0, 1, 0, 1 ,0 ,1 ,0, 1, 0, 1 ,0 ,1 ,0, 1 ,0 ,1 ,0 ,1 ,0 ,1 ,0),c(2,2,2,2,3),list(UCA17_N_1=lv4,Acoustic_Link_Quality=lv3,ReliabilityAcousticNavigation=lvRel,Reliability_of_acoustic_module_in_AUV=lvRel,Range_to_buoy=c("Long","Medium","Close")))
rangeq.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(RIF_Range_Quality=lv4,UCA17_P_1=lv4,UCA17_N_1=lv4))
uca5p.prob <- array(c(1, 0, 1, 0, 1, 0 ,1, 0, 1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0, 1, 0 ,1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1 ,0 ,1 ,0 ,1 ,0 ,1 ,0, 1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,1, 0, 1, 0, 1, 0, 1, 0 ,0 ,1),c(2,2,2,2,2),list(UCA5_P_1=lv4,SoftwareFailure=lv4,Position_Measurement_Quality=lv4,RIF3=lv4,RIF4=lv4))
copy21.prob <- array(c(1,0),2,list(Copy_2_of_Control_algorith_is_flawed=lv3))
copy22.prob <- array(c(0,1,1,0),c(2,2),list(Copy_2_SoftwareFailure=lv4,Copy_2_of_Control_algorith_is_flawed=lv3))
sensor.prob <- array(c(0,1,0,1,0,1,1,0),c(2,2,2),list(Failure_of_temperature_sensor=lv3,UCA18_P_1=lv4,UCA18_N_1=lv4))
waypoint.prob <- array(c(1,0),2,list(Flawed_algorithm_of_waypoint_generation=lv3))
power.prob <- array(c(0.2,0.6,0.2),3,list(Power_capacity=lv))
system.prob <- array(c(0,1,0.05,0.95,0.3,0.7),dim=c(2,3),list(Power_system=lv4,Power_capacity=lv))
relbb.prob <- array(c(0.9988,1-0.9988),2,list(Reliability_of_the_propulsion_system=lvRel))
motion.prob <- array(c(1,0,0,1,1,0,1,0),c(2,2,2),list(Propulsion_system_fails_to_provide_necessary_motion=lv4,Reliability_of_the_propulsion_system=lvRel,Power_system=lv4))
spee.prob <- array(c(0.01,0.5,0.49),3,list(Current_speed=lv))
complex.prob <- array(c(0.5,0.5,0,0,0.4,0.6,0,0.05,0.95),c(3,3),list(Environmental_complexity=lv,Current_speed=lv))
rif2.prob <- array(c(1, 0, 1, 0, 1, 0, 0.99, 0.01, 0.1, 0.9, 0.01, 0.99),c(2,2,3),list(RIF2Propulsion=lv4,Propulsion_system_fails_to_provide_necessary_motion=lv4,Environmental_complexity=lv))
uca6n.prob <- array(c(1 ,0, 1, 0, 1, 0, 0, 1),c(2,2,2),list(UCA6_N_1=lv4,Copy_2_SoftwareFailure=lv4,RIF2Propulsion=lv4))
rif2w.prob <- array(c(0,1,1,0,1,0,1,0),c(2,2,2),list(RIF2Waypoint=lv4,Flawed_algorithm_of_waypoint_generation=lv3,Failure_of_temperature_sensor=lv3))
puf.prob <- array(c(1,0),2,list(Copy_of_Control_algorith_is_flawed=lv3))
puff.prob <- array(c(0,1,1,0),c(2,2),list(Copy_of_SoftwareFailure=lv4,Copy_of_Control_algorith_is_flawed=lv3))
fins.prob <- array(c(0.999993,1-0.999993),2,list(Fins=lvRel))
steering.prob <- array(c(1,0,0,1,1,0,1,0),dim=c(2,2,2),dimnames=list(Steering_system_fails_to_provide_necessary_motion=lv4,Fins=lvRel,Power_system=lv4))
altitude.prob <- array(c(0.99,0.005,0.005),dim=3,list(Altitude_of_AUV=lv))
rif31.prob <- array(c(1,0,0,1),dim=c(2,2),list(RIF3Inaccurate=lv4,UCA5_P_1=lv4))
rif32.prob <- array(c(0.001, 0.999, 0, 1, 0.001, 0.999, 0.45, 0.55, 0.1, 0.9, 0.35, 0.65, 0.95, 0.05, 0.4, 0.6, 0.9, 0.1, 0.02, 0.98, 0.02, 0.98, 0.02, 0.98, 0.05, 0.95, 0.05, 0.95, 0.05, 0.95, 0.99, 0.01,0.65, 0.35, 0.25, 0.75, 0.99, 0.01, 0.6, 0.4, 0.2, 0.8, 0.99, 0.01, 0.65, 0.35, 0.25, 0.75, 0.999, 0.001, 0.7, 0.3, 0.3, 0.7),dim=c(2,3,3,3),list(RIF3Collision=lv4,Altitude_of_AUV=lv,Depth_of_AUV=lv,Speed_of_AUV=lv))
rif5.prob <- array(c(1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,0.1, 0.9, 0.001, 0.999),c(2,2,3),list(RIF5=lv4,Steering_system_fails_to_provide_necessary_motion=lv4,Environmental_complexity=lv))
uca6n2.prob <- array(c(1 ,0 ,1 ,0 ,1 ,0 ,1 ,0 ,1, 0, 1, 0 ,1 ,0 ,1, 0 ,1 ,0, 1, 0, 1, 0 ,1 ,0, 1 ,0 ,1 ,0 ,1, 0, 0 ,1),rep(2,5), list(UCA6_N_2=lv4,RIF2Waypoint=lv4,Copy_of_SoftwareFailure=lv4,RIF3Inaccurate=lv4,RIF5=lv4))
inacw.prob <- array(c(0,1,1,0),dim=c(2,2),list(InaccurateWaypoint=lv4,Failure_of_ADCP_DVL=lv3))
crif5.prob <- array(c(1, 0, 1, 0, 1, 0, 1, 0, 1 ,0 ,1 ,0 ,1, 0, 0.95, 0.05, 0.8, 0.2, 0.05, 0.95, 0.01, 0.99, 0 ,1),c(2,2,2,3),list(Copy_RIF5=lv4,Steering_system_fails_to_provide_necessary_motion=lv4, RIF3Collision=lv4,Environmental_complexity=lv))
alg.prob <- array(c(1,0),2,list(Copy_of_Flawed_algorithm=lv3))
crif2.prob <- array(c(0,1,1,0),c(2,2),list(Copy_of_RIF2Waypoint=lv4,Copy_of_Flawed_algorithm=lv3))
uca6n3.prob <- array(c(1, 0, 1, 0, 1, 0, 1, 0 ,1 ,0 ,1, 0 ,1 ,0, 0, 1),dim=c(2,2,2,2),list(UCA6_N_3=lv4,InaccurateWaypoint=lv4,Copy_RIF5=lv4,Copy_of_RIF2Waypoint=lv4))
h1.prob <- array(c(0.75 ,0.25, 0.7, 0.3, 0.28, 0.720, 0.22, 0.78, 0.25, 0.75, 0.2, 0.8, 0.05, 0.95, 0.01, 0.99),c(2,2,2,2),list(H1=lv4,UCA6_N_2=lv4,UCA6_N_3=lv4,UCA6_N_1=lv4))
h2.prob <- array(c(0.9, 0.1, 0.8, 0.2, 0.35, 0.65, 0.3, 0.7, 0.38, 0.62, 0.3, 0.7, 0.15, 0.85, 0.001, 0.999),c(2,2,2,2),list(H2=lv4,UCA6_N_2=lv4,UCA6_N_3=lv4,UCA6_N_1=lv4))
h6.prob <- array(c(1, 0 ,1, 0 ,1 ,0 ,1 ,0 ,0.5, 0.5, 0.45, 0.55, 0.2, 0.8, 0, 1),c(2,2,2,2),list(H6=lv4,UCA6_N_2=lv4,UCA6_N_3=lv4,UCA6_N_1=lv4))
h5.prob <- array(c(1,0,0.05,0.95),c(2,2),list(H5=lv4,UCA6_N_2=lv4))
tool.prob <- array(c(0.7,0.3,0),c(3),list(Tool_effectiveness=lv))
icet.prob <- array(c(0.001,0.2,0.799),c(3),list(Ice_thickness=lv))
train.prob <- array(c(0.7,0.3,0),c(3),list(Copy_of_Training_level=lv))
visibility.prob <- array(c(1,0,0),c(3),list(Visibility=lv))
temp.prob <- array(c(0,1),2,list(Copy_of_Air_temperature=lv4))
strong.prob <- array(c(0,1),c(2),list(Copy_of_Strong_wind=lv4))
copyw.prob <- array(c(0, 1, 0, 1, 0, 1 ,1, 0, 0, 1, 0, 1, 0 ,1 ,0.6, 0.4, 0 ,1 ,0, 1 ,0 ,1 ,0.3, 0.7),c(2,3,2,2),list(Copy_of_Weather_condition=lv1,Visibility=lv, Copy_of_Strong_wind=lv4, Copy_of_Air_temperature=lv4))
salvage.prob <- array(c(0.9, 0.1, 0 ,0.92, 0.08, 0 ,0.95, 0.05, 0, 0.95, 0.05, 0 ,0.97, 0.03, 0 ,0.99, 0.01, 0, 1, 0 ,0, 1 ,0 ,0, 1, 0, 0 ,0.1 ,0.7, 0.2, 0.3 ,0.6, 0.1, 0.75, 0.25, 0 ,0.6, 0.4, 0 ,0.65, 0.35, 0 ,0.9, 0.1, 0, 0.99, 0.01, 0, 0.99, 0.01 ,0 ,0.99, 0.01, 0 ,0 ,0 ,1 ,0 ,0.1, 0.9, 0 ,0.6, 0.4, 0 ,0.1 ,0.9, 0 ,0.3 ,0.7 ,0.2, 0.5 ,0.3 ,0 ,0.4, 0.6 ,0.1, 0.4 ,0.5 ,0.3 ,0.6, 0.1),dim=c(3,3,3,3),list(Difficulty_of_salvage_operation=lv,Ice_thickness=lv, Tool_effectiveness=lv,Copy_of_Training_level=lv))
home.prob <- array(c(0.5699,0.43,1-0.5699-0.43),3,list(Dist_to_home=lv))
pinpoint.prob <- array(c(0.1, 0.9, 0 ,0 ,0.4, 0.6, 0, 0 ,1, 0.3, 0.7, 0 ,0 ,0.6 ,0.4, 0 ,0.05, 0.95, 0.6, 0.4, 0 ,0.3, 0.7, 0 ,0.1, 0.9, 0 ,0.3, 0.7, 0 ,0 ,0.7, 0.3 ,0 ,0.1 ,0.9, 0.45, 0.55, 0 ,0.1, 0.7, 0.2, 0 ,0.2, 0.8, 0.8, 0.2, 0 ,0.4, 0.6, 0 ,0.15, 0.85, 0 ,1 ,0 ,0, 0.8, 0.2, 0 ,0 ,0.6, 0.4, 1 ,0 ,0, 0.9, 0.1, 0, 0.1, 0.6, 0.3, 1, 0, 0, 1, 0, 0, 0.2, 0.8, 0),c(3,3,3,3),list(Difficulty_to_pinpoint_the_vehicle=lv,Tool_effectiveness=lv,Copy_of_Training_level=lv,Dist_to_home=lv))
auvs.prob <- array(c(1, 0, 0 ,1 ,0 ,0 ,1 ,0, 0 ,1, 0 ,0 ,0.2, 0.8, 0 ,0, 1, 0, 1, 0, 0, 0 ,1 ,0 ,0, 0, 1),c(3,3,3),list(Difficulty_of_AUV_salvage=lv,Difficulty_of_salvage_operation=lv,Difficulty_to_pinpoint_the_vehicle=lv))
operator.prob <- array(c(0, 0 ,1 ,0.05, 0.85, 0.1, 1 ,0 ,0 ,0 ,0 ,1 ,0 ,0.3, 0.7 ,0.1 ,0.6, 0.3),c(3,2,3),dimnames=list(Copy_of_Operator_effectiveness=lv,Copy_of_Weather_condition=lv1,Difficulty_of_AUV_salvage=lv))
ice.prob <- array(c(0.999 ,0.0005 ,0.0005),3,list(Ice_concentration=lv))
constr.prob <- array(c(1, 0, 0, 0.25, 0.75, 0 ,0, 0.2, 0.8, 0.8, 0.2, 0 ,0.2, 0.5, 0.3, 0 ,0.05, 0.95, 0.5, 0.3, 0.2, 0 ,0.1, 0.9 ,0 ,0, 1),c(3,3,3),list(Copy_of_Environmental_constraint=lv,Ice_concentration=lv,Ice_thickness=lv))
losts.prob <- array(c(0.7,0.2,0.1),3,list(Time_left_to_salvage_the_vehicle_if_it_losts=c("Plenty","Enough","Not Enough")))
vessel.prob <- array(c(0,0,1,0,0.3,0.7,1,0,0),c(3,3),list(Vessel_constraint=lv,Time_left_to_salvage_the_vehicle_if_it_losts=c("Plenty","Enough","Not Enough")))
effect.prob <- array(c(0 ,0 ,1 ,0 ,0, 1, 0, 0, 1, 0 ,0 ,1 ,0.4, 0.6, 0 ,0.8, 0.2, 0, 0, 0, 1, 0.8, 0.2, 0 ,1, 0 ,0),c(3,3,3),list(Copy_of_Research_vessel_effectiveness=lv,Copy_of_Environmental_constraint=lv,Vessel_constraint=lv))
salv.prob <- array(c(0.05, 0.95, 0.35, 0.65, 0.95, 0.05, 0.4 ,0.6 ,0.6 ,0.4 ,0.98, 0.02, 1 ,0 ,1 ,0 ,1, 0),c(2,3,3),list(Copy_of_Salvage=lv4,Copy_of_Research_vessel_effectiveness=lv,Copy_of_Operator_effectiveness=lv))
h7.prob <- array(c(1,0,0.05,0.95),c(2,2),list(H7=lv4,Copy_of_Salvage=lv4))
loss.prob <- array(c(1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0.2, 0.8, 1 ,0 ,1 ,0 ,1 ,0, 1, 0, 1, 0 ,1 ,0 ,0.6, 0.4, 0.01, 0.99),c(2,2,2,2,2),list(Loss_of_mission=lv4,H7=lv4,H6=lv4,H5=lv4,H1=lv4))
auv.prob <- array(c(0.95, 0.05, 0 ,0.95, 0.05, 0, 0 ,1 ,0 ,0 ,1 ,0 ,0.8, 0.2, 0 ,0.8, 0.2, 0 ,0 ,1 ,0, 0,1, 0, 0.85, 0.1, 0.05, 0.8, 0 ,0.2, 0 ,0.6 ,0.4, 0, 0.6, 0.4, 0.2, 0.3, 0.5, 0.01, 0.1, 0.89, 0 ,0.1, 0.9, 0 ,0.001, 0.999),c(3,2,2,2,2),list(Loss_of_AUV=c("Loss","Damage","No"),H1=lv4,H2=lv4,H7=lv4,H5=lv4))

probs <- list(Vessel_constraint=vessel.prob,Copy_of_Environmental_constraint=constr.prob,Difficulty_to_pinpoint_the_vehicle=pinpoint.prob,Copy_of_Weather_condition= copyw.prob,Copy_of_Strong_wind=strong.prob,Copy_of_Air_temperature=temp.prob,Visibility=visibility.prob,Copy_of_Training_level=train.prob, Ice_thickness=icet.prob,Reliability_of_acoustic_module_in_AUV=Rel.prob,
              Speed_of_AUV=speed.prob,
              Depth_of_AUV=depth.prob,
              Ice_Ruggnes=rug.prob,
              Ice_Environment=envir.prob,
              Water_Environment=water.prob,
              Multipath_From_Ice=multipath.prob,
              Failure_of_ADCP_DVL = fai.prob,
              RIF4 = rif4.prob,Failure_of_CTD_sensor=ctd.prob,
              Failure_of_IMU_module=imu.prob, RIF3=rif3.prob,
              Control_algorith_is_flawed=flawed.prob,
              Improper_handling_of_navigation_errors = err.prob,
              SoftwareFailure=soft.prob,
              Range_to_buoy = buoy.prob,
              GNSS_accuracy=gnss.prob,
              Reliability_GPS_Module=gps.prob,
              SIL_commu=sil.prob,RSSI_commu=rssi.prob,
              UCA18_P_1=uca18.prob,
              Acoustic_Link_Quality_buoy=link.prob,ReliabilityAcousticNavigation=ac.prob,
              UCA18_N_1=uca.prob,
              Position_Measurement_Quality=posqua.prob,
              SIL_ranging=rang.prob,RSSI_ranging=rang1.prob,
              Acoustic_Link_Quality=ququ.prob,
              UCA17_P_1=uca17p.prob,UCA17_N_1=uca17n.prob,
              RIF_Range_Quality=rangeq.prob,UCA5_P_1=uca5p.prob,
              Copy_2_of_Control_algorith_is_flawed=copy21.prob,
              Copy_2_SoftwareFailure=copy22.prob,
              Failure_of_temperature_sensor=sensor.prob,
              Flawed_algorithm_of_waypoint_generation=waypoint.prob,
              Power_capacity=power.prob,Power_system=system.prob,
              Reliability_of_the_propulsion_system=relbb.prob,
              Propulsion_system_fails_to_provide_necessary_motion=motion.prob,
              Current_speed=spee.prob,Environmental_complexity=complex.prob,
              RIF2Propulsion=rif2.prob,UCA6_N_1=uca6n.prob,
              RIF2Waypoint=rif2w.prob,
              Copy_of_Control_algorith_is_flawed=puf.prob,
              Copy_of_SoftwareFailure=puff.prob,
              Fins=fins.prob, H7=h7.prob,
              Steering_system_fails_to_provide_necessary_motion=steering.prob,
              Altitude_of_AUV=altitude.prob, RIF3Inaccurate=rif31.prob,
              RIF3Collision=rif32.prob,RIF5=rif5.prob,
              UCA6_N_2=uca6n2.prob,
              InaccurateWaypoint=inacw.prob,
              Copy_RIF5= crif5.prob,
              Copy_of_Flawed_algorithm=alg.prob,
              Copy_of_RIF2Waypoint = crif2.prob,
              UCA6_N_3=uca6n3.prob,
              H1=h1.prob, H2=h2.prob, H6=h6.prob,H5=h5.prob,
              Tool_effectiveness=tool.prob,
              Difficulty_of_salvage_operation=salvage.prob,
              Dist_to_home=home.prob,Difficulty_of_AUV_salvage=auvs.prob,
              Copy_of_Operator_effectiveness= operator.prob,
              Ice_concentration=ice.prob,
              Time_left_to_salvage_the_vehicle_if_it_losts=losts.prob,
              Copy_of_Research_vessel_effectiveness=effect.prob,Copy_of_Salvage=salv.prob,
              Loss_of_mission=loss.prob,Loss_of_AUV=auv.prob)


onlinerisk <- custom.fit(onlinerisk.dag,probs)

usethis::use_data(onlinerisk, overwrite = TRUE)
