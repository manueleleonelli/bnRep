##Exploring the role of ecology and social organisation in agropastoral societies: A Bayesian network approach

# Data can be downloaded from the supplementary material of the publication
#library(readxl)
#library(bnlearn)
#data <- read_excel("/Users/manueleleonelli/Downloads/10_1371_journal_pone_0276088/pone.0276088.s006.xlsx")

data$Elevation <- factor(cut(as.numeric(data$`Elevation (m)`),breaks=c(-10,300,1000,5000),labels=c("low","medium","high")))
data$Slope <- factor( cut(as.numeric(data$`Slope (º)`), breaks= c(0,0.75,2.5,2000), labels = c("low","medium","high") ) )
data$Annual_Temperature <- factor(cut(data$`Annual mean temperature (ºC/month)`,breaks = c(-13,5,20,30), labels = c("low","medium","high")))
data$CV_Annual_Temperature <- factor(cut(data$`Annual Temperature Variation (ºC/month)`/data$`Annual mean temperature (ºC/month)`, breaks = c(-40,0.05,0.15,500), labels = c("low","medium","high")), levels=c("low","medium","high"))
data$Monthly_Precipitation <- factor(cut(as.numeric(data$`Monthly mean precipitation (ml/m2/month)`), breaks = c(3000,95000,130000,400000), labels = c("low","medium","high")))
data$CV_Annual_Precipitation <- factor(cut(data$`Annual Precipitation Variation (ml/m2/month)`/as.numeric(data$`Monthly mean precipitation (ml/m2/month)`), breaks= c(0.000001,0.06,0.08,500000), labels= c("low","medium","high")),levels = c("low","medium","high"))
data$Monthly_Productivity <- factor(cut(as.numeric(data$`Monthly mean net primary production (gC/m2/month)`), breaks =c(-3,1,3,6),labels=c("low","medium","high")))
data$CV_Annual_Productivity <- factor(cut(as.numeric(data$`Annual Net Primary Production Variation (gC/m2/month)`)/as.numeric(data$`Monthly mean net primary production (gC/m2/month)`), breaks = c(-2,0.03,0.05,3), labels = c("low","medium","high")))
data$Landscape <- factor(data$Biome, levels = c("Ice","Inland Water","Tundra","Deserts & Xeric Shrublands","Boreal Forests/Taiga","Flooded Grasslands & Savannas","Mediterranean Forests, Woodlands & Scrub","Montane Grasslands & Shrublands","Shrublands","Temperate Broadleaf & Mixed Forests","Temperate Conifer Forests","Temperate Grasslands, Savannas & Shrublands","Tropical & Subtropical Coniferous Forests","Tropical & Subtropical Dry Broadleaf Forests" ,"Tropical & Subtropical Grasslands, Savannas & Shrublands","Tropical & Subtropical Moist Broadleaf Forest","Tropical & Subtropical Moist Broadleaf Forests"   ), labels = c("Aquatic","Aquatic","Tundra","Desert","Forest","Grassland","Forest","Grassland","Desert","Forest","Forest","Grassland","Forest","Forest","Grassland","Forest","Forest"))
data$Distance_Coast <- factor(cut(as.numeric(data$`Distance to coast (km)`), breaks =c(0,10,50,2000), labels = c("low","medium","high")))
data$Hunting <- factor(factor(data$`Hunting (%)`), levels = levels(factor(data$`Hunting (%)`)), labels=c("None","<25",">=25",">=25","<25"))
data$Gathering <- factor(factor(data$`Gathering (%)`),levels = levels(factor(data$`Gathering (%)`)),labels = c("None","None","<25",">=25","<25"))
data$Fishing <- factor(factor(data$`Fishing (%)`),levels = levels(factor(data$`Fishing (%)`)),labels = c("None","<25",">=25",">=25",">=25","<25","<25"))
data$Agriculture <- factor(factor(data$`Agriculture (%)`),levels = levels(factor(data$`Agriculture (%)`)),labels = c("None","<55","<55","<55","<55",">=55","<55","<55",">=55",">=55",">=55"))
data$Animal_Husbandry <- factor(factor(data$`Animal husbandry (%)`), levels = levels(factor(data$`Animal husbandry (%)`))[1:9],labels = c("None","<25",">=25",">=25",">=25","<25",">=25",">=25",">=25"))
data$Community_Size <- factor(factor(data$`Mean size communities`), levels = levels(factor(data$`Mean size communities`)), labels = c("<200",">=200","<200",">=200","<200"))
data$Exchange_InSettlement <- factor(data$`Exchange in-settlement`)
data$None <- factor(data$None)
data$Resource_Diversification <- factor(data$`Resource diversification`)
data$Crop_Specialisation <- factor(data$`Crop specialisation`)
data$Foraging_Intensification <- factor(data$`Foraging resources intensification`)
data$Storage <- factor(data$Storage)
data$Transhumance <- factor(data$Transhumance)
data$Temporal_Migration <- factor(data$`Temporal migration`)
data$Permanent_Migration <- factor(data$`Permanent migration`)
data$Exchange_OutSettlement <- factor(data$`Exchange out-settlement`)
data$Reciprocity <- factor(data$Reciprocity)
data$Settlement_Types <- factor(data$`Settlement type`, levels = c("Camp","Hamlet","Homesteads","Village"))
data$Household_Organisation <- factor(data$`Household organisation`,levels = c("Small extended","Large extended","Nuclear"))
data$Community_Organisation <- factor(data$`Community organisation`, levels = c("Clans","NA","No exogamous clans"),labels = c("Clan communities","Missing","No exogamous clans"))



