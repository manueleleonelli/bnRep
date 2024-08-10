# Estimating the probability distributions of radioactive concrete in the building stock using Bayesian networks

library(bnlearn)

concrete1.dag <- model2network("[BlueConcrete][Basement][BuildingClass|BlueConcrete:Basement][FloorArea|Basement:BuildingClass]")

lv <- c("False","True")
lvClass <- c("Single Family House","MultiFamily House","School Building","Other Building")
lvArea <- c("0-150","150-220", "220-360","360-1500",">1500")
lvYear <- c("1930-1955","1955-1960","1960-1968","1968-1975","1975-1980")
lvDistance <- c("0-300","300-600",">600")
lvStairs <- c("0","1","2","3","4")

BlueConcrete <- array(c(0.64,0.36),2,list(BlueConcrete=lv))
Basement <- array(c(0.34,0.66),2,list(Basement=lv))
BuildingClass <- array(c(0.47,0.05,0.27,0.21,0.07,0.58,0.16,0.19,0.44,0.37,0.08,0.11,0.14,0.54,0.05,0.27),dim=c(4,2,2),list(BuildingClass=lvClass,BlueConcrete=lv,Basement=lv))
FloorArea <- array(c(0.76,0.20,0.04,0,0,0,0,0.35,0.20,0.45,0.05,0.02,0.09,0.66,0.18,0.02,0,0.12,0.54,0.32,0.18,0.45,0.36,0.01,0,0,0,0.09,0.50,0.41,0.03,0.01,0.11,0.29,0.56,0.02,0,0.04,0.26,0.68),dim=c(5,4,2),list(FloorArea=lvArea,BuildingClass=lvClass,Basement=lv))

probs <- list(BlueConcrete=BlueConcrete,Basement=Basement,BuildingClass=BuildingClass,FloorArea=FloorArea)

concrete1 <- custom.fit(concrete1.dag,probs)


concrete2.dag <- model2network("[ConstructionYear][BlueConcrete|ConstructionYear][Basement|ConstructionYear][BuildingClass|BlueConcrete:Basement]")

BlueConcrete <- array(c(0.77,0.23,0.6,0.4,0.4,0.6,0.7,0.3,0.88,0.12),c(2,5),list(BlueConcrete=lv,ConstructionYear=lvYear))
Basement <- array(c(0.15,0.85,0.36,0.64,0.23,0.77,0.40,0.60,0.72,0.28),c(2,5),list(Basement=lv,ConstructionYear=lvYear))
BuildingClass <- array(c(0.47,0.05,0.27,0.21,0.07,0.58,0.16,0.19,0.43,0.37,0.09,0.11,0.14,0.53,0.06,0.27),dim=c(4,2,2),list(BuildingClass=lvClass,BlueConcrete=lv,Basement=lv))
ConstructionYear <- array(c(0.21,0.19,0.27,0.18,0.15),5,list(ConstructionYear=lvYear))

probs <- list(BlueConcrete=BlueConcrete,Basement=Basement,BuildingClass=BuildingClass,ConstructionYear=ConstructionYear)
concrete2 <- custom.fit(concrete2.dag,probs)

concrete3.dag <- model2network("[FloorArea][AverageDistance|FloorArea][BlueConcrete|AverageDistance]")

FloorArea <- array(c(0.20,0.20,0.20,0.20,0.20),dim=c(5),list(FloorArea=lvArea))
AverageDistance <- array(c(0.05,0.18,0.77,0.02,0.17,0.81,0.60,0.22,0.18,0.08,0.17,0.75,0.32,0.17,0.51),dim=c(3,5),list(AverageDistance=lvDistance,FloorArea=lvArea))
BlueConcrete <- array(c(0.38,0.62,0.17,0.83,0.98,0.02),dim=c(2,3),list(BlueConcrete=lv,AverageDistance=lvDistance))

probs <- list(BlueConcrete=BlueConcrete,AverageDistance=AverageDistance,FloorArea=FloorArea)
concrete3 <- custom.fit(concrete3.dag,probs)

concretesinglefamily.dag <- model2network("[AverageDistance][BlueConcrete|AverageDistance][Basement|AverageDistance][ConstructionYear|Basement]")

