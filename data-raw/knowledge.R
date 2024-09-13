
library(bnlearn)

dag <- model2network("[Math][Database][Android|Database][C|Math][Java|C][Web|Database:C]")
lv <- c("Pass","Fail")

Math <- array(c(0.8,0.2),2,list(Math=lv))
Database <- array(c(0.75,0.25),2,list(Database=lv))
C <- array(c(0.85,0.15,0.55,0.45),c(2,2),list(C=lv,Math=lv))
Java <- array(c(0.9,0.1,0.6,0.4),c(2,2),list(Java=lv,C=lv))
Android <-array(c(0.98,0.02,0.01,0.99),c(2,2),list(Android=lv,Database=lv))
Web <- array(c(0.99,0.01,0.7,0.3,0.9,0.1,0.02,0.98),c(2,2,2),list(Web=lv,Database=lv,C=lv))


knowledge <- custom.fit(dag,list(
  Math=Math,Database=Database,C=C,Web=Web,Android=Android,Java=Java
))


usethis::use_data(knowledge, overwrite = TRUE)
