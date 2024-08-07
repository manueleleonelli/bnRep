# Seasonal forecasting of lake water quality and algal bloom risk using a continuous Gaussian Bayesian network

## Seasonal forecasting of lake water quality and algal bloom risk using a continuous Gaussian Bayesian network
#library(bnlearn)

algal.dag = model2network("[TP_PS][WindSpeed][RainSum][Colour_PS][ChiA_PS|TP_PS][Colour|Colour_PS:RainSum][TP|TP_PS][ChiA|TP:WindSpeed:ChiA_PS][Cyanobacteria|Colour:ChiA]")


distTP_PS = list(coef = c("(Intercept)" = 30), sd = 5.2)
distWindSpeed = list(coef = c("(Intercept)" = 3.6), sd = 0.25)
distRainSum = list(coef = c("(Intercept)" = 520), sd = 100)
distColour_PS = list(coef = c("(Intercept)" = 41), sd = 17)
distChiA_PS = list(coef = c("(Intercept)" = -2.6, "TP_PS" = 0.62), sd = 4.7)
distTP = list(coef = c("(Intercept)" = 11, "TP_PS" = 0.61), sd = 3.8)
distColour = list(coef = c("(Intercept)" = -7.7, "Colour_PS" = 0.81, "RainSum" = 0.028), sd = 8.9)
distChiA = list(coef = c("(Intercept)" = 15, "WindSpeed" = -5.1, "ChiA_PS" = 0.33, "TP"=0.47), sd = 3.7)
distCyanobacteria = list(coef = c("(Intercept)" = -1.8, "Colour" = -0.024, "ChiA" = 0.17), sd = 0.74)

algal2 <- custom.fit(algal.dag, dist = list(
  TP_PS=distTP_PS,Colour_PS=distColour_PS,WindSpeed=distWindSpeed,
  RainSum=distRainSum, ChiA_PS=distChiA_PS,TP=distTP,ChiA=distChiA,
  Colour=distColour,Cyanobacteria=distCyanobacteria
))

usethis::use_data(algal2, overwrite = TRUE)
