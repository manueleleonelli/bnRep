D50 <- c(0.33,0.33,0.33,0.33,0.33,0.33,0.3,0.3,0.058,0.073,0.052,0.045,0.16,0.053,0.072,0.042,0.095,0.069,0.082,0.072,0.055,0.067,0.13,0.062,0.045,0.051,0.10,0.07,0.08,0.02,0.016,0.016,0.25,0.3,0.17,0.17,0.17,0.14,0.14,0.16,0.16,0.16,0.12,0.17,0.32,0.48,0.48,0.48,0.2,0.14,0.17,0.17,0.31,0.18,0.18,0.17,0.17,0.17,0.26,0.26,0.16,0.14,0.14,0.16,0.16,0.08,0.07,0.08,0.08,0.1,0.28,0.16,0.16,0.21,0.32,0.13,0.22,0.067,0.067,0.062,0.062,0.067,0.067,0.067,0.067,0.067,0.2,0.2,0.2,0.2,0.2,0.11,0.11,0.07,0.15,0.32,0.32,0.32,0.32,0.32,0.32,0.1,0.1,0.1,0.1,0.1,0.253,0.275,0.361,0.35,0.16,0.07,0.27,0.26,0.3,0.3,0.22,0.22,0.22)
sigmavPrime <- c(35.3,51,81.4,61.8,78.5,117.1,45.1,49,166.1,182.6,119.7,138.9,161.7,170.7,202.1,86.8,146.7,152.7,190.2,95.8,103.3,146.7,166.2,175.2,190.2,119.7,130.2,50,41.2,76.5,45.6,105.2,83.4,90.2,16.7,20.6,24.5,33.3,42.2,51,56.9,100,34.3,26.5,39.2,20.6,25.5,32.4,108.9,73.5,76.5,81.4,36.3,46.1,59.8,21.6,25.5,29.4,57.9,65.7,43.1,46.1,48.1,34.3,38.2,79.4,51,103.9,107.9,52,100,43.1,50,51,66.7,47.1,75.5,110.6,120.4,54.3,55.3,104.6,109.7,101.8,104.6,106.5,47.1,53.9,62.8,71.6,80.4,44.5,44.5,13.9,31.6,47.1,53,63.7,51,65.7,73.5,43.1,53.1,63,72.8,92.4,88.5,67.2,78.9,100.1,83.6,66.2,87.1,100.6,82.4,84.6,50.5,50.5,54.9)
M <- c(rep(7.5,8),rep(6.4,19),rep(7.3,5),rep(7.8,54),rep(7.2,5),rep(6.6,4),rep(7.7,6),rep(5.9,5),rep(7.1,13))
amax <- c(rep(0.16,8),rep(0.5,19),rep(0.15,5),rep(0.4,17),rep(0.2,18),rep(0.1,4),rep(0.2,15),rep(0.22,5),rep(0.6,2),0.2,0.2,rep(0.23,6),rep(0.25,5),rep(0.24,5),0.16,0.29,0.29,0.29,0.29,0.27,0.3,0.3)
liquefaction <- c(rep("yes",6),"no","no",rep("yes",4),rep("no",3),"yes",rep("no",3),"yes","yes",rep("no",4),rep("yes",6),"no",rep("yes",16),"no","no",rep("yes",5),rep("no",5),rep("yes",7),rep("no",4),rep("yes",5),rep("no",3),rep("yes",6),"no",rep("yes",5),"no",rep("yes",3), rep("no",3), rep("yes",3),"no","no","yes",rep("no",6),rep("yes",8),"no")
qc <- c(3.14,1.57,5.49,5.34,7.8,9.51,7.85,14.27,6.37,6.86,3.14,0.69,9.81,8.73,9.32,0.69,10.79,13.73,6.86,1.96,0.69,0.69,4.9,9.81,15.69,1.96,1.96,0.65,0.53,0.38,1.3,0.73,5.59,7.45,0.147,0.98,4.9,2.45,2.55,3.14,5.69,8.24,4.02,
        5.39,8.83,6.86,1.16,4.16,15.46,17.42,1.62,3.58,4.9,2.85,5.94,12.98,12.81,16.27,10.39,11.07,4.9,2.2,2.6,4.31,2.94,8.83,
        1.08,15.2,6.37,8.83,18.57,3.45,2.68,4.04,5.74,1.84,7.85,4.46,5.68,2.43,1.54,2.11,2.55,2.68,1.75,7.49,5.12,3.66,3.05,1.29,
        5.12,19.9,1.8,2,4.9,9.81,15.69,15.08,4.02,7.8,8.8,4.26,4.91,2.76,5.71,7.77,19,13.94,18,13,0.75,1.9,4.7,10,8.7,6.5,5.3,6.1,26)
