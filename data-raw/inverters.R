library(bnlearn)

dag <- model2network("[AbnormalPulseVoltageWaveform|APhaseFailure:BPhaseFailure:CPhaseFailure][C1VoltageAnomaly|DCLinkFailure][C2VoltageAnomaly|DCLinkFailure][VoltageWaveFormAsymmetry|DCLinkFailure][CPhaseNegativeWaveFormDistortion|CPhaseFailure:DCLinkFailure][BPhaseNegativeWaveFormDistortion|BPhaseFailure:DCLinkFailure][APhaseNegativeWaveFormDistortion|APhaseFailure:DCLinkFailure][CPhasePositiveWaveFormDistortion|CPhaseFailure:DCLinkFailure][BPhasePositiveWaveFormDistortion|BPhaseFailure:DCLinkFailure][APhasePositiveWaveFormDistortion|APhaseFailure:DCLinkFailure][DCLinkFailure|C1Failure:C2Failure:CapacitanceParameterWeakening][CPhaseFailure|G2PulseMissing:G5PulseMissing:T2OC:T5OC][BPhaseFailure|G3PulseMissing:G6PulseMissing:T3OC:T6OC][APhaseFailure|G1PulseMissing:G4PulseMissing:T1OC:T4OC][G1PulseMissing][G2PulseMissing][G3PulseMissing][G4PulseMissing][G5PulseMissing][G6PulseMissing][T1OC][T2OC][T3OC][T4OC][T5OC][T6OC][C1Failure][C2Failure][CapacitanceParameterWeakening]")


lv <- c("TRUE","FALSE")

G1PulseMissing <- array(c(0.07,0.93),2,list(G1PulseMissing=lv))
G2PulseMissing <- array(c(0.07,0.93),2,list(G2PulseMissing=lv))
G3PulseMissing <- array(c(0.17,0.83),2,list(G3PulseMissing=lv))
G4PulseMissing <- array(c(0.18,0.82),2,list(G4PulseMissing=lv))
G5PulseMissing <- array(c(0.12,0.88),2,list(G5PulseMissing=lv))
G6PulseMissing <- array(c(0.01,0.99),2,list(G6PulseMissing=lv))
T1OC <- array(c(0.14,0.86),2,list(T1OC=lv))
T2OC <- array(c(0.19,0.81),2,list(T2OC=lv))
T3OC <- array(c(0.04,0.96),2,list(T3OC=lv))
T4OC <- array(c(0.09,0.91),2,list(T4OC=lv))
T5OC <- array(c(0.07,0.93),2,list(T5OC=lv))
T6OC <- array(c(0.17,0.83),2,list(T6OC=lv))
C1Failure <- array(c(0.13,0.87),2,list(C1Failure=lv))
C2Failure <- array(c(0.16,0.84),2,list(C2Failure=lv))
CapacitanceParameterWeakening <- array(c(0.19,0.81),2,list(CapacitanceParameterWeakening=lv))
APhaseFailure <- array(c(0.99,0.01,0.83,0.17,0.87,0.13,0.63,0.37,0.85,0.15,0.60,0.40,0.69,0.31,0.27,0.73,0.94,0.06,0.77,0.23,0.41,0.59,0.34,0.66,0.72,0.28,0.23,0.77,0.34,0.66,0.01,0.99),c(2,2,2,2,2),list(APhaseFailure=lv,G1PulseMissing=lv,G4PulseMissing=lv,T1OC=lv,T4OC=lv))
BPhaseFailure <- array(c(0.99,0.01,0.86,0.14,0.83,0.17,0.49,0.51,0.94,0.06,0.79,0.21,0.62,0.38,0.30,0.70,0.95,0.05,0.61,0.39,0.49,0.51,0.36,0.64,0.58,0.42,0.33,0.67,0.22,0.78,0.01,0.99),rep(2,5),list(BPhaseFailure=lv,G3PulseMissing=lv,G6PulseMissing=lv,T3OC=lv,T6OC=lv))
CPhaseFailure <- array(c(0.99,0.01,0.87,0.13,0.82,0.18,0.84,0.16,0.65,0.35,0.67,0.33,0.27,0.73,0.86,0.14,0.86,0.14,0.56,0.44,0.55,0.45,0.38,0.62,0.80,0.20,0.38,0.62,0.34,0.66,0.01,0.99),rep(2,5),list(CPhaseFailure=lv,G2PulseMissing=lv,G5PulseMissing=lv,T2OC=lv,T5OC=lv))
DCLinkFailure <- array(c(0.91,0.09,0.72,0.28,0.44,0.56,0.21,0.79,0.5,0.5,0.24,0.76,0.34,0.66,0.05,0.95),rep(2,4),list(DCLinkFailure=lv,C1Failure=lv,C2Failure=lv,CapacitanceParameterWeakening=lv))
APhasePositiveWaveFormDistortion <- array(c(0.84,0.16,0.54,0.46,0.45,0.55,0.10,0.90),c(2,2,2),list(APhasePositiveWaveFormDistortion=lv,APhaseFailure=lv,DCLinkFailure=lv))
BPhasePositiveWaveFormDistortion <- array(c(0.81,0.19,0.31,0.69,0.59,0.41,0.25,0.75),c(2,2,2),list(BPhasePositiveWaveFormDistortion=lv,BPhaseFailure=lv,DCLinkFailure=lv))
CPhasePositiveWaveFormDistortion <- array(c(0.74,0.26,0.50,0.50,0.45,0.55,0.08,0.92),c(2,2,2),list(CPhasePositiveWaveFormDistortion=lv,CPhaseFailure=lv,DCLinkFailure=lv))
APhaseNegativeWaveFormDistortion <- array(c(0.78,0.22,0.55,0.45,0.35,0.65,0.16,0.84),c(2,2,2),list(APhaseNegativeWaveFormDistortion=lv,APhaseFailure=lv,DCLinkFailure=lv))
BPhaseNegativeWaveFormDistortion <- array(c(0.74,0.26,0.34,0.66,0.51,0.49,0.22,0.78),c(2,2,2),list(BPhaseNegativeWaveFormDistortion=lv,BPhaseFailure=lv,DCLinkFailure=lv))
CPhaseNegativeWaveFormDistortion <- array(c(0.82,0.18,0.46,0.54,0.44,0.56,0.29,0.71),c(2,2,2),list(CPhaseNegativeWaveFormDistortion=lv,CPhaseFailure=lv,DCLinkFailure=lv))
VoltageWaveFormAsymmetry <- array(c(0.86,0.14,0.05,0.95),c(2,2),list(VoltageWaveFormAsymmetry=lv,DCLinkFailure=lv))
C1VoltageAnomaly <- array(c(0.9,0.1,0.04,0.96),c(2,2),list(C1VoltageAnomaly=lv,DCLinkFailure=lv))
C2VoltageAnomaly <- array(c(0.93,0.07,0.12,0.88),c(2,2),list(C2VoltageAnomaly=lv,DCLinkFailure=lv))
AbnormalPulseVoltageWaveform <- array(c(0.95,0.05,0.53,0.47,0.48,0.52,0.15,0.85,0.62,0.38,0.45,0.55,0.32,0.68,0.05,0.95),c(2,2,2,2),list(AbnormalPulseVoltageWaveform=lv,APhaseFailure=lv,BPhaseFailure=lv,CPhaseFailure=lv))

