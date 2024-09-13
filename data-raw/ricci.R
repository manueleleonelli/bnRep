data <- read.csv("~/Downloads/Firefighter_Promotion_Exam_Scores_690_51.csv")

data <- data[,-c(1,2)]
data$Promoted <-factor(data$Combine >= 70)
data$Race <- factor(data$Race)
data$Race <- factor(data$Race,levels=c("B","H","W"),labels=c("Non-White","Non-White","White"))
data$Position <- factor(data$Position)
data$Oral <- factor(cut(data$Oral,breaks=c(-100,69.999999, 100000),labels=c("<70",">=70")))
data$Written <- factor(cut(data$Written,breaks=c(-100,69.999999, 100000),labels=c("<70",">=70")))
data$Combine <- factor(cut(data$Combine,breaks=c(-100,69.999999, 100000),labels=c("<70",">=70")))

dag <- model2network("[Position][Oral|Position][Race|Oral][Written|Oral][Combine|Written:Oral][Promoted|Combine]")

ricci <- bn.fit(dag,data)

usethis::use_data(ricci, overwrite = TRUE)
