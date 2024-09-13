
library(bnlearn)

dag <- model2network("[VerbalAggression|Narcissism:EmotionalSusceptibility][PhysicalAggression|Psychopathy][Hostility|Narcissism:Psychopathy:SelfOrientedEmotionalReactivity][Anger|Psychopathy:SelfOrientedEmotionalReactivity][SelfOrientedEmotionalReactivity|Machiavellianism][OtherOrientedEmotional|Psychopathy][PerspectiveTaking|Narcissism:Psychopathy][EmotionalSusceptibility|Age][Gender][Age][Psychopathy|Gender][Narcissism|Gender][Machiavellianism][Fantasy]")
lv <- c("Male","Female")

Gender <- array(c(0.58,0.42),2,list(Gender=lv))
Age <- list(coef = c("(Intercept)" = 50.4), sd = 11.6)
Psychopathy <-  list(coef = matrix(c(2.14, 1.88), ncol = 2,
                                   dimnames = list(c("(Intercept)"), NULL)),
                     sd = c(0.63, 0.65))
Narcissism<-  list(coef = matrix(c(2.15, 1.87), ncol = 2,
                                 dimnames = list(c("(Intercept)"), NULL)),
                   sd = c(0.64, 0.65))
Machiavellianism <- list(coef = c("(Intercept)" = 2.91), sd = 0.66)
Fantasy<- list(coef = c("(Intercept)" = 3.05), sd = 0.82)
EmotionalSusceptibility <- list(coef = c("(Intercept)"=3.43,"Age"=-0.01),sd=0.70)
PerspectiveTaking <- list(coef=c("(Intercept)"=3.67,"Narcissism"=0.26,"Psychopathy"=-0.37),sd=0.67)
OtherOrientedEmotional <- list(coef=c("(Intercept)"=4.21,"Psychopathy"=-0.34),sd=0.65)
SelfOrientedEmotionalReactivity <- list(coef=c("(Intercept)"=1.74,"Machiavellianism"=0.45),sd=0.71)
VerbalAggression <- list(coef=c("(Intercept)"= 2.87, "Narcissism"=0.36,"EmotionalSusceptibility"=-0.29 ), sd=0.58)
Anger<- list(coef=c("(Intercept)"= 0.69,"Psychopathy"=0.37,"SelfOrientedEmotionalReactivity"=0.40), sd=0.69)
PhysicalAggression<- list(coef=c("(Intercept)"= 1.44,"Psychopathy"=0.54), sd=0.69)
Hostility <- list(coef=c("(Intercept)"= 2.14,"Narcissism"=-0.42,"Psychopathy"=0.48,"SelfOrientedEmotionalReactivity"=0.24), sd=0.66)

darktriad <- custom.fit(dag,list(
 Gender=Gender,Age=Age,Psychopathy=Psychopathy,Narcissism=Narcissism,VerbalAggression=VerbalAggression,PhysicalAggression=PhysicalAggression,
 Machiavellianism=Machiavellianism,Fantasy=Fantasy,EmotionalSusceptibility=EmotionalSusceptibility,Hostility=Hostility,
 PerspectiveTaking=PerspectiveTaking,OtherOrientedEmotional=OtherOrientedEmotional,Anger=Anger,
 SelfOrientedEmotionalReactivity=SelfOrientedEmotionalReactivity
))


usethis::use_data(darktriad, overwrite = TRUE)
