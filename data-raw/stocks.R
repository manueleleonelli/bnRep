library(bnlearn)

dag <- model2network("[ULKER|KERVT:ZOREN][ULUUN|LKMNH][TUKAS|KERVT:PENGD][AEFES|ZOREN][CCOLA|AEFES:ULKER][KERVT|ULUUN][PENGD|KERVT][LKMNH][MPARK|ULKER:AEFES:LKMNH:ODAS:AKSEN][ENJSA|AEFES:KERVT:AKSEN:ZOREN][ODAS|TUKAS][AKSEN|ODAS:ZOREN][ZOREN|ODAS]")

ULKER <- list(coef=c("(Intercept)"=0.000195145,"KERVT"=0.206911,"ZOREN"=0.191251),sd=sqrt(0.0204869))
ULUUN<- list(coef=c("(Intercept)"=0.00449469,"LKMNH"=0.235237),sd=sqrt(0.0397044))
TUKAS<- list(coef=c("(Intercept)"=0.00087602,"KERVT"=0.355931,"PENGD"=0.110216),sd=sqrt(0.0282039))
AEFES<- list(coef=c("(Intercept)"=0.00135835, "ZOREN"=0.28504),sd=sqrt(0.0224898))
CCOLA<- list(coef=c("(Intercept)"=0.00152911, "ULKER"=0.225405,"AEFES"=0.351159),sd=sqrt(0.0206697))
KERVT<- list(coef=c("(Intercept)"=0.0015836, "ULUUN" = 0.284235),sd=sqrt(0.0293089))
PENGD<- list(coef=c("(Intercept)"=0.00112535, "KERVT"=0.680582),sd=sqrt(0.0323557))
LKMNH<- list(coef=c("(Intercept)"=0.00361286),sd=sqrt(0.0345702))
MPARK<- list(coef=c("(Intercept)"=0.0001279,"ULKER"= 0.192566, "AEFES"=0.205706 , "LKMNH"= 0.29696, "ODAS"=0.0683476 , "AKSEN"=0.117322),sd=sqrt(0.02492))
ENJSA<- list(coef=c("(Intercept)"=0.000741325,"AEFES"=0.148784, "KERVT"=0.113066, "AKSEN"=0.134633 , "ZOREN"=0.184162),sd=sqrt(0.0201912))
ODAS<- list(coef=c("(Intercept)"=0.00295516, "TUKAS"=0.324198),sd=sqrt(0.0335774))
AKSEN<- list(coef=c("(Intercept)"=0.00340639,"ODAS"= 0.232151, "ZOREN"=0.296668),sd=sqrt(0.0261252))
ZOREN <- list(coef=c("(Intercept)"=0.00148704,"ODAS"=0.450508),sd=sqrt(0.0271039))


stocks <- custom.fit(dag,list(
  ULKER=ULKER,ULUUN=ULUUN,TUKAS=TUKAS,AEFES=AEFES,CCOLA=CCOLA,KERVT=KERVT,PENGD=PENGD,
  LKMNH=LKMNH,MPARK=MPARK,ENJSA=ENJSA,ODAS=ODAS,AKSEN=AKSEN,ZOREN=ZOREN
))


usethis::use_data(stocks, overwrite = TRUE)
