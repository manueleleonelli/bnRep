# Influence of resampling techniques on Bayesian network performance in predicting increased algal activity

algalactivity2.dag <- model2network("[DO|Te:pH][Chl_a|N:C:DO:Te][N|DO:pH:P][P][Te|P][pH|Te][Tu|P][C|N:pH:Tu]")

lv <- c("0","1")

Chl.prob <- array(c(0.81,0.19,0.96,0.04,1,0,1,0,0.49,0.51,0.15,0.85,0.65,0.35,0.38,0.62,0.24,0.76,0.46,0.54,0.53,0.47,0.42,0.58,0.68,0.32,0,1,0.24,0.76,0.46,0.54),dim=rep(2,5),dimnames=list(Chl_a=lv,N=lv,C=lv,DO=lv,Te=lv))
DO.prob <- array(c(0.47,0.53,0.98,0.02,0.03,0.97,0.55,0.45),dim=c(2,2,2),dimnames=list(DO=lv,Te=lv,pH=lv))
N.prob <- array(c(0.65,0.35,0.59,0.41,0.81,0.19,0.69,0.31,0.18,0.82,0.15,0.85,0.85,0.15,0.28,0.72),dim=c(2,2,2,2),dimnames=list(N=lv,DO=lv,pH=lv,P=lv))
P.prob <- array(c(0.5,0.5),dim=c(2),dimnames=list(P=lv))
C.prob <- array(c(0.5,0.5,0.35,0.65,0.35,0.65,0.12,0.88,0.74,0.26,0.71,0.29,0.49,0.51,0.84,0.16),dim=c(2,2,2,2),dimnames=list(C=lv,N=lv,pH=lv,Tu=lv))
Te.prob <- array(c(0.39,0.61,0.61,0.39),dim=c(2,2),dimnames=list(Te=lv,P=lv))
pH.prob <- array(c(0.67,0.33,0.33,0.67),dim=c(2,2),dimnames=list(pH=lv,Te=lv))
Tu.prob <- array(c(0.64,0.36,0.37,0.63),dim=c(2,2),dimnames=list(Tu=lv,P=lv))

probs <- list(C=C.prob,Tu=Tu.prob,pH=pH.prob,Te=Te.prob,P=P.prob,Chl_a=Chl.prob,N=N.prob,DO=DO.prob)

algalactivity2 <- custom.fit(algalactivity2.dag,probs)

usethis::use_data(algalactivity2, overwrite = TRUE)

