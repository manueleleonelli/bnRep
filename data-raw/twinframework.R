
library(bnlearn)

dag <- model2network("[Weather][Time][SocialActivities|Weather][CampusActivities|Weather][PersonnelType|SocialActivities:Time:CampusActivities][EquipmentStatus][UsingPlayground|PersonnelType:EquipmentStatus]")

Weather <- array(c(0.75,0.25),2,list(Weather=c("Fine weather","Bad weather")))
Time <- array(c(0.38,0.62),2,list(Time=c("Non-working hours","Working hours")))
EquipmentStatus <- array(c(0.95,0.05),2,list(EquipmentStatus=c("Good equipment","Equipment abnormality")))
SocialActivities <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(SocialActivities=c("Active","No activity"), Weather=c("Fine weather","Bad weather")))
CampusActivities <- array(c(0.7,0.3,0.5,0.5),c(2,2),list(CampusActivities=c("Campus activities","No campus activities"),Weather=c("Fine weather","Bad weather")))
PersonnelType <- array(c(0.7,0.3,0.4,0.6,0.85,0.15,0.7,0.3,0.8,0.2,0.5,0.5,0.8,0.2,0.95,0.05),c(2,2,2,2),list(PersonnelType=c("Student","Social personnel"),CampusActivities=c("Campus activities","No campus activities"),Time=c("Non-working hours","Working hours"), SocialActivities=c("Active","No activity")))
UsingPlayground <- array(c(0.9,0.1,0.5,0.5,0.4,0.6,0.2,0.8), c(2,2,2),list(UsingPlayground = c("Use","Not in use"),EquipmentStatus=c("Good equipment","Equipment abnormality"),PersonnelType=c("Student","Social personnel")))

twinframework <- custom.fit(dag,list(
  Weather=Weather,Time=Time, EquipmentStatus=EquipmentStatus,
  SocialActivities=SocialActivities,CampusActivities=CampusActivities,
  PersonnelType=PersonnelType,UsingPlayground=UsingPlayground
)
)


usethis::use_data(twinframework, overwrite = TRUE)
