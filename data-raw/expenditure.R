#library(Rfast)
#library(bnlearn)
#library(pcalg)
#library(AER)
#library(Ecdat)
#library(bayesm)
#library(wooldridge)
#library(Rgraphviz)
#library(robustbase)
#library(arules)
#library(pchc)

#data(CreditCard)
x <- CreditCard
colnames(x) <- c( "Card", "Reports",  "Age", "Income", "Share", "Expenditure", "Owner",
                  "Selfemp", "Dependents", "Months",  "Majorcards", "Active" )

for (i in 1:12)  x[, i] <- as.numeric(x[, i])
x <- as.matrix(x)
x[, c(1, 7, 8)] <- x[, c(1, 7, 8)] - 1

a1 <- bnlearn::mmhc( as.data.frame(x), restrict.args = list(alpha = 0.05, test = "zf") )

expenditure <- bn.fit(a1,as.data.frame(x))

usethis::use_data(expenditure, overwrite = TRUE)
