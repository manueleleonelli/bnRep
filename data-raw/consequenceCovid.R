# Global Sensitivity Analysis of Uncertain Parameters in Bayesian Networks

library(haven)
library(dplyr)
library(bnlearn)
library(qgraph)
data <- read_dta('/Users/manueleleonelli/Downloads/SI386_Manuele/SI386.dta')

data <- data[c("d11","d70","qa6c","qa21a_1","qa22a","qa23a","qa26a_1","qa26a_2","qa29a","qa30","d1","d15a","d10","d25","d63")]

colnames(data) <- c("Age","Life Satistifaction","Trust People","Satisfaction Measures","Measures Health","Measures Justified","Personal Finance","Country Finance","Info Lockdown","Coping Lockdown","Politics","Occupation","Gender","Community","Class")

data$Age <- factor(cut(data$Age,breaks=c(10,29,50,70,120),labels = c("<30","30-50","51-70","70+")))
data$Class <- factor(data$Class, levels = c(1,2,3,4,5), labels= c("Working","Lower","Middle","Upper","Upper"))
data$Community <- factor(data$Community, levels = c(1,2,3), labels= c("Rural","Small/Medium","Large"))
data$Gender <- factor(data$Gender, levels = c(1,2), labels = c("Male","Female"))
data$Occupation <- factor(data$Occupation,levels= c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18), labels = c("Not Working","Not Working","Not Working", "Not Working", rep("Working",14)))
data$Politics <- factor(data$Politics,levels=c(1,2,3,4,5,6,7,8,9,10,97,98), labels=c("Left","Left","Left","Left","Centre","Centre","Right","Right","Right","Right","No Answer","No Answer"))
data$`Coping Lockdown` <- factor( data$`Coping Lockdown`, levels = c(1,2,3,4,5), labels = c("Easy","Easy","Medium","Difficult","Difficult"))
data$`Life Satistifaction` <- factor(data$`Life Satistifaction`, levels = c(1,2,3,4), labels= c("Yes","Yes","No","No"))
data$`Trust People` <- factor(data$`Trust People`, levels = c(1,2,3,4),labels= c("Yes","Yes","No","No"))
data$`Satisfaction Measures` <- factor(data$`Satisfaction Measures`, levels = c(1,2,3,4),labels= c("Yes","Yes","No","No"))
data$`Measures Health` <- factor(data$`Measures Health`, levels = c(1,2,3), labels = c("Too Health", "Too Economy","Balance"))
data$`Measures Justified` <- factor(data$`Measures Justified`, levels = c(1,2,3,4),labels= c("Yes","Yes","No","No"))
data$`Personal Finance` <- factor(data$`Personal Finance`, levels = c(1,2,3,4,5), labels = c("Suffer","Suffer","Not Suffer","Not Suffer", "Don't know"))
data$`Country Finance` <- factor(data$`Country Finance`, levels = c(1,2,3,4,5), labels = c("Suffer","Suffer","Not Suffer","Not Suffer", "Don't know"))
data$`Info Lockdown` <- factor(data$`Info Lockdown`, levels = c(1,2,3,4,5), labels=c("Television","Press","Radio","Website","Social Network"))

colnames(data) <- c("AGE","LIFESAT","TRUST","SATMEAS","HEALTH","JUSTIFIED","PERSONALFIN","COUNTRYFIN","INFO","COPING","POLITICS","OCCUPATION","GENDER","COMMUNITY","CLASS")

data <- data.frame(na.omit(data))
ciao <- boot.strength(data,R = 200, m = nrow(data), algorithm="tabu",  cpdag = TRUE, shuffle = TRUE, debug = FALSE)
consequenceCovid <- averaged.network(ciao)
consequenceCovid <- bn.fit(consequenceCovid,data)


usethis::use_data(consequenceCovid, overwrite = TRUE)

