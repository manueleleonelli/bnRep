# Modeling intensification decisions in the Kilombero Valley floodplain: A Bayesian belief network approach
data <- read.csv("~/Downloads/data_for_analysis.csv")
library(bnlearn)

data$Choice_Of_Intensification_Strategy <- factor(data$intensificationStrategies)
data$AccessToCredit <- factor(data$creditaccess)
data$ExpectedPriceOfRice <- factor(factor(data$ricePrice),levels=levels(factor(data$ricePrice)), labels=c("0 to 1000","0 to 1000", "1000 to 1200", "1000 to 1200", "1000 to 1200","1000 to 1200","1000 to 1200","1000 to 1200","1200 to 1500","1200 to 1500","1200 to 1500","1200 to 1500","1200 to 1500","1500 to 1900"))
data$AgeOfHHHead <- factor(cut(data$ageOfTheHouseholdHead, breaks= c(0,35,45,55,200), labels = c("25-35","35-45","45-55",">55")))
data$TopographicWetnessIndex <- factor(cut(data$topgraphicWetnessIndex,breaks=c(13,18,23,36), labels = c("14-18","18-23","23-32")))
data$DistanceToBigMarket <- factor(cut(data$distanceToBigMarket,breaks = c(-1,15,30,2000),labels=c("<15km","15-30km",">30km")))
data$CommercializationIndex <- factor(cut(data$commercializationIndex,breaks=c(-2,30,60,110),labels=c("<30%","30-60%",">60%")))
data$CropChoice <- factor(data$cropChoice)
data$FarmerType <- factor(data$farmType)
data$SizeOfCropLand <- factor(cut(data$farmSize,breaks=c(-2,3,6,9,500),labels=c("<3Ha","3-6Ha","6-9Ha",">9Ha")))
data$SizeOfHousehold <- factor(cut(data$householdSize,breaks=c(-2,3.9,7.1,500), labels=c("<4","4-7",">7")))
data$ShareOfHiredLabour <-   factor(cut(data$shareOfHiredLabour, breaks=c(-2,10,60,300), labels=c("<10%","10-60%",">60%")))
data$LabourInManDays <- factor(cut(data$totalLaborManDays, breaks=c(-10,120,220,400,50000), labels=c("<120","120-220","220-400",">400")))
data$PercentOfNonFarmIncome <- factor(cut(data$percentNonfarmIncome, breaks= c(-2,0.01,30,600),labels = c("None","<30%",">30%")))
data$Income <- factor(cut(data$perCapitaIncome, breaks = c(-2,160,280,600,20000),labels = c("0-160","160-280","280-600","600-15800")))
data$ExpectedPriceOfMaize <-  factor(cut(data$maizePrice,breaks= c(-0.1,0.001,800,861.111,1111.12), labels=c("0","0-800","800-861.111","861.111-1111.11")))

d <- data[c("Choice_Of_Intensification_Strategy","AccessToCredit","ExpectedPriceOfRice","AgeOfHHHead","TopographicWetnessIndex","DistanceToBigMarket","CommercializationIndex","CropChoice","FarmerType","SizeOfCropLand","SizeOfHousehold","ShareOfHiredLabour","LabourInManDays","PercentOfNonFarmIncome","Income","ExpectedPriceOfMaize")]

dag<- model2network("[Choice_Of_Intensification_Strategy][AccessToCredit|AgeOfHHHead][ExpectedPriceOfRice][AgeOfHHHead|Choice_Of_Intensification_Strategy][TopographicWetnessIndex|Choice_Of_Intensification_Strategy][DistanceToBigMarket|Choice_Of_Intensification_Strategy][CommercializationIndex|Choice_Of_Intensification_Strategy:DistanceToBigMarket:AgeOfHHHead][CropChoice|AgeOfHHHead:ExpectedPriceOfRice:TopographicWetnessIndex:ExpectedPriceOfMaize][FarmerType|Choice_Of_Intensification_Strategy:CropChoice][SizeOfCropLand|FarmerType:Choice_Of_Intensification_Strategy][SizeOfHousehold|Choice_Of_Intensification_Strategy][ShareOfHiredLabour|Choice_Of_Intensification_Strategy:SizeOfHousehold:SizeOfCropLand][LabourInManDays|Choice_Of_Intensification_Strategy:ShareOfHiredLabour:SizeOfCropLand][PercentOfNonFarmIncome|Choice_Of_Intensification_Strategy][Income|ExpectedPriceOfRice:ExpectedPriceOfMaize:CommercializationIndex:Choice_Of_Intensification_Strategy:LabourInManDays:PercentOfNonFarmIncome][ExpectedPriceOfMaize]")
intensification <- bn.fit(dag,d, method="hard-em")

usethis::use_data(intensification, overwrite = TRUE)
