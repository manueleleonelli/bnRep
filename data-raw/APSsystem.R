# An ERP Data Quality Assessment Framework for the Implementation of an APS system using Bayesian Networks

#library(bnlearn)

APSsystem.dag = model2network("[QPlanDeliveryTime][QSetupTime][PlanDeliveryTime|QPlanDeliveryTime][SetupTime|QSetupTime][NNTransactionData|SetupTime][NNMasterData|PlanDeliveryTime][NNValues|NNMasterData:NNTransactionData][Completeness|NNValues][Consistency][DataQuality|Completeness:Consistency]")

lv = c("High","Low")
lv1 <- c("Complete","Incomplete")

QPlanDeliveryTime.prob <- array(c(0.5,0.5),dim = 2, dimnames = list(QPlanDeliveryTime = lv1))
QSetupTime.prob <- array(c(0.5,0.5),dim = 2, dimnames = list(QSetupTime = lv1))
PlanDeliveryTime.prob <- array(c(0.75,0.25,0.25,0.75),dim = c(2,2), dimnames = list(PlanDeliveryTime = lv1, QPlanDeliveryTime = lv1))
SetupTime.prob <- array(c(0.75,0.25,0.25,0.75),dim = c(2,2), dimnames = list(SetupTime = lv1, QSetupTime = lv1))
NNMasterData.prob <- array(c(0.99,0.01,0.01,0.99),dim = c(2,2), dimnames = list(NNMasterData = lv1, PlanDeliveryTime = lv1))
NNTransactionData.prob <- array(c(0.99,0.01,0.01,0.99),dim = c(2,2), dimnames = list(NNTransactionData = lv1,SetupTime = lv1))
Consistency.prob <- array(c(0.5,0.5),dim = 2, dimnames = list(Consistency = lv))
NNValues.prob <- array(c(0.99,0.01,0.70,0.30,0.50,0.50,0.01,0.99),dim = c(2,2,2), dimnames = list(NNValues = lv, NNMasterData = lv1,NNTransactionData = lv1))
Completeness.prob <- array(c(0.99,0.01,0.01,0.99),dim = c(2,2), dimnames = list(Completeness = lv, NNValues = lv))
DataQuality.prob <- array(c(0.99,0.01,0.70,0.30,0.50,0.50,0.01,0.99),dim = c(2,2,2), dimnames = list(DataQuality = lv, Completeness = lv, Consistency=lv))


APSsystem.cpt <- list(QPlanDeliveryTime = QPlanDeliveryTime.prob, QSetupTime = QSetupTime.prob, PlanDeliveryTime=PlanDeliveryTime.prob, SetupTime= SetupTime.prob, NNTransactionData=NNTransactionData.prob,NNMasterData=NNMasterData.prob,NNValues=NNValues.prob,Completeness=Completeness.prob,Consistency=Consistency.prob,DataQuality=DataQuality.prob)

APSsystem <- custom.fit(APSsystem.dag,APSsystem.cpt)

usethis::use_data(APSsystem, overwrite = TRUE)
