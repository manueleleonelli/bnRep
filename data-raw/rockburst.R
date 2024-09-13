
library(bnlearn)

dag <- model2network("[Rockburst][MMAV|Rockburst][SRAV|Rockburst:MMAV][ASAV|Rockburst:SRAV][DSDAV|Rockburst:ASAV][SEAV|Rockburst:DSDAV]")
lv <- c("No", "Yes")
lv1 <- c("Slight","Medium","Strong")
lv2 <- c("Small", "Medium", "Big")

Rockburst <- array(0.01*c(72.609,27.391),2,list(Rockburst=lv))
MMAV <- array(0.01*c(91.667,7.292,1.042,6.349,44.444,49.206),c(3,2),list(MMAV=lv1,Rockburst=lv))
SRAV <- array(0.01*c(77.778,21.111,1.111,72.222,22.222,5.556,44.444,44.444,11.112,16.667,74.561,8.772,100/3,100/3,100/3,0.794,31.746,67.640),c(3,2,3),list(SRAV=lv2,Rockburst=lv,MMAV=lv1))
ASAV <- array(0.01*c(45.333,25.333,29.334,3.030,12.121,84.849,66.666,16.667,16.667,7.752,49.612,42.636,100/3,100/3,100/3,41.667,47.916,10.417),c(3,2,3),list(ASAV=lv2,Rockburst=lv,SRAV=lv2))
DSDAV <- array(0.01*c(96.078,1.961,1.961,37.255,49.020,13.725,54.167,29.167,16.666,11.404,56.140,32.456,14.815,59.259,25.926,1.75,20.430,78.495),c(3,2,3),list(DSDAV=lv2,Rockburst=lv,ASAV=lv2))
SEAV <- array(0.01*c(96.970,1.515,1.515,21.212,66.667,12.121,79.167,16.666,4.167,6.481,64.815,28.704,33.333,58.334,8.333,0.854,21.368,77.778),c(3,2,3),list(SEAV=c("Low","Medium","High"),Rockburst=lv,DSDAV=lv2))

rockburst <- custom.fit(dag,list(
  Rockburst=Rockburst,MMAV=MMAV,SRAV=SRAV,ASAV=ASAV,DSDAV=DSDAV,SEAV=SEAV
))


usethis::use_data(rockburst, overwrite = TRUE)
