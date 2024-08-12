library(bnlearn)

salmonella.dag2 = model2network("[SMX][CHL|SMX][TMP|SMX][AMP|SMX][GEN|TMP][CIP|GEN][NAL|CIP][TET|SMX:AMP][CTX|AMP][CAZ|CTX]")

lv = c("r","s")

SMX.prob <- array(c(0.628,0.372), dim = 2, dimnames = list(SMX=lv))
AMP.prob <- array(c(0.805,0.195,0.087,0.913), dim = c(2,2), dimnames = list(AMP=lv,SMX=lv))
TET.prob <- array(c(0.950,1-0.950,0.864,0.136,0.892,0.108,0.487,0.513), dim = c(2,2,2), dimnames = list(TET=lv,SMX=lv,AMP=lv))
CHL.prob <- array(c(0.310,0.690,0.000,1.000), dim = c(2,2), dimnames = list(CHL=lv,SMX=lv))
TMP.prob <- array(c(0.413,0.587,0.028,0.972), dim = c(2,2), dimnames = list(TMP=lv,SMX=lv))
GEN.prob <- array(c(0.148,0.852,0.030,0.970), dim = c(2,2), dimnames = list(GEN=lv,TMP=lv))
CIP.prob <- array(c(0.452,0.548,0.129,0.871), dim = c(2,2), dimnames = list(CIP=lv,GEN=lv))
NAL.prob <- array(c(0.693,0.307,0.002,0.998), dim = c(2,2), dimnames = list(NAL=lv,CIP=lv))
CTX.prob <- array(c(0.030,0.970,0.000,1.000), dim = c(2,2), dimnames = list(CTX=lv,AMP=lv))
CAZ.prob <- array(c(0.273,0.727,0.000,1.000), dim = c(2,2), dimnames = list(CAZ=lv,CTX=lv))

salmonella.cpt2 <- list(GEN = GEN.prob,CIP = CIP.prob,CTX = CTX.prob, NAL = NAL.prob, CHL = CHL.prob,
                        TET = TET.prob, SMX = SMX.prob, AMP = AMP.prob, TMP = TMP.prob, CAZ = CAZ.prob)

salmonella2 <- custom.fit(salmonella.dag2,salmonella.cpt2)
usethis::use_data(salmonella2, overwrite = TRUE)