agropastoral_dag5 <- model2network("[Gathering][Community_Size|Gathering][Settlement_Types|Gathering][Community_Organisation|Gathering][Household_Organisation|Gathering]")
data5 <- data.frame(data[c("Gathering","Community_Size","Settlement_Types","Community_Organisation","Household_Organisation")])
agropastoral5 <- bn.fit(agropastoral_dag5,data5,method="hard-em")


agropastoral_dag1 <- model2network("[Elevation][Hunting][Gathering][Animal_Husbandry|Hunting][Fishing|Animal_Husbandry][Agriculture|Fishing][Slope|Elevation][Annual_Temperature|Elevation][CV_Annual_Temperature|Annual_Temperature][CV_Annual_Precipitation|CV_Annual_Temperature][Monthly_Precipitation|CV_Annual_Temperature][Monthly_Productivity|Monthly_Precipitation][Landscape|Monthly_Productivity][CV_Annual_Productivity|Monthly_Productivity][Distance_Coast|CV_Annual_Productivity]")
data1 <- data.frame(data[c("Elevation","Hunting","Gathering","Animal_Husbandry","Fishing","Agriculture","Slope","Annual_Temperature","CV_Annual_Temperature","Monthly_Precipitation","CV_Annual_Precipitation","Monthly_Productivity","CV_Annual_Productivity","Landscape","Distance_Coast")])
agropastoral1 <- bn.fit(agropastoral_dag1,data1,method="hard-em")

agropastoral_dag2 <- model2network("[Community_Size][Elevation|Community_Size][Slope|Community_Size][Annual_Temperature|Community_Size:Elevation][CV_Annual_Temperature|Community_Size][Monthly_Precipitation|Community_Size:CV_Annual_Temperature][Landscape|Community_Size:Monthly_Precipitation][CV_Annual_Precipitation|Community_Size:Monthly_Precipitation][Monthly_Productivity|Community_Size:Monthly_Precipitation][CV_Annual_Productivity|Community_Size:Monthly_Productivity][Distance_Coast|Community_Size:CV_Annual_Productivity]")
data2 <- data.frame(data[c("Community_Size","Elevation","Slope","Annual_Temperature","CV_Annual_Temperature","Monthly_Precipitation","Landscape","CV_Annual_Precipitation","Monthly_Productivity","CV_Annual_Productivity","Distance_Coast")])
agropastoral2 <- bn.fit(agropastoral_dag2,data2,method="hard-em")

agropastoral_dag3 <- model2network("[Exchange_InSettlement][Elevation|Exchange_InSettlement][Slope|Exchange_InSettlement][Annual_Temperature|Exchange_InSettlement:Elevation][CV_Annual_Temperature|Exchange_InSettlement][Monthly_Precipitation|Exchange_InSettlement:CV_Annual_Temperature][Landscape|Exchange_InSettlement][CV_Annual_Precipitation|Exchange_InSettlement:Monthly_Precipitation][Monthly_Productivity|Exchange_InSettlement:Monthly_Precipitation][CV_Annual_Productivity|Exchange_InSettlement:Monthly_Productivity][Distance_Coast|Exchange_InSettlement]")
data3 <- data.frame(data[c("Exchange_InSettlement","Elevation","Slope","Annual_Temperature","CV_Annual_Temperature","Monthly_Precipitation","Landscape","CV_Annual_Precipitation","Monthly_Productivity","CV_Annual_Productivity","Distance_Coast")])
agropastoral3 <- bn.fit(agropastoral_dag3,data3,method="hard-em")

agropastoral_dag4 <- model2network("[Elevation][None][Resource_Diversification][Foraging_Intensification][Storage][Transhumance][Temporal_Migration][Slope|Elevation][Annual_Temperature|Elevation][Crop_Specialisation|Resource_Diversification][Permanent_Migration|Temporal_Migration][Exchange_OutSettlement|Temporal_Migration][Exchange_InSettlement|Temporal_Migration][Reciprocity|Exchange_InSettlement][CV_Annual_Temperature|Annual_Temperature][CV_Annual_Precipitation|CV_Annual_Temperature][Monthly_Precipitation|CV_Annual_Temperature][Monthly_Productivity|Monthly_Precipitation][Landscape|Monthly_Productivity][CV_Annual_Productivity|Monthly_Productivity][Distance_Coast|CV_Annual_Productivity]")
data4 <- data.frame(data[c("Exchange_InSettlement","Elevation","Slope","Annual_Temperature","CV_Annual_Temperature","Monthly_Precipitation","Landscape","CV_Annual_Precipitation","Monthly_Productivity","CV_Annual_Productivity","Distance_Coast","None","Resource_Diversification","Crop_Specialisation","Foraging_Intensification","Storage","Transhumance","Temporal_Migration","Permanent_Migration","Exchange_OutSettlement","Reciprocity")])
agropastoral4 <- bn.fit(agropastoral_dag4,data4,method="hard-em")

usethis::use_data(agropastoral1, overwrite = TRUE)

usethis::use_data(agropastoral2, overwrite = TRUE)

usethis::use_data(agropastoral3, overwrite = TRUE)

usethis::use_data(agropastoral4, overwrite = TRUE)

usethis::use_data(agropastoral5, overwrite = TRUE)