BlueConcrete <- array(c(0.58,0.42,0.21,0.79,0.99,0.01),c(2,3),list(BlueConcrete=lv,AverageDistance=lvDistance))
Basement <- array(c(0.26,0.74,0.21,0.79,0.38,0.62),c(2,3),list(Basement=lv,AverageDistance=lvDistance))
AverageDistance <- array(c(0.02,0.16,0.82),3,list(AverageDistance=lvDistance))
ConstructionYear <- array(c(0.07,0.18,0.11,0.28,0.36,0.23,0.16,0.25,0.28,0.08),c(5,2),list(ConstructionYear=lvYear,Basement=lv))

probs <- list(BlueConcrete=BlueConcrete,AverageDistance=AverageDistance,Basement=Basement,ConstructionYear=ConstructionYear)
concrete4 <- custom.fit(concretesinglefamily.dag,probs)


concretemultifamily.dag <- model2network("[AverageDistance|BlueConcrete][BlueConcrete][FloorArea|AverageDistance]")

BlueConcrete <- array(c(0.46,0.54),c(2),list(BlueConcrete=lv))
AverageDistance <- array(c(0.10,0.04,0.86,0.39,0.53,0.08),c(3,2),list(AverageDistance=lvDistance,BlueConcrete=lv))
FloorArea <- array(c(0.05,0.04,0.19,0.31,0.41,0.25,0.06,0.19,0.26,0.24,0.26,0.39,0.21,0.09,0.05),c(5,3),list(FloorArea=lvArea,AverageDistance=lvDistance))

probs <- list(BlueConcrete=BlueConcrete,AverageDistance=AverageDistance,FloorArea=FloorArea)
concrete5 <- custom.fit(concretemultifamily.dag,probs)


concreteschool.dag <- model2network("[AverageDistance|BlueConcrete][BlueConcrete][FloorArea|BlueConcrete]")

BlueConcrete <- array(c(0.73,0.27),c(2),list(BlueConcrete=lv))
AverageDistance <- array(c(0.35,0.08,0.57,0.75,0.19,0.06),c(3,2),list(AverageDistance=lvDistance,BlueConcrete=lv))
FloorArea <- array(c(0.22,0.22,0.22,0.16,0.18,0.23,0.03,0.13,0.34,0.27),c(5,2),list(FloorArea=lvArea,BlueConcrete=lv))

probs <- list(BlueConcrete=BlueConcrete,AverageDistance=AverageDistance,FloorArea=FloorArea)
concrete6 <- custom.fit(concreteschool.dag,probs)

concreteother.dag <- model2network("[AverageDistance|BlueConcrete][BlueConcrete][FloorArea|NumberOfStairwells][NumberOfStairwells|AverageDistance][ConstructionYear|FloorArea]")

BlueConcrete <- array(c(0.49,0.51),c(2),list(BlueConcrete=lv))
AverageDistance <- array(c(0.50,0.25,0.25,0.72,0.23,0.05),c(3,2),list(AverageDistance=lvDistance,BlueConcrete=lv))
FloorArea <- array(c(0.37,0.25,0.25,0.11,0.02,0.18,0.35,0.18,0.03,0.26,0.03,0.03,0.09,0.62,0.23,0.04,0.14,0.14,0.44,0.24,0.12,0.03,0.12,0.20,0.53),c(5,5),list(FloorArea=lvArea,NumberOfStairwells=lvStairs))
NumberOfStairwells <- array(c(0.26,0.11,0.28,0.15,0.20,0.55,0.21,0.04,0.10,0.10,0.06,0.46,0.16,0.16,0.16),c(5,3),list(NumberOfStairwells=lvStairs,AverageDistance=lvDistance))
ConstructionYear <- array(c(0.03,0.42,0.03,0.26,0.26,0.36,0.20,0.12,0.12,0.20,0.12,0.36,0.20,0.20,0.12,0.08,0.18,0.28,0.28,0.18, 0.28,0.15,0.21,0.15,0.21),c(5,5),list(ConstructionYear=lvYear,FloorArea=lvArea))

probs <- list(BlueConcrete=BlueConcrete,AverageDistance=AverageDistance,FloorArea=FloorArea,NumberOfStairwells=NumberOfStairwells,ConstructionYear=ConstructionYear)
concrete7<- custom.fit(concreteother.dag,probs)

#usethis::use_data(concrete1, overwrite = TRUE)
#usethis::use_data(concrete2, overwrite = TRUE)
#usethis::use_data(concrete3, overwrite = TRUE)
#usethis::use_data(concrete4, overwrite = TRUE)
#usethis::use_data(concrete5, overwrite = TRUE)
#usethis::use_data(concrete6, overwrite = TRUE)
#usethis::use_data(concrete7, overwrite = TRUE)
