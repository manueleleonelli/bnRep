#library(bnlearn)

dag = model2network("[PersonnelSuffocation|UA:UP:US:OI][UA|N25:N26:N29:N20:N27:N8:N32:N22:N23:N24:N28:N30][US|N16:N17:N18:N4:N37:N34:N35:N36:N38:N39][OI|N13:N10:N11:N12:N14][UP|N40:N33:N5][N4][N5][N8][N10][N11][N12][N13][N14][N16][N17][N18][N20][N22][N23][N24][N25][N26][N27][N28][N29][N30][N32][N33][N34][N35][N36][N37][N38][N39][N40]")

N4 = list(coef = c("(Intercept)" = 0.8901), sd = sqrt(0.2967))
N5 = list(coef = c("(Intercept)" = 0.3579), sd = sqrt(0.1193))
N8 = list(coef = c("(Intercept)" = 0.5318), sd = sqrt(0.1773))
N10 = list(coef = c("(Intercept)" = 0.5028), sd = sqrt(0.1676))
N11 = list(coef = c("(Intercept)" = 0.3797), sd = sqrt(0.1266))
N12 = list(coef = c("(Intercept)" = 0.3608), sd = sqrt(0.1203))
N13 = list(coef = c("(Intercept)" = 1), sd = sqrt(0.3333))
N14 = list(coef = c("(Intercept)" = 0.2380), sd = sqrt(0.0793))
N16 = list(coef = c("(Intercept)" = 0.9855), sd = sqrt(0.3285))
N17 = list(coef = c("(Intercept)" = 0.9855), sd = sqrt(0.3285))
N18 = list(coef = c("(Intercept)" = 0.9855), sd = sqrt(0.3285))
N20 = list(coef = c("(Intercept)" = 0.5608), sd = sqrt(0.1869))
N22 = list(coef = c("(Intercept)" = 0.4158), sd = sqrt(0.1386))
N23 = list(coef = c("(Intercept)" = 0.4158), sd = sqrt(0.1386))
N24 = list(coef = c("(Intercept)" = 0.4158), sd = sqrt(0.1386))
N25 = list(coef = c("(Intercept)" = 0.7120), sd = sqrt(0.2373))
N26 = list(coef = c("(Intercept)" = 0.5799), sd = sqrt(0.1933))
N27 = list(coef = c("(Intercept)" = 0.5509), sd = sqrt(0.1836))
N28 = list(coef = c("(Intercept)" = 0.4158), sd = sqrt(0.1386))
N29 = list(coef = c("(Intercept)" = 0.7120), sd = sqrt(0.2373))
N30 = list(coef = c("(Intercept)" = 0.4158), sd = sqrt(0.1386))
N32 = list(coef = c("(Intercept)" = 0.4738), sd = sqrt(0.1579))
N33 = list(coef = c("(Intercept)" = 0.4535), sd = sqrt(0.1512))
N34 = list(coef = c("(Intercept)" = 0.5832), sd = sqrt(0.1944))
N35 = list(coef = c("(Intercept)" = 0.5687), sd = sqrt(0.1896))
N36 = list(coef = c("(Intercept)" = 0.5687), sd = sqrt(0.1896))
N37 = list(coef = c("(Intercept)" = 0.8816), sd = sqrt(0.2939))
N38 = list(coef = c("(Intercept)" = 0.5687), sd = sqrt(0.1896))
N39 = list(coef = c("(Intercept)" = 0.5687), sd = sqrt(0.1896))
N40 = list(coef = c("(Intercept)" = 0.8671), sd = sqrt(0.2890))
UP = list(coef=c("(Intercept)"=0, "N40"= 0.5166, "N33" = 0.2702, "N5"=0.2132),sd=sqrt(0.5166^2*0.2890 + 0.2702^2*0.1512 + 0.2132^2*0.1193))
OI = list(coef=c("(Intercept)"=0, "N13"=0.4030, "N10"=0.2026,"N11"=0.1530,"N12"=0.1454,"N14"=0.0959), sd=sqrt(0.4030^2*0.3333 + 0.2026^2*0.1676 + 0.1530^2*0.1266 +0.1454^2*0.1203 + 0.0959^2*0.0793))
US = list(coef=c("(Intercept)"=0, "N16"=0.1299, "N17"= 0.1299, "N18" = 0.1299, "N4"=0.1173,"N37"=0.1162,"N34"=0.0769,"N35"=0.0750, "N36"=0.0750,"N38"=0.0750,"N39"=0.0750), sd=sqrt(0.1299^2*0.3285 + 0.1299^2*0.3285 + 0.1299^2*0.3285 + 0.1173^2*0.2967 + 0.1162^2*0.2939 + 0.0769^2*0.1944 + 0.075^2*0.1896 +0.075^2*0.1896 +0.075^2*0.1896 +0.075^2*0.1896 ) )
UA = list(coef=c("(Intercept)"=0, "N25"=0.1148,"N26"=0.0935,"N29"=0.1148,"N20"=0.0904,"N27"=0.0888,"N8"=0.0858,"N32"=0.0764,"N22"=0.0671,"N23"=0.0671,"N24"=0.0671,"N28"=0.0671,"N30"=0.0671),
          sd=sqrt(0.1148^2*0.2373   + 0.0935^2*0.1933   +0.1148^2*0.2373  +0.0904^2*0.1869 + 0.0888^2*0.1836 + 0.0858^2*0.1773 +
                    0.0764^2*0.1579 + 0.0671^2*0.1386 + 0.0671^2*0.1386 + 0.0671^2*0.1386 + 0.0671^2*0.1386 + 0.0671^2*0.1386 ))
PersonnelSuffocation <- list(coef=c("(Intercept)"=0, "UA"=0.3455,"UP"=0.0935,"US"=0.4227,"OI"=0.1383), sd=sqrt(0.3455^2*0.1275415 + 0.0935^2*0.3059224 + 0.4227^2*0.1734811 + 0.1383^2*0.2593193))

suffocation <- custom.fit(dag, dist = list(
  N4=N4,N5=N5,N8=N8,N10=N10,N11=N11,N12=N12,N13=N13,N14=N14,N16=N16,N17=N17,N18=N18,N20=N20,N22=N22,
  N23=N23,N24=N24,N25=N25,N26=N26,N27=N27,N28=N28,N29=N29,N30=N30,N32=N32,N33=N33,N34=N34,N35=N35,N36=N36,N37=N37,N38=N38,N39=N39,
  N40=N40,UP=UP,OI=OI,US=US,UA=UA,PersonnelSuffocation=PersonnelSuffocation
))

usethis::use_data(suffocation, overwrite = TRUE)
