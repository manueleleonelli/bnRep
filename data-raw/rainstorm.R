# Deduction of sudden rainstorm scenarios: integrating decision makers’ emotions, dynamic Bayesian network and DS evidence theory
library(bnlearn)

rainstorm.dag = model2network("[EmAct1][EmAct2][EmAct3][EmAct4][EmAct5][EmAct6][EmAct7][EmAct8][Sent1][Sent2][Sent3][Sent4][Sent5][Sent6][Sent7][Sent8][Scenario1|Sent1:EmAct1][Target1|Scenario1][Scenario2|Target1:Sent2:EmAct2][Target2|Scenario2][Scenario3|Target1:EmAct3:Sent3][Target3|Scenario3][Scenario4|Target2:EmAct4:Sent4][Target4|Scenario4][Scenario5|EmAct5:Sent5:Target4][Target5|Scenario5][Scenario6|EmAct6:Sent6:Target1][Target6|Scenario6][Scenario7|EmAct7:Sent7:Target6][Target7|Scenario7][Scenario10|Target7][Scenario8|EmAct8:Sent8:Target6][Target8|Scenario8][Scenario11|Target8]")

lvEm = c("Effective","Void")
lvSent = c("Optimism","Gloomy")
lvMeteo <- c("True","False")
lvScenario <- c("True","False")
lvTarget <- c("Attain","Miss")

EmAct1.prob <- array(c(0.92,0.08),dim = 2, dimnames = list(EmAct1 = lvEm))
EmAct2.prob <- array(c(0.79,0.21),dim = 2, dimnames = list(EmAct2 = lvEm))
EmAct3.prob <- array(c(0.74,0.26),dim = 2, dimnames = list(EmAct3 = lvEm))
EmAct4.prob <- array(c(0.86,0.14),dim = 2, dimnames = list(EmAct4 = lvEm))
EmAct5.prob <- array(c(0.81,0.19),dim = 2, dimnames = list(EmAct5 = lvEm))
EmAct6.prob <- array(c(0.90,0.10),dim = 2, dimnames = list(EmAct6 = lvEm))
EmAct7.prob <- array(c(0.93,0.07),dim = 2, dimnames = list(EmAct7 = lvEm))
EmAct8.prob <- array(c(0.95,0.05),dim = 2, dimnames = list(EmAct8 = lvEm))
Sent1.prob <- array(c(0.50,0.50),dim = 2, dimnames = list(Sent1 = lvSent))
Sent2.prob <- array(c(0.50,0.50),dim = 2, dimnames = list(Sent2 = lvSent))
Sent3.prob <- array(c(0.80,0.20),dim = 2, dimnames = list(Sent3 = lvSent))
Sent4.prob <- array(c(0.50,0.50),dim = 2, dimnames = list(Sent4 = lvSent))
Sent5.prob <- array(c(0.74,0.26),dim = 2, dimnames = list(Sent5 = lvSent))
Sent6.prob <- array(c(0.50,0.50),dim = 2, dimnames = list(Sent6 = lvSent))
Sent7.prob <- array(c(0.50,0.50),dim = 2, dimnames = list(Sent7 = lvSent))
Sent8.prob <- array(c(0.50,0.50),dim = 2, dimnames = list(Sent8 = lvSent))
Scenario1.prob <- array(c(0.6,0.4,0.51,0.49,0.42,0.58,0.37,0.63), dim=c(2,2,2), dimnames = list(Scenario1 = lvScenario, Sent1 = lvSent,EmAct1 = lvEm))
Target1.prob <- array(c(0.75,0.25,0.43,0.57), dim=c(2,2), dimnames = list(Target1=lvTarget,Scenario1=lvScenario))
Scenario2.prob <- array(c(0.66,0.34,0.62,0.38,0.78,0.22,0.53,0.47,0.92,0.08,0.82,0.18,0.52,0.48,0.44,0.56), dim=c(2,2,2,2), dimnames =list(Scenario2=lvScenario,Sent2 = lvSent, EmAct2=lvEm, Target1 = lvTarget))
Target2.prob <- array(c(0.79,0.21,0.36,0.64), dim=c(2,2), dimnames = list(Target2=lvTarget,Scenario2=lvScenario))
Scenario3.prob <- array(c(0.87,0.13,0.80,0.20,0.72,0.28,0.67,0.33,0.24,0.76,0.30,0.70,0.19,0.81,0.28,0.72), dim=c(2,2,2,2), dimnames =list(Scenario3=lvScenario,Sent3 = lvSent, EmAct3=lvEm, Target1 = lvTarget))
Target3.prob <- array(c(0.87,0.13,0.22,0.78), dim=c(2,2), dimnames = list(Target3=lvTarget,Scenario3=lvScenario))
Scenario4.prob <- array(c(0.80,0.20,0.72,0.28,0.68,0.32,0.54,0.46,0.31,0.69,0.39,0.61,0.23,0.77,0.29,0.71), dim=c(2,2,2,2), dimnames =list(Scenario4=lvScenario,Sent4 = lvSent, EmAct4=lvEm, Target2 = lvTarget))
Target4.prob <- array(c(0.84,0.16,0.46,0.54), dim=c(2,2), dimnames = list(Target4=lvTarget,Scenario4=lvScenario))
Scenario5.prob <- array(c(0.88,0.12,0.78,0.22,0.69,0.31,0.70,0.30,0.69,0.31,0.72,0.28,0.44,0.56,0.58,0.42), dim=c(2,2,2,2), dimnames =list(Scenario5=lvScenario,Sent5 = lvSent, EmAct5=lvEm, Target4 = lvTarget))
Target5.prob <- array(c(0.93,0.07,0.54,0.46), dim=c(2,2), dimnames = list(Target5=lvTarget,Scenario5=lvScenario))
Scenario6.prob <- array(c(0.87,0.13,0.94,0.06,0.81,0.19,0.88,0.12,0.57,0.43,0.69,0.31,0.32,0.68,0.43,0.57), dim=c(2,2,2,2), dimnames =list(Scenario6=lvScenario,Sent6 = lvSent, EmAct6=lvEm, Target1 = lvTarget))
Target6.prob <- array(c(0.89,0.11,0.39,0.61), dim=c(2,2), dimnames = list(Target6=lvTarget,Scenario6=lvScenario))
Scenario7.prob <- array(c(0.81,0.19,0.88,0.12,0.85,0.15,0.91,0.09,0.61,0.39,0.69,0.31,0.34,0.66,0.41,0.59), dim=c(2,2,2,2), dimnames =list(Scenario7=lvScenario,Sent7 = lvSent, EmAct7=lvEm, Target6 = lvTarget))
Target7.prob <- array(c(0.91,0.09,0.48,0.52), dim=c(2,2), dimnames = list(Target7=lvTarget,Scenario7=lvScenario))
Scenario10.prob <- array(c(0.53,0.47,0.16,0.84), dim=c(2,2), dimnames = list(Scenario10=lvScenario,Target7=lvTarget))
Scenario8.prob <- array(c(0.68,0.32,0.74,0.26,0.86,0.14,0.90,0.10,0.73,0.27,0.78,0.22,0.80,0.20,0.83,0.17), dim=c(2,2,2,2), dimnames =list(Scenario8=lvScenario,Sent8 = lvSent, EmAct8=lvEm, Target6 = lvTarget))
Target8.prob <- array(c(0.96,0.04,0.63,0.37), dim=c(2,2), dimnames = list(Target8=lvTarget,Scenario8=lvScenario))
Scenario11.prob <- array(c(0.38,0.62,0.12,0.88), dim=c(2,2), dimnames = list(Scenario11=lvScenario,Target8=lvTarget))



