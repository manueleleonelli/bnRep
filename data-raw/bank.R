# Structural learning of simple staged trees

#library(bnlearn)
data <-bank.additional.full <- read.csv("~/Library/Mobile Documents/com~apple~CloudDocs/Dati/bank-additional-full.csv", sep=";")

data$marital <- factor(data$marital)
data$education <- factor(factor(data$education, levels=levels(factor(data$education))[-8]),levels=levels(factor(data$education))[-8], labels = c(rep("no_uni",6),"uni"))
data$contact <- factor(data$contact)
data$subscription <- factor(data$y)
data <- subset(data,previous==0)

d <- na.omit(data[c("marital","education","contact","subscription")])

dag <- hc(d)
bank <- bn.fit(dag,d)

usethis::use_data(bank, overwrite = TRUE)
