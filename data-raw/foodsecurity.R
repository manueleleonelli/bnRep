# Coherent combination of probabilistic outputs for group decision making: an algebraic approach
# Directed Expected Utility Networks

library(bnlearn)

food.dag = model2network("[Health][Educational_Attainment|Health][Social_Cohesion|Health:Educational_Attainment][Cost|Health]")

distHealth = list(coef = c("(Intercept)" = 1.5), sd = sqrt(5))
distEdu = list(coef = c("(Intercept)" = 5, "Health"=7), sd = sqrt(40))
distSocial = list(coef=c("(Intercept)"= 5, "Health" = 17, "Educational_Attainment" = 10),sd=sqrt(20))
distCost = list(coef = c("(Intercept)" = 30, "Health"=10), sd = sqrt(8))

foodsecurity <- custom.fit(food.dag, dist = list(
  Health=distHealth, Educational_Attainment=distEdu, Social_Cohesion=distSocial, Cost=distCost
))

usethis::use_data(foodsecurity, overwrite = TRUE)