sigmav <- c(52,85.3,149.1,89.2,124.5,206.9,84.3,93.2,167.6,200.5,125.7,164,209.5,227.4,290.3,89.8,209.5,221.4,296.3,98.9,113.7,200.5,239.4,257.4,287.3,122.7,143.6,74.6,55.9,130.5,65.2,191,145.1,158.9,16.7,24.5,33.3,37.3,55.9,74.5,87.3,177.5,50,28.4,55.9,22.6,33.3,47.1,156.9,97.1,87.3,97.1,53.9,74.5,103,22.6,31.4,39.2,57.9,74.5,74.5,68.6,72.6,52,59.8,153,93.2,205,212.8,89.2,158.9,43.1,57.9,59.8,92.3,48.1,111.8,223.6,244.2,111.8,118.7,215.7,225.5,208.9,214.8,206.9,78.5,93.2,111.8,130.4,149.1,62.8,62.8,31.4,78.5,56.9,71.6,94.1,62.8,94.1,111.8,50.8,70.4,90,109.6,148.9,118.4,77.6,100,140.9,115,108.9,128.8,154.5,111.8,116.5,65.2,65.2,74.6)
M <- factor(cut(M,breaks = c(2,5.999,6.9999,7.9999,100000),labels=c("medium","strong","big","super")),levels=c("medium","strong","big","super"))
amax <- factor(cut(amax,breaks=c(-5,0.14999,0.29999,0.39999,500),labels=c("low","medium","high","super")))
qc <- factor(cut(qc,breaks=c(-10,3.49999,6.99999,9.9999,100000),labels=c("small","medium","big","super")))
D50 <- factor(cut(D50,breaks=c(-100,0.074999,0.424999,1.99999,500000),labels=c("small","medium","big","super")),levels=c("medium","strong","big","super"))
liquefaction <- factor(liquefaction)
sigmavPrime <- factor(cut(sigmavPrime, breaks=c(-100,49.999,99.9999,149.999,50000),labels=c("small","medium","big","super")))
sigmav <- factor(cut(sigmav,breaks=c(-100,54.999,109.9999,164.999,1000000),labels=c("small","medium","big","super")))


data <- data.frame(EartquakeMagnitude=M,PeakGroundAcceleration=amax,ConePenetrationResistance=qc,MeanGrainSize=D50,VerticalEffectiveStress=sigmavPrime,TotalVerticalStress=sigmav,LiquefactionPotential=liquefaction)


dag1 <- model2network("[LiquefactionPotential|ConePenetrationResistance:EartquakeMagnitude:PeakGroundAcceleration:TotalVerticalStress:VerticalEffectiveStress:MeanGrainSize][ConePenetrationResistance][EartquakeMagnitude][PeakGroundAcceleration][TotalVerticalStress][VerticalEffectiveStress][MeanGrainSize]")

soilliquefaction1<- bn.fit(dag1,data,method="bayes",iss=1)

dag2 <- model2network("[LiquefactionPotential|ConePenetrationResistance:PeakGroundAcceleration:TotalVerticalStress:VerticalEffectiveStress:MeanGrainSize][ConePenetrationResistance][EartquakeMagnitude][PeakGroundAcceleration|EartquakeMagnitude][TotalVerticalStress][VerticalEffectiveStress][MeanGrainSize]")

soilliquefaction2<- bn.fit(dag2,data,method="bayes",iss=1)

dag3 <- model2network("[LiquefactionPotential|ConePenetrationResistance:EartquakeMagnitude:PeakGroundAcceleration:TotalVerticalStress:VerticalEffectiveStress:MeanGrainSize][ConePenetrationResistance][EartquakeMagnitude|MeanGrainSize:VerticalEffectiveStress][PeakGroundAcceleration|EartquakeMagnitude:VerticalEffectiveStress][TotalVerticalStress][VerticalEffectiveStress|TotalVerticalStress][MeanGrainSize|ConePenetrationResistance]")

soilliquefaction3 <- bn.fit(dag3,data,method="bayes",iss=1)

dag4 <- model2network("[LiquefactionPotential|ConePenetrationResistance:VerticalEffectiveStress][ConePenetrationResistance][VerticalEffectiveStress|TotalVerticalStress:PeakGroundAcceleration][TotalVerticalStress][PeakGroundAcceleration|EartquakeMagnitude][EartquakeMagnitude|MeanGrainSize][MeanGrainSize]")
soilliquefaction4 <- bn.fit(dag4,data,method="bayes",iss=1)

usethis::use_data(soilliquefaction1, overwrite = TRUE)
usethis::use_data(soilliquefaction2, overwrite = TRUE)
usethis::use_data(soilliquefaction3, overwrite = TRUE)
usethis::use_data(soilliquefaction4, overwrite = TRUE)

