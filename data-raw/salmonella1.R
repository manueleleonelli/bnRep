# Patterns of antimicrobial resistance in Salmonella isolates from fattening pigs in Spain
library(bnlearn)

salmonella.dag1 = model2network("[GEN][CIP][CTX][NAL|CIP][CHL|GEN][FFC|CHL][TET|GEN:CHL]")

lv = c("r","s")

GEN.prob <- array(c(0.064,1-0.064), dim = 2, dimnames = list(GEN=lv))
CIP.prob <- array(c(0.114,1-0.114), dim = 2, dimnames = list(CIP=lv))
CTX.prob <- array(c(0.018,1-0.018), dim = 2, dimnames = list(CTX=lv))
NAL.prob <- array(c(0.779,1-0.779,0.001,0.999), dim = c(2,2), dimnames = list(NAL=lv,CIP=lv))
CHL.prob <- array(c(0.635,0.365,0.212,0.788), dim = c(2,2), dimnames = list(CHL=lv,GEN=lv))
FFC.prob <- array(c(0.221,0.779,0.000,1.000), dim = c(2,2), dimnames = list(FFC=lv,CHL=lv))
TET.prob <- array(c(0.979,1-0.979,0.961,0.039,1.000,0.000,0.776,0.224), dim = c(2,2,2), dimnames = list(TET=lv,GEN=lv,CHL=lv))

salmonella.cpt1 <- list( GEN = GEN.prob,CIP = CIP.prob,CTX = CTX.prob, NAL = NAL.prob, CHL = CHL.prob,
                         FFC = FFC.prob, TET = TET.prob)

salmonella1 <- custom.fit(salmonella.dag1, salmonella.cpt1)

usethis::use_data(salmonella1, overwrite = TRUE)

