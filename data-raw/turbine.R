
# Potential use of Bayesian Networks for estimating relationship amongrotational dynamics of floating offshore wind turbine tower in extreme environmental conditions

library(bnlearn)

turbine1.dag <- model2network("[TTDspFA|PtfmSurge:YawBrFxp:TwrBsFxt][TTDspRoll|PtfmRoll:YawBrMxp:TwrBsMxt][PtfmSurge|YawBrFxp:YawBrMxp:TwrBsFxt][PtfmRoll|TwrBsMxt][YawBrFxp|TwrBsFxt][YawBrMxp|TwrBsMxt][TTDspSS|TwrBsFyt][TTDspPtch|PtfmPitch:YawBrMyp:TwrBsMyt][PtfmSway|YawBrMyp:TwrBsFyt][PtfmPitch][YawBrFyp|TTDspSS:TwrBsFyt][YawBrMyp][TwrBsFyt][TwrBsMyt][TwrBsFxt][TwrBsMxt]")

distTTDspFA = list(coef = c("(Intercept)" = 4.240294e-03, "PtfmSurge" = 1.41667e-07, "YawBrFxp" = 3.382452e-04, "TwrBsFxt"=9.849973e-05), sd = 0.01878203)
distTTDspRoll = list(coef = c("(Intercept)" = -1.253034e-02, "PtfmRoll" =-6.269582e-03, "YawBrMxp" = 1.501368e-05, "TwrBsMxt"=7.226258e-06), sd = 0.0052459353)
distPtfmSurge = list(coef = c("(Intercept)" = 11.9668188378, "YawBrFxp" =-0.0113494099, "YawBrMxp" =-0.0006205644, "TwrBsFxt"=0.0104914489), sd = 2.746344)
distPtfmRoll = list(coef = c("(Intercept)" = 9.38534e-02, "TwrBsMxt"=3.207186e-05), sd = 0.2830656)
distYawBrFxp = list(coef = c("(Intercept)" = 26.5887336, "TwrBsFxt"=0.7626502), sd = 76.25172)
distYawBrMxp = list(coef = c("(Intercept)" = 4.071039e03, "TwrBsMxt"=2.512427e-02), sd = 521.5272)
distTTDspSS = list(coef = c("(Intercept)" = -0.0432733538, "TwrBsFyt"=0.00037893559), sd = 0.0124108)
distTTDspPtch = list(coef = c("(Intercept)" = 8.012841e-03, "TwrBsMyt"=6.906587e-06, "PtfmPitch" = - 4.537201e-03, "YawBrMyp" =1.207271e-05), sd = 0.01076164)
distPtfmSway = list(coef = c("(Intercept)" = -8.072005e-01, "YawBrMyp" = -3.246104e-05, "TwrBsFyt" = 3.894343e-03), sd = 0.4916933)
distPtfmPitch = list(coef = c("(Intercept)" = 2.135117), sd = 1.320039)
distYawBrFyp = list(coef = c("(Intercept)" = 95.9430265, "TTDspSS" = 2443.0219893, "TwrBsFyt" = -0.1350949), sd = 14.0227)
distYawBrMyp = list(coef = c("(Intercept)" = 2607.097), sd = 1996.157)
distTwrBsFyt = list(coef = c("(Intercept)" = -74.07645), sd = 86.61463)
distTwrBsMyt = list(coef = c("(Intercept)" = 39630.32), sd = 32919.11)
distTwrBsFxt = list(coef = c("(Intercept)" = 529.4068), sd = 469.6989)
distTwrBsMxt = list(coef = c("(Intercept)" = 9756.298), sd = 6555.01)


turbine1 <- custom.fit(turbine1.dag, dist = list(
  TTDspFA = distTTDspFA,
  TTDspRoll=distTTDspRoll,
  PtfmSurge=distPtfmSurge,
  PtfmRoll=distPtfmRoll,
  YawBrFxp=distYawBrFxp,
  YawBrMxp=distYawBrMxp,
  TTDspSS=distTTDspSS,
  TTDspPtch =distTTDspPtch ,
  PtfmSway=distPtfmSway,
  PtfmPitch=distPtfmPitch,
  YawBrFyp=distYawBrFyp,
  YawBrMyp=distYawBrMyp,
  TwrBsFyt=distTwrBsFyt,
  TwrBsMyt=distTwrBsMyt,
  TwrBsFxt=distTwrBsFxt,
  TwrBsMxt =distTwrBsMxt
))

