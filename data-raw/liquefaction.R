# A continuous Bayesian network regression model for estimating seismic liquefaction-induced settlement of the free-field ground

#library(readxl)
library(bnlearn)
data <- read_excel("~/Downloads/Database.xlsx")
data <- data[,3:12]
liquefaction_gdag <- model2network("[lnR][Mw][GWT][Ds][Sigmav|GWT:Ds][N160|Sigmav][Ts][lnt|Mw:lnR][lnamax|Mw:lnR][S|lnt:lnamax:Ts:N160:GWT:Ds:lnR:Mw]")
colnames(data)<-c("Mw","lnR","lnt","lnamax","Sigmav","GWT","Ts","Ds","N160","S")

liquefaction <- bn.fit(liquefaction_gdag,data)
usethis::use_data(liquefaction, overwrite = TRUE)
