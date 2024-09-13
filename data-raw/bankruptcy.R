
library(bnlearn)


dag <- model2network("[AuditorsOpinion|BankruptcyStatus][StockReturn|BankruptcyStatus][NetIncomeRate|BankruptcyStatus][IndustryFailureRate|BankruptcyStatus][MarketableSecurities|BankruptcyStatus][FirmSize|BankruptcyStatus][NetIncomeNegative|BankruptcyStatus][CashAssets|BankruptcyStatus][BankruptcyStatus]")
lv <- c("FALSE","TRUE")
lv1 <- c("Low","Medium","High")

BankruptcyStatus <- array(c(0.5,0.5),2,list(BankruptcyStatus=lv))
AuditorsOpinion <- array(c(0.44,0.56,0.75,0.25),c(2,2),list(AuditorsOpinion=lv,BankruptcyStatus=lv))
StockReturn <- array(c(0.67,0.28,0.05,0.12,0.67,0.21),c(3,2),list(StockReturn=lv1,BankruptcyStatus=lv))
NetIncomeRate <- array(c(0.35,0.53,0.12,0.16,0.64,0.2),c(3,2),list(NetIncomeRate=lv1,BankruptcyStatus=lv))
IndustryFailureRate  <- array(c(0.09,0.69,0.22,0.19,0.75,0.06),c(3,2),list(IndustryFailureRate=lv1,BankruptcyStatus=lv))
MarketableSecurities <- array(c(0.31,0.64,0.05,0.15,0.63,0.22),c(3,2),list(MarketableSecurities=lv1,BankruptcyStatus=lv))
FirmSize <- array(c(0.44,0.54,0.02,0.15,0.65,0.2),c(3,2),list(FirmSize=lv1,BankruptcyStatus=lv))
NetIncomeNegative <- array(c(0.37,0.63,0.76,0.24),c(2,2),list(NetIncomeNegative=lv,BankruptcyStatus=lv))
CashAssets <- array(c(0.29,0.63,0.08,0.19,0.63,0.18),c(3,2),list(CashAssets=lv1,BankruptcyStatus=lv))

bankruptcy <- custom.fit(dag,list(
AuditorsOpinion=AuditorsOpinion,
StockReturn=StockReturn,
NetIncomeRate=NetIncomeRate,
IndustryFailureRate=IndustryFailureRate,
MarketableSecurities=MarketableSecurities,
FirmSize=FirmSize,
NetIncomeNegative=NetIncomeNegative,
CashAssets=CashAssets,
BankruptcyStatus=BankruptcyStatus
  ))


usethis::use_data(bankruptcy, overwrite = TRUE)
