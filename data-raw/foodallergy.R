# Prevalence of self-reported food allergy in Tunisia: General trends and probabilistic modeling

library(bnlearn)

foodallergy.dag <- model2network("[Fruits][Nuts][Veg_Leg][Peanuts|Nuts:Fruits][Seafood|Veg_Leg:Nuts:Fruits][Milk|Veg_Leg:Seafood:Fruits][Cereals|Seafood:Fruits][Eggs|Cereals:Fruits]")

lv <- c("True","False")

Fruits <- array(c(0.461,1-0.461),dim=c(2),dimnames=list(Fruits=lv))
Nuts <- array(c(0.089,1-0.089),dim=c(2),dimnames=list(Nuts=lv))
Veg_Leg <- array(c(0.075,1-0.075),dim=c(2),dimnames=list(Veg_Leg=lv))
Seafood <- array(c(0.970,1-0.970,0.335,1-0.335,0.130,1-0.130,0.044,1-0.044,0.527,1-0.527,0.201,1-0.201,0.052,1-0.052,0.519,1-0.519),dim=c(2,2,2,2),dimnames=list(Seafood=lv,Veg_Leg=lv,Nuts=lv,Fruits=lv))
Peanuts <- array(c(0.455,1-0.455,0.011,1-0.011,0.078,1-0.078,0.078,1-0.078),dim=c(2,2,2),dimnames=list(Peanuts=lv,Nuts=lv,Fruits=lv))
Milk <- array(c(0.348,1-0.348,0.005,1-0.005,0.290,1-0.290,0.017,1-0.017,0.5,0.5,0.07,1-0.07,0.003,1-0.003,0.340,1-0.340),dim=c(2,2,2,2),dimnames=list(Milk=lv,Veg_Leg=lv,Seafood=lv,Fruits=lv))
Cereals <- array(c(0.079,1-0.079,0.011,1-0.011,0.010,1-0.010,0.256,1-0.256),dim=c(2,2,2),dimnames=list(Cereals=lv,Seafood=lv,Fruits=lv))
Eggs <- array(c(0.65,1-0.65,0.02,1-0.02,0.03,1-0.03,0.13,1-0.13),dim=c(2,2,2),dimnames=list(Eggs=lv,Cereals=lv,Fruits=lv))

foodallergy1 <- custom.fit(foodallergy.dag,list(Fruits=Fruits,Nuts=Nuts,Veg_Leg=Veg_Leg,Seafood=Seafood,Peanuts=Peanuts,Milk=Milk,Cereals=Cereals,Eggs=Eggs))


foodallergy_adults.dag <- model2network("[Fruits][Nuts|Cereals][Veg_Leg][Peanuts|Milk][Seafood|Veg_Leg:Fruits][Milk|Veg_Leg:Fruits][Cereals|Seafood:Fruits][Eggs]")

lv <- c("True","False")

Fruits <- array(c(0.431,1-0.431),dim=c(2),dimnames=list(Fruits=lv))
Nuts <- array(c(0.007,1-0.007,0.103,1-0.103),dim=c(2,2),dimnames=list(Nuts=lv,Cereals=lv))
Veg_Leg <- array(c(0.083,1-0.083),dim=c(2),dimnames=list(Veg_Leg=lv))
Seafood <- array(c(0.337,1-0.337,0.041,1-0.041,0.069,1-0.069,0.544,1-0.544),dim=c(2,2,2),dimnames=list(Seafood=lv,Veg_Leg=lv,Fruits=lv))
Peanuts <- array(c(0.161,1-0.161,0.3,0.7),dim=c(2,2),dimnames=list(Peanuts=lv,Milk=lv))
Milk <- array(c(0.337,1-0.337,0.017,1-0.017,0.007,1-0.007,0.171,1-0.171),dim=c(2,2,2),dimnames=list(Milk=lv,Veg_Leg=lv,Fruits=lv))
Cereals <- array(c(0.136,1-0.136,0.017,1-0.017,0.012,1-0.012,0.322,1-0.322),dim=c(2,2,2),dimnames=list(Cereals=lv,Seafood=lv,Fruits=lv))
Eggs <- array(c(0.066,1-0.066),dim=c(2),dimnames=list(Eggs=lv))

foodallergy2 <- custom.fit(foodallergy_adults.dag,list(Fruits=Fruits,Nuts=Nuts,Veg_Leg=Veg_Leg,Seafood=Seafood,Peanuts=Peanuts,Milk=Milk,Cereals=Cereals,Eggs=Eggs))

foodallergy_child.dag <- model2network("[Fruits|Veg_Leg][Nuts][Veg_Leg|Peanuts][Peanuts|Nuts][Seafood|Fruits:Nuts][Milk|Fruits][Cereals|Fruits][Eggs|Fruits]")

lv <- c("True","False")

Fruits <- array(c(0.166,1-0.166,0.560,1-0.560),dim=c(2,2),dimnames=list(Fruits=lv,Veg_Leg=lv))
Nuts <- array(c(0.083,1-0.083),dim=c(2),dimnames=list(Nuts=lv))
Veg_Leg <- array(c(0.260,1-0.260,0.037,1-0.037),dim=c(2,2),dimnames=list(Veg_Leg=lv,Peanuts=lv))
Seafood <- array(c(0.735,1-0.735,0.050,1-0.050,0.340,1-0.340,0.270,1-0.270),dim=c(2,2,2),dimnames=list(Seafood=lv,Nuts=lv,Fruits=lv))
Peanuts <- array(c(0.404,1-0.404,0.071,1-0.071),dim=c(2,2),dimnames=list(Peanuts=lv,Nuts=lv))
Milk <- array(c(0.018,1-0.018,0.330,1-0.330),dim=c(2,2),dimnames=list(Milk=lv,Fruits=lv))
Cereals <- array(c(0.003,1-0.003,0.090,1-0.090),dim=c(2,2),dimnames=list(Cereals=lv,Fruits=lv))
Eggs <- array(c(0.003,1-0.003,0.226,1-0.226),dim=c(2,2),dimnames=list(Eggs=lv,Fruits=lv))

foodallergy3<- custom.fit(foodallergy_child.dag,list(Fruits=Fruits,Nuts=Nuts,Veg_Leg=Veg_Leg,Seafood=Seafood,Peanuts=Peanuts,Milk=Milk,Cereals=Cereals,Eggs=Eggs))

usethis::use_data(foodallergy1, overwrite = TRUE)
usethis::use_data(foodallergy2, overwrite = TRUE)
usethis::use_data(foodallergy3, overwrite = TRUE)
