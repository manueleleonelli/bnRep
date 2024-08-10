# A collective efficacy‐based approach for bi‐objective sustainable project portfolio selection using interdependency network model between projects
library(bnlearn)

project.dag = model2network("[P1][P2|P1][P3|P1][P4|P3:P2][P5|P4:P1][P6|P1:P4][P8][P10][P11][P9|P8][P7|P9:P6:P5][P12|P11:P10][P13][P15][P16][P21][P14|P13:P12][P17|P16:P15][P18|P17][P19|P21][P20|P19]")

lv = c("F","T")

P1.prob <- array(c(0.3,1-0.3), dim = 2, dimnames = list(P1=lv))
P2.prob <- array(c(0.85,1-0.85,0.05,0.95), dim = c(2,2), dimnames = list(P2=lv,P1=lv))
P3.prob <- array(c(0.95,0.05,0.15,0.85), dim = c(2,2), dimnames = list(P3=lv,P1=lv))
P4.prob <- array(c(1,0,0.95,0.05,0.5,0.5,0.1,0.9), dim = c(2,2,2), dimnames = list(P4=lv,P3=lv,P2=lv))
P5.prob <- array(c(1,0,0.9,0.1,0.85,0.15,0.25,0.75), dim = c(2,2,2), dimnames = list(P5=lv,P4=lv,P1=lv))
P6.prob <- array(c(1,0,0.9,0.1,0.75,0.25,0.3,0.7), dim = c(2,2,2), dimnames = list(P6=lv,P4=lv,P1=lv))
P8.prob <- array(c(0.1,1-0.1), dim = 2, dimnames = list(P8=lv))
P10.prob <- array(c(0.8,1-0.8), dim = 2, dimnames = list(P10=lv))
P11.prob <- array(c(0.9,1-0.9), dim = 2, dimnames = list(P11=lv))
P9.prob <- array(c(1,0,0.2,0.8), dim = c(2,2), dimnames = list(P9=lv,P8=lv))
P7.prob <- array(c(1,0,1,0,1,0,1,0,1,0,1,0,0.5,0.5,0.4,0.6), dim = c(2,2,2,2), dimnames = list(P7=lv,P9=lv,P6=lv,P5=lv))
P12.prob <- array(c(0.95,0.05,0.4,0.6,0.6,0.4,0.15,0.85),dim=c(2,2,2), dimnames = list(P12=lv,P11=lv,P10=lv))
P15.prob <- array(c(0.7,1-0.7), dim = 2, dimnames = list(P15=lv))
P16.prob <- array(c(0.7,1-0.7), dim = 2, dimnames = list(P16=lv))
P21.prob <- array(c(0.8,1-0.8), dim = 2, dimnames = list(P21=lv))
P13.prob <- array(c(0.5,1-0.5), dim = 2, dimnames = list(P13=lv))
P14.prob <- array(c(0.9,0.1,0.2,0.8,0.25,0.75,0.02,0.98), dim = c(2,2,2), dimnames = list(P14=lv,P13=lv,P12=lv))
P17.prob <- array(c(0.9,0.1,0.4,0.6,0.2,0.8,0.05,0.95), dim = c(2,2,2), dimnames = list(P17=lv,P16=lv,P15=lv))
P18.prob <- array(c(0.7,0.3,0.05,0.95), dim = c(2,2), dimnames = list(P18=lv,P17=lv))
P19.prob <- array(c(0.8,0.2,0.05,0.95), dim = c(2,2), dimnames = list(P19=lv,P21=lv))
P20.prob <- array(c(0.2,0.8,0.05,0.95), dim = c(2,2), dimnames = list(P20=lv,P19=lv))


project.cpt <- list(P1 = P1.prob, P2 = P2.prob, P3 = P3.prob,
                    P4 = P4.prob, P5 = P5.prob, P6 = P6.prob,
                    P8 = P8.prob, P10 = P10.prob, P11 = P11.prob,
                    P9 = P9.prob,P7 = P7.prob, P12 = P12.prob,
                    P15 = P15.prob, P16= P16.prob, P21= P21.prob,
                    P13 = P13.prob, P14 = P14.prob, P17= P17.prob,
                    P18 = P18.prob, P19 = P19.prob, P20 = P20.prob)

project <- custom.fit(project.dag,project.cpt)

usethis::use_data(project, overwrite = TRUE)x