rainstorm.cpt <- list(EmAct1 = EmAct1.prob, EmAct2 = EmAct2.prob, EmAct3 = EmAct3.prob, EmAct4 = EmAct4.prob, EmAct5 = EmAct5.prob, EmAct6 = EmAct6.prob, EmAct7 = EmAct7.prob, EmAct8 = EmAct8.prob,
                      Sent1 = Sent1.prob,  Sent2 = Sent2.prob,  Sent3 = Sent3.prob,  Sent4 = Sent4.prob,  Sent5 = Sent5.prob,  Sent6 = Sent6.prob,  Sent7 = Sent7.prob,  Sent8 = Sent8.prob,
                      Scenario1=Scenario1.prob, Target1 = Target1.prob, Scenario2=Scenario2.prob, Target2=Target2.prob, Scenario3 = Scenario3.prob,Target3=Target3.prob,
                      Scenario4=Scenario4.prob, Target4 = Target4.prob, Scenario5 = Scenario5.prob, Target5=Target5.prob, Scenario6 = Scenario6.prob, Target6=Target6.prob,
                      Scenario7 = Scenario7.prob, Target7=Target7.prob,Scenario10 = Scenario10.prob, Scenario8= Scenario8.prob,
                      Target8=Target8.prob,Scenario11=Scenario11.prob)

rainstorm <- custom.fit(rainstorm.dag,rainstorm.cpt)

usethis::use_data(rainstorm, overwrite = TRUE)


