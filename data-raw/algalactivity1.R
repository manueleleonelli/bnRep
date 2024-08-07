# Influence of resampling techniques on Bayesian network performance in predicting increased algal activity

#library(bnlearn)

algalactivity1.dag <- model2network("[DO|Chl_a:Te][Chl_a][N|pH][P|N:Tu][Te][pH|Te:DO][Tu|Te:C][C|pH]")

lv <- c("0","1")

Chl.prob <- array(c(0.5,0.5),dim=2,dimnames=list(Chl_a=lv))
DO.prob <- array(c(0.5,0.5,0.57,0.43,0.05,0.95,0.63,0.37),dim=c(2,2,2),dimnames=list(DO=lv,Te=lv,Chl_a=lv))
N.prob <- array(c(0.35,0.65,0.73,0.27),dim=c(2,2),dimnames=list(N=lv,pH=lv))
P.prob <- array(c(0.83,0.17,0.47,0.53,0.7,0.3,0.18,0.82),dim=c(2,2,2),dimnames=list(P=lv,N=lv,Tu=lv))
C.prob <- array(c(0.61,0.39,0.39,0.61),dim=c(2,2),dimnames=list(C=lv,pH=lv))
Te.prob <- array(c(0.5,0.5),dim=2,dimnames=list(Te=lv))
pH.prob <- array(c(0.97,0.03,0.46,0.54,0.55,0.45,0,1),dim=c(2,2,2),dimnames=list(pH=lv,Te=lv,DO=lv))
Tu.prob <- array(c(0.22,0.78,0.44,0.56,0.61,0.39,0.74,0.26),dim=c(2,2,2),dimnames=list(Tu=lv,Te=lv,C=lv))

probs <- list(C=C.prob,Tu=Tu.prob,pH=pH.prob,Te=Te.prob,P=P.prob,Chl_a=Chl.prob,N=N.prob,DO=DO.prob)

algalactivity1 <- custom.fit(algalactivity1.dag,probs)

usethis::use_data(algalactivity1, overwrite = TRUE)
