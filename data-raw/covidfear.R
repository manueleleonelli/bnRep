## Learning and Interpreting ALDAGS

#library(foreign)
#library(dplyr)
#library(stagedtrees)
#library(infotheo)
#library(POSetR)
#library(igraph)
#setwd("C:/Users/manuele.leonelli/Downloads/SN225_manuele.leonelli@gmail.com_20221014120104")
datos <-read.spss("/Users/manueleleonelli/Library/Mobile Documents/com~apple~CloudDocs/Dati/sn225/SN225.sav", to.data.frame = TRUE)
summary(datos)
datos <- datos[,-(1:4)]
colnames(datos) <- c("Age","Gender","Fear","Think","Hands","Life","News","Sleep","Heart")
datos[,1]<- arules::discretize(datos[,1],breaks=2,labels=c("Young","Adult"))
datos[,2] <- factor(datos[,2],levels =c("Femmina","Maschio"),labels = c("Female","Male"))
datos[,3] <- factor(datos[,3],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))
datos[,4] <- factor(datos[,4],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))
datos[,5] <- factor(datos[,5],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))
datos[,6] <- factor(datos[,6],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))
datos[,7] <- factor(datos[,7],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))
datos[,8] <- factor(datos[,8],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))
datos[,9] <- factor(datos[,9],levels =c("Molto in disaccordo","In disaccordo","Né d’accordo né in disaccordo", "D’accordo", "Molto d’accordo"), labels = c("Disagree","Disagree","Neither","Agree","Agree"))

dag <- hc(datos)
covidfear <- bn.fit(dag,datos)

usethis::use_data(covidfear, overwrite = TRUE)
