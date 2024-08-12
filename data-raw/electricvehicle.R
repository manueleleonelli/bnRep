# Electric Vehicle Fire Risk Assessment Based on WBS-RBS and Fuzzy BN Coupling
library(bnlearn)

vehicle.dag = model2network("[BF][SBB][BO][CEF][SCB|BF:SBB:BO:CEF][ACF][ECF][TLD][DTH][EC|ACF:ECF:TLD:DTH][IS][CI][CBI|IS:CI][MMA][AM][HF|MMA:AM][FFE][AWE][OFE|FFE:AWE][BEP][ISC|SCB:EC:BEP][REI|CBI:HF][VFD|ISC:REI:OFE]")

lv = c("yes","no")

BF.prob <- array(c(0.31,1-0.31), dim = 2, dimnames = list(BF=lv))
SBB.prob <- array(c(0.27,1-0.27), dim = 2, dimnames = list(SBB=lv))
BO.prob <- array(c(0.19,1-0.19), dim = 2, dimnames = list(BO=lv))
CEF.prob <- array(c(0.23,1-0.23), dim = 2, dimnames = list(CEF=lv))
SCB.prob <- array(c(0.1062,0.8938,0.0920,0.908,0.1039,0.8961,0.0897,0.9103,0.0857,0.9143,0.0714,0.9286,0.0834,0.9166,0.1508,0.8492,0.0371,0.9629,0.0229,0.9771,0.0348,0.9652,0.0823,0.9177,0.0165,0.9835,0.0274,0.9726,0.0684,0.9316,0,1), dim = c(2,2,2,2,2), dimnames = list(SCB=lv,CEF=lv,BO=lv,SBB=lv,BF=lv))
ACF.prob <- array(c(0.12,1-0.12), dim = 2, dimnames = list(ACF=lv))
ECF.prob <- array(c(0.13,1-0.13), dim = 2, dimnames = list(ECF=lv))
TLD.prob <- array(c(0.12,1-0.12), dim = 2, dimnames = list(TLD=lv))
DTH.prob <- array(c(0.12,1-0.12), dim = 2, dimnames = list(DTH=lv))
EC.prob <- array(c(0.0538,0.9462,0.0527,0.9473,0.0274,0.9726,0.0263,0.9737,0.0369,0.9631,0.0389,0.9611,0.0105,0.9895,0.0411,0.9589,0.0443,0.9557,0.0432,0.9586,0.0179,0.9821,0.0548,0.9452,0.0274,0.9726,0.0686,0.9314,0.0137,0.9863,0,1),dim=c(2,2,2,2,2), dimnames = list(EC=lv,DTH=lv,TLD=lv,ECF=lv,ACF=lv))
IS.prob <- array(c(0.105,1-0.105), dim = 2, dimnames = list(IS=lv))
CI.prob <- array(c(0.38,1-0.38), dim = 2, dimnames = list(CI=lv))
CBI.prob <- array(c(0.255,0.745,0.0271,0.9729,0.2876,0.7124,0,1),dim=c(2,2,2),dimnames = list(CBI=lv,CI=lv,IS=lv))
MMA.prob <- array(c(0.10,1-0.10), dim = 2, dimnames = list(MMA=lv))
AM.prob <- array(c(0.35,1-0.35), dim = 2, dimnames = list(AM=lv))
HF.prob <- array(c(0.0808,0.9192,0.096,0.904,0.0274,0.9726,0,1),dim=c(2,2,2),dimnames = list(HF=lv,AM=lv,MMA=lv))
FFE.prob <- array(c(0.15,1-0.15), dim = 2, dimnames = list(FFE=lv))
AWE.prob <- array(c(0.11,1-0.11), dim = 2, dimnames = list(AWE=lv))
OFE.prob <- array(c(0.0228,0.9772,0.0137,0.9863,0.0274,0.9726,1,0),dim=c(2,2,2),dimnames = list(OFE=lv,AWE=lv,FFE=lv))
BEP.prob <- array(c(0.10,1-0.10), dim = 2, dimnames = list(BEP=lv))
ISC.prob <- array(c(0.15,0.85,0.1495,0.8505,0.1022,0.8978,0.1967,0.8033,0.0482,0.9518,0.1066,0.8934,0.0137,0.9863,0,1),dim=c(2,2,2,2),dimnames = list(ISC=lv,BEP=lv,EC=lv,SCB=lv))
REI.prob <- array(c(0.1632,0.8368,0.1967,0.8033,0.0738,0.9262,0,1),dim=c(2,2,2),dimnames = list(REI=lv,HF=lv,CBI=lv))
VFD.prob <- array(c(0.1708,1-0.1708,0.1701,1-0.1701,0.0976,1-0.0976,0.3115,1-0.3115,0.0738,1-0.0738,0.2705,1-0.2705,0.0246,1-0.0246,0,1),dim=c(2,2,2,2),dimnames = list(VFD=lv,OFE=lv,REI=lv,ISC=lv))



vehicle.cpt <- list(BF = BF.prob,SBB = SBB.prob,BO = BO.prob, CEF = CEF.prob, SCB = SCB.prob,
                    ACF=ACF.prob,ECF=ECF.prob,TLD=TLD.prob,DTH=DTH.prob,EC=EC.prob, IS = IS.prob,CI = CI.prob,CBI=CBI.prob,
                    MMA=MMA.prob,AM=AM.prob,HF=HF.prob,FFE=FFE.prob,AWE=AWE.prob,OFE=OFE.prob,
                    BEP = BEP.prob,ISC=ISC.prob, REI= REI.prob,VFD=VFD.prob)

electricvehicle <- custom.fit(vehicle.dag,vehicle.cpt)

usethis::use_data(electricvehicle, overwrite = TRUE)

