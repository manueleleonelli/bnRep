# Highly Efficient Structural Learning of Sparse Staged Trees

library(bnlearn)
#library(readxl)
COvid_Risk <- as.data.frame(read_excel("/Users/manueleleonelli/Library/Mobile Documents/com~apple~CloudDocs/Dati/COvid Risk.xlsx"))

covid_discrete <- COvid_Risk
colnames(covid_discrete) <- c("COUNTRY","HAZARD","VULNERABILITY","COPING","RISK","ECONOMIC","BUSINESS","POLITICAL","COMMERCIAL","FINANCING")
for(i in 2:10) covid_discrete[,i] <- arules::discretize(COvid_Risk[,i],method = "cluster",breaks=2,labels=c("low","high"))
blacklist <- cbind(rep("RISK",8),colnames(covid_discrete)[c(2,3,4,6,7,8,9,10)])
dag <- hc(covid_discrete[,-1],blacklist = blacklist)
covidrisk <- bn.fit(dag,covid_discrete[-1])

#usethis::use_data(covidrisk, overwrite = TRUE)