inverters <- custom.fit(dag,list(
  G1PulseMissing=G1PulseMissing,
  G2PulseMissing=G2PulseMissing,
  G3PulseMissing=G3PulseMissing,
  G4PulseMissing=G4PulseMissing,
  G5PulseMissing=G5PulseMissing,
  G6PulseMissing=G6PulseMissing,
  T1OC=T1OC,
  T2OC=T2OC,
  T3OC=T3OC,
  T4OC=T4OC,
  T5OC=T5OC,
  T6OC=T6OC, C1Failure=C1Failure,C2Failure=C2Failure,
  CapacitanceParameterWeakening=CapacitanceParameterWeakening,
  APhaseFailure=APhaseFailure,
  BPhaseFailure=BPhaseFailure,
  CPhaseFailure=CPhaseFailure,
  DCLinkFailure = DCLinkFailure,
  APhasePositiveWaveFormDistortion=APhasePositiveWaveFormDistortion,
  BPhasePositiveWaveFormDistortion=BPhasePositiveWaveFormDistortion,
  CPhasePositiveWaveFormDistortion=CPhasePositiveWaveFormDistortion,
  APhaseNegativeWaveFormDistortion=APhaseNegativeWaveFormDistortion,
  BPhaseNegativeWaveFormDistortion=BPhaseNegativeWaveFormDistortion,
  CPhaseNegativeWaveFormDistortion=CPhaseNegativeWaveFormDistortion,
  VoltageWaveFormAsymmetry=VoltageWaveFormAsymmetry,
  C1VoltageAnomaly=C1VoltageAnomaly,
  C2VoltageAnomaly=C2VoltageAnomaly,
  AbnormalPulseVoltageWaveform=AbnormalPulseVoltageWaveform

))


usethis::use_data(inverters, overwrite = TRUE)
