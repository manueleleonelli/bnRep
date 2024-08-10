# A framework for quantitative analysis of the causation of grounding accidents in arctic shipping

library(bnlearn)

grounding.dag = model2network("[PC][PSQ][LSM][LID|LSM][ILC|LSM][ISS|LID][ISL|PSQ][UPA|LID][IWP|UPA][OD|LID:IWP:ILC][UDL][LT][IS][ICC][PSM|LT][IRR|LT:UDL][UR|PC:OD:ISS:ISL][SMS][IRP|SMS][PF][UCD|OD][IPS|IRR:IRP:UCD:IS:UR][PEC][LNE|IRR][DE|LNE][IER|PEC][WD|PF][IO|DE][INE|IPS][MIJ|ICC][PSA|UCD:DE:MIJ:INE:IO:LNE][BW][PFC|PSA][GRO|PFC][DAM|LNE:US:MIJ:BW:GRO][US|PSM:WD]")

lv = c("no","yes")

PC.prob <- array(c(0.892857,1-0.892857), dim = 2, dimnames = list(PC=lv))
PSQ.prob <- array(c(0.678571429,1-0.678571429), dim = 2, dimnames = list(PSQ=lv))
LSM.prob <- array(c(0.892857,1-0.892857), dim = 2, dimnames = list(LSM=lv))
LID.prob <- array(c(0.44,0.56,0.333,0.667), dim = c(2,2), dimnames = list(LID=lv, LSM = lv))
ILC.prob <- array(c(0.88,0.12,0,1), dim = c(2,2), dimnames = list(ILC=lv, LSM = lv))
ISS.prob <- array(c(0.75,0.25,0.875,0.125), dim = c(2,2), dimnames = list(ISS=lv, LID = lv))
ISL.prob <- array(c(0.789473684,1-0.789473684,0.777777778,1-0.777777778), dim = c(2,2), dimnames = list(ISL=lv, PSQ = lv))
UPA.prob <- array(c(0.833333333,1-0.833333333,0.4375,1-0.4375), dim = c(2,2), dimnames = list(UPA=lv, LID = lv))
IWP.prob <- array(c(0.882352941,1-0.882352941,0.363636364,1-0.363636364), dim = c(2,2), dimnames = list(IWP=lv, UPA = lv))
OD.prob <- array(c(0.625,0.375,1,0,0.428571429,1-0.428571429,0.2,0.8,1,0,0.5,0.5,0,1,0.5,0.5), dim = c(2,2,2,2), dimnames = list(OD=lv, IWP = lv, LID = lv, ILC = lv))
UDL.prob <- array(c(0.969899666,1-0.969899666), dim = 2, dimnames = list(UDL=lv))
LT.prob <- array(c(0.819397993,1-0.819397993), dim = 2, dimnames = list(LT=lv))
IS.prob <- array(c(0.892976589,1-0.892976589), dim = 2, dimnames = list(IS=lv))
ICC.prob <- array(c(0.85618729,1-0.85618729), dim = 2, dimnames = list(ICC=lv))
PSM.prob <- array(c(0.897959184,0.102040816,0.833333333,0.166666667), dim = c(2,2), dimnames = list(PSM=lv, LT = lv))
IRR.prob <- array(c(0.766666667,0.233333333,0.7,0.3,1,0,0.5,0.5), dim = c(2,2,2), dimnames = list(IRR=lv, LT = lv, UDL = lv))
UR.prob <- array(c(0.75,0.25,0.5,0.5,0.909090909,0.090909091,1,0,1,0,0.5,0.5,0.5,0.5,1,0,0.666666667,1-0.666666667,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0,1), dim = c(2,2,2,2,2), dimnames = list(UR=lv, PC = lv, OD = lv,ISS=lv,ISL=lv))
SMS.prob <- array(c(0.5,0.5), dim = 2, dimnames = list(SMS=lv))
IRP.prob <- array(c(0.5,1-0.5,0.5,0.5), dim = c(2,2), dimnames = list(IRP=lv,SMS=lv))
PF.prob <- array(c(0.892857143,1-0.892857143), dim = 2, dimnames = list(PF=lv))
UCD.prob <- array(c(0.954545455,0.045454545,0.833333333,0.166666667), dim = c(2,2), dimnames = list(UCD=lv, OD = lv))
IPS.prob <- array(c(0.98757764,1-0.98757764,1,0,0.9375,1-0.9375,1,0,1,0,0.5,0.5,0.666666667,1-0.666666667,1,0,1,0,1,0,1,0,rep(0.5,10),1,0,1,0,1,0,1,0,rep(0.5,8),1,0,rep(0.5,12),0,1),dim = c(2,2,2,2,2,2), dimnames = list(IPS = lv, IRR = lv, IRP = lv, UCD = lv, IS = lv, UR = lv))
PEC.prob <- array(c(0.976588629,1-0.976588629), dim = 2, dimnames = list(PEC=lv))
LNE.prob <- array(c(0.974910394,1-0.974910394,0.95,1-0.95), dim = c(2,2), dimnames = list(LNE=lv, IRR = lv))
DE.prob <- array(c(0.92920354,1-0.92920354,0.945205479,1-0.945205479), dim = c(2,2), dimnames = list(DE=lv, LNE = lv))
IER.prob <- array(c(0.890410959,1-0.890410959,0.857142857,0.142857143), dim = c(2,2), dimnames = list(IER=lv, PEC = lv))
WD.prob <- array(c(0.855633803,1-0.855633803,0.666666667,1-0.666666667), dim = c(2,2), dimnames = list(WD=lv, PF = lv))
IO.prob <- array(c(0.821305842,1-0.821305842,0.875,1-0.875), dim = c(2,2), dimnames = list(IO=lv, DE = lv))
INE.prob <- array(c(0.948805461,1-0.948805461,0.833333333,1-0.833333333), dim = c(2,2), dimnames = list(INE=lv, IPS = lv))
MIJ.prob <- array(c(0.921875,1-0.921875,0.976744186,1-0.976744186), dim = c(2,2), dimnames = list(MIJ=lv, ICC = lv))
PSA.prob <- array(c(0.87434555,1-0.87434555,1,0,1,0,0.5,0.5,0.866666667,1-0.866666667,0.5,0.5,0,1,0.5,0.5,0.846153846,1-0.846153846,0.5,0.5,0.5,0.5,0.5,0.5,1,0,0.5,0.5,0.5,0.5,0.5,0.5,0.933333333,1-0.933333333,rep(0.5,6),1,0,rep(0.5,22),1,0,1,0,rep(0.5,28),1,0,rep(0.5,14),1,0,rep(0.5,12),0,1), dim = c(2,2,2,2,2,2,2),dimnames = list(PSA = lv, UCD = lv, DE = lv, MIJ = lv, INE = lv, IO = lv, LNE = lv))
BW.prob <- array(c(0.725752508,1-0.725752508), dim = 2, dimnames = list(BW=lv))
PFC.prob <- array(c(0.830827068,1-0.830827068,0.606060606,1-0.606060606), dim = c(2,2), dimnames = list(PFC=lv, PSA = lv))
GRO.prob <- array(c(0.9375,1-0.9375,0.5,1-0.5), dim = c(2,2), dimnames = list(GRO=lv, PFC = lv))
DAM.prob <- array(c(rep(0.5,32),0.614035088,1-0.614035088,0.7,0.3,0.736842105,1-0.736842105,0.5,0.5,0.583333333,1-0.583333333,0.5,0.5,0.666666667,1-0.666666667,0.5,0.5,0.64516129,1-0.64516129,0.428571429,1-0.428571429,1,0,0.5,0.5,0.25,0.75,0.5,0.5,1,0,1,0), dim = c(2,2,2,2,2,2), dimnames = list(DAM =lv, LNE = lv, US = lv, MIJ = lv, BW = lv, GRO = lv))
US.prob <- array(c(0.959821429,1-0.959821429,0.931034483,1-0.931034483,0.853658537,1-0.853658537,0.6,0.4),dim=c(2,2,2),dimnames = list(US =lv, PSM=lv, WD = lv))

grounding.cpt <- list(PC = PC.prob, PSQ = PSQ.prob, LSM = LSM.prob, LID = LID.prob, ILC = ILC.prob,
                      ISS = ISS.prob, ISL = ISL.prob, UPA = UPA.prob, IWP = IWP.prob, OD = OD.prob,
                      UDL = UDL.prob, LT = LT.prob, IS = IS.prob, ICC = ICC.prob, PSM = PSM.prob,
                      IRR = IRR.prob,UR=UR.prob, IRP = IRP.prob, PF = PF.prob,
                      UCD = UCD.prob, IPS = IPS.prob, PEC = PEC.prob, LNE = LNE.prob, DE = DE.prob,
                      IER = IER.prob, WD = WD.prob, IO = IO.prob, INE = INE.prob,
                      MIJ = MIJ.prob,PSA = PSA.prob, SMS = SMS.prob,
                      BW = BW.prob, PFC = PFC.prob, GRO = GRO.prob,
                      DAM = DAM.prob, US = US.prob)

grounding <- custom.fit(grounding.dag,grounding.cpt)
usethis::use_data(grounding, overwrite = TRUE)

## T4 given uniform since not available and T3 not present. Mismatch paper excel... follow the excel.
