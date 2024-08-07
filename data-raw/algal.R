# Seasonal forecasting of lake water quality and algal bloom risk using a continuous Gaussian Bayesian network
## library(bnlearn)
algal.dag = model2network("[TP_PS][WindSpeed][RainSum][Colour_PS][ChiA_PS|TP_PS][Colour|Colour_PS:RainSum][TP|TP_PS][ChiA|TP:WindSpeed:ChiA_PS][Cyanobacteria|Colour:ChiA]")

lv = c("Low","High")
lv1 = c("Low","Medium","High")

TP_PS.prob <- array(c(0.61,0.39),dim = 2, dimnames = list(TP_PS = lv))
Colour_PS.prob <- array(c(0.34,0.33,0.33),dim = 3, dimnames = list(Colour_PS = lv1))
WindSpeed.prob <- array(c(0.5,0.5),dim = 2, dimnames = list(WindSpeed = lv))
RainSum.prob <- array(c(0.41,0.59),dim = 2, dimnames = list(RainSum = lv))
ChiA_PS.prob <- array(c(0.76,0.24,0.33,0.67), dim=c(2,2),dimnames = list(ChiA_PS = lv, TP_PS=lv))
TP.prob <- array(c(0.64,0.36,0.33,0.67), dim=c(2,2),dimnames = list(TP = lv, TP_PS=lv))
ChiA.prob <- array(c(0.89,0.11,0.93,0.07,0.67,0.33,0.86,0.14,0.33,0.67,0.33,0.67,0.33,0.67,0.24,0.76), dim=c(2,2,2,2),dimnames = list(ChiA = lv, WindSpeed = lv, TP=lv, ChiA_PS=lv))
Colour.prob <- array(c(0.88,0.12,0.81,0.19,0.50,0.50,0.83,0.17,0.50,0.50,0.31,0.69), dim=c(2,3,2),dimnames = list(Colour = lv, Colour_PS = lv1, RainSum=lv))
Cyanobacteria.prob <- array(c(0.63,0.37,0.19,0.81,0.70,0.30,0.50,0.50), dim=c(2,2,2),dimnames = list(Cyanobacteria = lv, ChiA=lv, Colour=lv))


algal.cpt <- list(TP_PS=TP_PS.prob,Colour_PS=Colour_PS.prob,WindSpeed=WindSpeed.prob,
                  RainSum=RainSum.prob, ChiA_PS=ChiA_PS.prob,TP=TP.prob,ChiA=ChiA.prob,
                  Colour=Colour.prob,Cyanobacteria=Cyanobacteria.prob)

algal1 <- custom.fit(algal.dag,algal.cpt)

usethis::use_data(algal1, overwrite = TRUE)
