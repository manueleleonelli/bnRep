# Safety analysis of proton exchange membrane water electrolysis system

library(bnlearn)
electrolysis.dag <- model2network("[T][C][V][H][P][SMT][SBT][IRF][GRE][IOA][HOR][RGP|HOR:IOA:HCF][HCF|SBT:SMT:GP][GP|H:P:T:V:C][FPR|HOR:IOA:HCF][F|GRE:IRF:IOA:HCF]")

lv <- c("High","Low")
lv1 <- c("Yes","No")

T.prob <- array(c(0.10,0.90),dim=2,dimnames=list(`T`=lv))
C.prob <- array(c(0.65,0.35),dim=2,dimnames=list(C=lv))
V.prob <- array(c(0.21,0.79),dim=2,dimnames=list(V=lv))
H.prob <- array(c(0.99999,0.00001),dim=2,dimnames=list(H=lv))
P.prob <- array(c(0.04,0.96),dim=2,dimnames=list(P=lv))
SMT.prob <- array(c(0.5,0.5),dim=2,dimnames=list(SMT=lv1))
SBT.prob <- array(c(0.5,0.5),dim=2,dimnames=list(SBT=lv1))
IRF.prob <- array(c(0.1,0.9),dim=2,dimnames=list(IRF=lv1))
GRE.prob <- array(c(0.5,0.5),dim=2,dimnames=list(GRE=lv1))
IOA.prob <- array(c(0.5,0.5),dim=2,dimnames=list(IOA=lv1))
HOR.prob <- array(c(0.5,0.5),dim=2,dimnames=list(HOR=lv1))
RGP.prob <- array(c(0.1,0.9,0.5,0.5,0.5,0.5,1,0,0,1,0,1,0,1,0,1),dim=c(2,2,2,2),dimnames=list(RGP=lv1,HOR=lv1,IOA=lv1,HCF=lv1))
HCF.prob <- array(c(0,1,0.1,0.9,0.5,0.5,1,0,0,1,0,1,0,1,0,1),dim=c(2,2,2,2),dimnames=list(HCF=lv1,SBT=lv1,SMT=lv1,GP=lv1))
FPR.prob <- array(c(0.1,0.9,0.5,0.5,0.5,0.5,1,0,0,1,0,1,0,1,0,1),dim=c(2,2,2,2),dimnames=list(FPR= lv1, HOR=lv1,IOA=lv1,HCF=lv1))
GP.prob <- array(c( 0.8705, 0.1295,
                    0.8667, 0.1333,
                    0.0970, 0.9030,
                    0.0458, 0.9542,
                    0.8725, 0.1275,
                    0.8728, 0.1272,
                    0.0612, 0.9388,
                    0.0612, 0.9388,
                    0.0301, 0.9699,
                    0.8906, 0.1094,
                    0.0301, 0.9699,
                    0.0301, 0.9699,
                    0.8947, 0.1053,
                    0.8946, 0.1054,
                    0.0462, 0.9538,
                    0.0462, 0.9538,
                    0.8667, 0.1333,
                    0.8667, 0.1333,
                    0.0970, 0.9030,
                    0.0458, 0.9542,
                    0.8758, 0.1242,
                    0.8667, 0.1333,
                    0.0612, 0.9388,
                    0.0612, 0.9388,
                    0.8667, 0.1333,
                    0.8757, 0.1243,
                    0.7356, 0.2644,
                    0.7356, 0.2644,
                    0.8974, 0.1026,
                    0.8973, 0.1027,
                    0.7287, 0.2713,
                    0.7288, 0.2712),dim=rep(2,6),dimnames=list(GP=lv1,H=lv,P=lv,`T`=lv,V=lv,C=lv))

F.prob <- array(c(0,1,0.1,0.9,0.5,0.5,0.9,0.1,0.1,0.9,0.5,0.5,1,0,rep(c(0,1),8)),dim=rep(2,5),dimnames=list(`F`=lv1,GRE=lv1,IRF=lv1,IOA=lv1,HCF=lv1))
probs <- list(`T`=T.prob,C=C.prob,V=V.prob,H=H.prob,P=P.prob,SMT=SMT.prob,SBT=SBT.prob,IRF=IRF.prob,GRE=GRE.prob,IOA=IOA.prob,HOR=HOR.prob,RGP=RGP.prob,
              HCF=HCF.prob,GP=GP.prob,FPR=FPR.prob, `F` = F.prob)

electrolysis <-custom.fit(electrolysis.dag,probs)

usethis::use_data(electrolysis, overwrite = TRUE)
