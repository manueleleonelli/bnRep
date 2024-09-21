#' onlinerisk Bayesian Network
#'
#' Online risk modeling of autonomous marine systems: Case study of autonomous operations under sea ice.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to develop online risk models for an autonomous marine system. Probabilities were given in an associated GitHub repository. The vertices are:
#' \describe{
#'   \item{Acoustic_Link_Quality}{(Acceptable, Unacceptable);}
#'   \item{Acoustic_Link_Quality_buoy}{(Acceptable, Unacceptable);}
#'   \item{Altitude_of_AUV}{(High, Medium, Low);}
#'   \item{Control_algorith_is_flawed}{(Acceptable, Unacceptable);}
#'   \item{Copy_2_of_Control_algorith_is_flawed}{(Acceptable, Unacceptable);}
#'   \item{Copy_2_SoftwareFailure}{(Yes, No);}
#'   \item{Copy_of_Air_temperature}{(Yes, No);}
#'   \item{Copy_of_Control_algorith_is_flawed}{(Acceptable, Unacceptable);}
#'   \item{Copy_of_Environmental_constraint}{(High, Medium, Low);}
#'   \item{Copy_of_Flawed_algorithm}{(Acceptable, Unacceptable);}
#'   \item{Copy_of_Operator_effectiveness}{(High, Medium, Low);}
#'   \item{Copy_of_Research_vessel_effectiveness}{(High, Medium, Low);}
#'   \item{Copy_of_RIF2Waypoint}{(Yes, No);}
#'   \item{Copy_of_Salvage}{(Yes, No);}
#'   \item{Copy_of_SoftwareFailure}{(Yes, No);}
#'   \item{Copy_of_Strong_wind}{(Yes, No);}
#'   \item{Copy_of_Training_level}{(High, Medium, Low);}
#'   \item{Copy_of_Weather_condition}{(Good, Poor);}
#'   \item{Copy_RIF5}{(Yes, No);}
#'   \item{Current_speed}{(High, Medium, Low);}
#'   \item{Depth_of_AUV}{(High, Medium, Low);}
#'   \item{Difficulty_of_AUV_salvage}{(High, Medium, Low);}
#'   \item{Difficulty_of_salvage_operation}{(High, Medium, Low);}
#'   \item{Difficulty_to_pinpoint_the_vehicle}{(High, Medium, Low);}
#'   \item{Dist_to_home}{(High, Medium, Low);}
#'   \item{Environmental_complexity}{(High, Medium, Low);}
#'   \item{Failure_of_ADCP_DVL}{(Acceptable, Unacceptable);}
#'   \item{Failure_of_CTD_sensor}{(Acceptable, Unacceptable);}
#'   \item{Failure_of_IMU_module}{(Acceptable, Unacceptable);}
#'   \item{Failure_of_temperature_sensor}{(Acceptable, Unacceptable);}
#'   \item{Fins}{(Reliable, Failure);}
#'   \item{Flawed_algorithm_of_waypoint_generation}{(Acceptable, Unacceptable);}
#'   \item{GNSS_accuracy}{(Acceptable, Unacceptable);}
#'   \item{H1}{(Yes, No);}
#'   \item{H2}{(Yes, No);}
#'   \item{H5}{(Yes, No);}
#'   \item{H6}{(Yes, No);}
#'   \item{H7}{(Yes, No);}
#'   \item{Ice_concentration}{(High, Medium, Low);}
#'   \item{Ice_Environment}{(Good, Poor);}
#'   \item{Ice_Ruggnes}{(High, Medium, Low);}
#'   \item{Ice_thickness}{(High, Medium, Low);}
#'   \item{Improper_handling_of_navigation_errors}{(Yes, No);}
#'   \item{InaccurateWaypoint}{(Yes, No);}
#'   \item{Loss_of_AUV}{(Loss, Damage, No);}
#'   \item{Loss_of_mission}{(Yes, No);}
#'   \item{Multipath_From_Ice}{(Good, Medium, Poor);}
#'   \item{Position_Measurement_Quality}{(Yes, No);}
#'   \item{Power_capacity}{(High, Medium, Low);}
#'   \item{Power_system}{(Yes, No);}
#'   \item{Propulsion_system_fails_to_provide_necessary_motion}{(Yes, No);}
#'   \item{Range_to_buoy}{(Long, Medium, Close);}
#'   \item{Reliability_GPS_Module}{(Reliable, Failure);}
#'   \item{Reliability_of_acoustic_module_in_AUV}{(Reliable, Failure);}
#'   \item{Reliability_of_the_propulsion_system}{(Reliable, Failure);}
#'   \item{ReliabilityAcousticNavigation}{(Reliable, Failure);}
#'   \item{RIF_Range_Quality}{(Yes, No);}
#'   \item{RIF2Propulsion}{(Yes, No);}
#'   \item{RIF2Waypoint}{(Yes, No);}
#'   \item{RIF3}{(Yes, No);}
#'   \item{RIF3Collision}{(Yes, No);}
#'   \item{RIF3Inaccurate}{(Yes, No);}
#'   \item{RIF4}{(Yes, No);}
#'   \item{RIF5}{(Yes, No);}
#'   \item{RSSI_commu}{(Acceptable, Unacceptable);}
#'   \item{RSSI_ranging}{(Acceptable, Unacceptable);}
#'   \item{SIL_commu}{(Acceptable, Unacceptable);}
#'   \item{SIL_ranging}{(Acceptable, Unacceptable);}
#'   \item{SoftwareFailure}{(Yes, No);}
#'   \item{Speed_of_AUV}{(High, Medium, Low);}
#'   \item{Steering_system_fails_to_provide_necessary_motion}{(Yes, No);}
#'   \item{Time_left_to_salvage_the_vehicle_if_it_losts}{(Plenty, Enough, Not Enough);}
#'   \item{Tool_effectiveness}{(High, Medium, Low);}
#'   \item{UCA17_N_1}{(Yes, No);}
#'   \item{UCA17_P_1}{(Yes, No);}
#'   \item{UCA18_N_1}{(Yes, No);}
#'   \item{UCA18_P_1}{(Yes, No);}
#'   \item{UCA5_P_1}{(Yes, No);}
#'   \item{UCA6_N_1}{(Yes, No);}
#'   \item{UCA6_N_2}{(Yes, No);}
#'   \item{UCA6_N_3}{(Yes, No);}
#'   \item{Vessel_constraint}{(High, Medium, Low);}
#'   \item{Visibility}{(High, Medium, Low);}
#'   \item{Water_Environment}{(Good, Poor);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Yang, R., Bremnes, J. E., & Utne, I. B. (2023). Online risk modeling of autonomous marine systems: case study of autonomous operations under sea ice. Ocean Engineering, 281, 114765.
"onlinerisk"
