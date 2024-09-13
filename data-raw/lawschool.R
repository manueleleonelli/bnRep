library(foreign)
data <- read.arff("~/Downloads/law_dataset.arff")

data$male <- factor(data$male,levels=c(0,1),labels=c("female","male"))
data$racetxt <- factor(data$racetxt,levels=c(0,1),labels=c("non-white","white"))
data$pass_bar <- factor(data$pass_bar,levels=c(0,1),labels=c("negative","positive"))
data$decile1b <- factor(cut(data$decile1b,breaks=c(-1000,5.000000001,10000000),labels=c("<=5", ">5")))
data$decile3 <- factor(cut(data$decile3,breaks=c(-1000,5.000000001,10000000),labels=c("<=5", ">5")))
data$lsat <- factor(cut(data$lsat,breaks=c(-1000,37.000000001,10000000),labels=c("<=37", ">37")))
data$ugpa <- factor(cut(data$ugpa,breaks=c(-1000,3.299999999,10000000),labels=c("<3.3", ">=3.3")))
data$zgpa<- factor(cut(data$zgpa,breaks=c(-1000,0.0000000001,10000000),labels=c("<=0", ">0")))
data$zfygpa<- factor(cut(data$zfygpa,breaks=c(-1000,0.0000000001,10000000),labels=c("<=0", ">0")))
data$fulltime <- factor(data$fulltime)
data$fam_inc <- factor(data$fam_inc)


dag <- model2network("[zfygpa][zgpa|zfygpa][racetxt|zgpa][ugpa|racetxt:zgpa][tier|ugpa:racetxt][lsat|tier:ugpa:racetxt][fam_inc|lsat:racetxt][male|lsat:ugpa:racetxt][fulltime|ugpa:tier:lsat][pass_bar|zgpa:racetxt:ugpa:lsat]")

lawschool <- bn.fit(dag,data[,-c(1,2)])

usethis::use_data(lawschool, overwrite = TRUE)
