# A machine learning based approach for predicting blockchain adoption in supply chain

#library(bnlearn)

blockchain.dag = model2network("[RA][TMS][COMPB][TE][PFB][COMPX][TKH][CP][PR][PU|PEOU:RA:COMPB:TMS:TE][PEOU|TE:COMPX:PFB:TKH][BA|PEOU:PU:CP:PR]")

lv = c("Low","High")

RA.prob <- array(c(0.625,1-0.625), dim = 2, dimnames = list(RA=lv))
TMS.prob <- array(c(0.66,1-0.66), dim = 2, dimnames = list(TMS=lv))
COMPB.prob <- array(c(0.67,1-0.67), dim = 2, dimnames = list(COMPB=lv))
TE.prob <- array(c(0.86,1-0.86), dim = 2, dimnames = list(TE=lv))
PFB.prob <- array(c(0.73,1-0.73), dim = 2, dimnames = list(PFB=lv))
COMPX.prob <- array(c(0.33,1-0.33), dim = 2, dimnames = list(COMPX=lv))
TKH.prob <- array(c(0.26,1-0.26), dim = 2, dimnames = list(TKH=lv))
CP.prob <- array(c(0.2,1-0.2), dim = 2, dimnames = list(CP=lv))
PR.prob <- array(c(0.27,1-0.27), dim = 2, dimnames = list(PR=lv))
PEOU.prob <- array(c(1,0,1,0,0.5,0.5,0.8,0.2,0.9,0.1,0.75,0.25,0.5,0.5,0.42,0.58,0.5,0.5,0.25,0.75,0.6,0.4,0,1,0.57,0.43,0.7,0.3,0.24,0.76,0.36,0.64), dim=c(2,2,2,2,2), dimnames = list(PEOU=lv, TE= lv, COMPX=lv, PFB=lv, TKH=lv))
BA.prob <- array(c(1,0,0.5,0.5,0.5,0.5,0.06,0.94,0,1,0,1,0.13,0.87,0.07,0.93,1,0,0,1,0,1,0,1,0,1,0.15,0.85,0.105,0.895,0.03,0.97), dim=c(2,2,2,2,2), dimnames = list(BA=lv, PR= lv, CP=lv, PU=lv, PEOU=lv))
PU.prob <- array(c(0.33,0.67,0,1,0.67,0.33,0.33,0.67,0,1,1,0,0.6,0.4,0.33,0.67,0.5,0.5,0.25,0.75,0.45,0.55,0.25,0.75,0,1,0,1,0.35,0.65,0,1,0.5,0.5,0,1,0.33,0.67,0,1,0.5,0.5,0,1,0.5,0.5,0,1,0.25,0.75,0,1,0.53,0.47,0,1,0.2,0.8,0,1,0.07,0.93,0,1), dim=c(2,2,2,2,2,2), dimnames = list(PU=lv, TE= lv, TMS=lv, COMPB=lv, RA = lv, PEOU=lv))


blockchain.cpt <- list(RA = RA.prob, TMS = TMS.prob, COMPB = COMPB.prob, TE = TE.prob, PFB=PFB.prob,
                       COMPX=COMPX.prob, TKH=TKH.prob, PEOU= PEOU.prob, PU=PU.prob,
                       CP= CP.prob, PR= PR.prob, BA=BA.prob)

blockchain <- custom.fit(blockchain.dag,blockchain.cpt)

usethis::use_data(blockchain, overwrite = TRUE)