turbine2.dag <- model2network("[TTDspFA|PtfmSurge:YawBrFxp:TwrBsFxt][TTDspRoll|PtfmRoll:YawBrMxp:TwrBsMxt][PtfmSurge|YawBrFxp:YawBrMxp:TwrBsFxt][PtfmRoll|TwrBsMxt][YawBrFxp|TwrBsFxt][YawBrMxp|TwrBsMxt][TTDspSS|TwrBsFyt][TTDspPtch|PtfmPitch:YawBrMyp:TwrBsMyt][PtfmSway|YawBrMyp:TwrBsFyt][PtfmPitch][YawBrFyp|TTDspSS:TwrBsFyt][YawBrMyp][TwrBsFyt][TwrBsMyt][TwrBsFxt][TwrBsMxt]")

distTTDspFA = list(coef = c("(Intercept)" = 4.240294e-03, "PtfmSurge" = 1.41667e-07, "YawBrFxp" = 3.382452e-04, "TwrBsFxt"=9.849973e-05), sd = 0.01878203)
distTTDspRoll = list(coef = c("(Intercept)" = -1.253034e-02, "PtfmRoll" =-6.269582e-03, "YawBrMxp" = 1.501368e-05, "TwrBsMxt"=7.226258e-06), sd = 0.0052459353)
distPtfmSurge = list(coef = c("(Intercept)" = 11.9668188378, "YawBrFxp" =-0.0113494099, "YawBrMxp" =-0.0006205644, "TwrBsFxt"=0.0104914489), sd = 2.746344)
distPtfmRoll = list(coef = c("(Intercept)" = 9.38534e-02, "TwrBsMxt"=3.207186e-05), sd = 0.2830656)
distYawBrFxp = list(coef = c("(Intercept)" = 26.5887336, "TwrBsFxt"=0.7626502), sd = 76.25172)
distYawBrMxp = list(coef = c("(Intercept)" = 4.071039e03, "TwrBsMxt"=2.512427e-02), sd = 521.5272)
distTTDspSS = list(coef = c("(Intercept)" = -0.0432733538, "TwrBsFyt"=0.00037893559), sd = 0.0124108)
distTTDspPtch = list(coef = c("(Intercept)" = 8.012841e-03, "TwrBsMyt"=6.906587e-06, "PtfmPitch" = 8.012841e-03, "YawBrMyp" =1.207271e-05), sd = 0.01076164)
distPtfmSway = list(coef = c("(Intercept)" = -8.072005e-01, "YawBrMyp" = -3.246104e-05, "TwrBsFyt" = 3.894343e-03), sd = 0.4916933)
distPtfmPitch = list(coef = c("(Intercept)" = 2.135117), sd = 1.320039)
distYawBrFyp = list(coef = c("(Intercept)" = 95.9430265, "TTDspSS" = 2443.0219893, "TwrBsFyt" = -0.1350949), sd = 14.0227)
distYawBrMyp = list(coef = c("(Intercept)" = 2607.097), sd = 1996.157)
distTwrBsFyt = list(coef = c("(Intercept)" = -74.07645), sd = 86.61463)
distTwrBsMyt = list(coef = c("(Intercept)" = 39630.32), sd = 32919.11)
distTwrBsFxt = list(coef = c("(Intercept)" = 529.4068), sd = 469.6989)
distTwrBsMxt = list(coef = c("(Intercept)" = 9756.298), sd = 6555.01)


turbine2 <- custom.fit(turbine2.dag, dist = list(
  TTDspFA = distTTDspFA,
  TTDspRoll=distTTDspRoll,
  PtfmSurge=distPtfmSurge,
  PtfmRoll=distPtfmRoll,
  YawBrFxp=distYawBrFxp,
  YawBrMxp=distYawBrMxp,
  TTDspSS=distTTDspSS,
  TTDspPtch =distTTDspPtch ,
  PtfmSway=distPtfmSway,
  PtfmPitch=distPtfmPitch,
  YawBrFyp=distYawBrFyp,
  YawBrMyp=distYawBrMyp,
  TwrBsFyt=distTwrBsFyt,
  TwrBsMyt=distTwrBsMyt,
  TwrBsFxt=distTwrBsFxt,
  TwrBsMxt =distTwrBsMxt
))

usethis::use_data(turbine1, overwrite = TRUE)

usethis::use_data(turbine2, overwrite = TRUE)
