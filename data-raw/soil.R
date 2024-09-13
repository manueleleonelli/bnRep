
library(bnlearn)

dag <- model2network("[Depth][pH|Depth][Intensity|pH][EC|Intensity:Depth][Length|EC][W|EC]")
lvDepth <-c("0-20","20-40")
lvLength <- c("Less than 20","More than 20")
lvPH <- c("Less than 7.7","More than 7.7")
lvIntensity <- c("Less than 0.3","More than 0.3")
lvEC <- c("Less than 1.4","More than 1.4")
lvW <- c("Less than 10","More than 10")

Depth <- array(c(0.5,0.5),2,list(Depth=lvDepth))
pH <- array(c(0.133,0.867,1,0),c(2,2),list(pH=lvPH,Depth=lvDepth))
Intensity <- array(c(0.647,0.353,0.307,0.693),c(2,2),list(Intensity=lvIntensity,pH=lvPH))
EC <- array(c(0,1,1,0,1,0,1,0),c(2,2,2),list(EC=lvEC,Intensity=lvIntensity,Depth=lvDepth))
W <- array(c(0.05,0.95,0.5,0.5),c(2,2),list(W=lvW,EC=lvEC))
Length <- array(c(0.5,0.5,1,0),c(2,2),list(Length=lvLength,EC=lvEC))

soil <- custom.fit(dag,list(
Depth=Depth, pH=pH,Intensity=Intensity,EC=EC,Length=Length,W=W
))


usethis::use_data(soil, overwrite = TRUE)
