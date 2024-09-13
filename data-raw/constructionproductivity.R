
library(bnlearn)

dag <- model2network("[OwnerFinance][MaterialPresence|OwnerFinance][WorkingTools|OwnerFinance][Sex][Age][SkilledWorkers|OwnerFinance][AdverseWeather][Attitude][Experience|Age][EngineerQualification][WorkingFrequency|Attitude:Sex:MaterialPresence:SkilledWorkers:WorkingTools][Workmanship|Experience][PlanningAndMethod|EngineerQualification][HealthStatus|AdverseWeather][Accidents|HealthStatus][TaskComplexity|Workmanship][TechnologyLevel|PlanningAndMethod][Productivity|Accidents:TaskComplexity:TechnologyLevel:WorkingFrequency]")

lv <- c("Yes","No")

OwnerFinance <- array(c(0.9,0.1),2,list(OwnerFinance=lv))
MaterialPresence <- array(c(0.887,0.113,0.627,0.373),c(2,2),list(MaterialPresence=lv,OwnerFinance=lv))
WorkingTools  <- array(c(0.787,0.213,0.66,0.34),c(2,2),list(WorkingTools=lv,OwnerFinance=lv))
Sex <- array(c(0.53,0.47),c(2),list(Sex=lv))
Age <- array(c(0.73,0.27),2,list(Age=lv))
SkilledWorkers <- array(c(0.76,0.24,0.83,0.17),c(2,2),list(SkilledWorkers=lv,OwnerFinance=lv))
AdverseWeather <- array(c(0.47,0.53),2,list(AdverseWeather=lv))
Attitude <- array(c(0.9,0.1),2,list(Attitude=lv))
Experience <- array(c(0.703,0.297,0.463,0.537),c(2,2),list(Experience=lv,Age=lv))
EngineerQualification <- array(c(0.67,0.33),2,list(EngineerQualification=lv))
WorkingFrequency <- array(c(82.7,17.3,72.7,27.3,62.7,37.3,72.7,27.3,52.7,47.3,32.7,67.3,42.7,57.3,12.7,87.3,62.7,37.3,       72.7,27.3, 52.7,47.3,13,87,42.7,57.3, 22.7,77.3,72.7,27.3,52.7,47.3,      42.6,57.3,62.7,37.3,13,87,52.7,47.3,12.7,87.3,62.7,37.3,32.7,67.3,72.7,27.3,       72.7,27.3,32.7,67.3,52.7,47.3,62.7,37.3,82.7,17.3,62.7,37.3,22.7,77.3,52.7,47.3 )*0.01,c(2,2,2,2,2,2),list(WorkingFrequency=lv,Sex=lv,Attitude=lv,SkilledWorkers=lv,WorkingTools=lv,MaterialPresence=lv))
Workmanship <- array(c(0.8,0.2,0.6,0.4),c(2,2),list(Workmanship=lv,Experience=lv))
PlanningAndMethod <- array(c(0.627,0.373,0.73,0.27),c(2,2),list(PlanningAndMethod=lv,EngineerQualification=lv))
HealthStatus <- array(c(0.44,0.56,0.647,0.353),c(2,2),list(HealthStatus=lv,AdverseWeather=lv))
Accidents <- array(c(0.617,0.383,0.587,0.413),c(2,2),list(Accidents=lv,HealthStatus=lv))
TaskComplexity <- array(c(0.703,0.297,0.403,0.597),c(2,2),list(TaskComplexity=lv,Workmanship=lv))
TechnologyLevel <- array(c(0.73,0.27,0.7,0.3),c(2,2),list(TechnologyLevel=lv,PlanningAndMethod=lv))
Productivity <- array(c(0.627,0.373,0.527,0.473,0.327,0.673,0.427,0.573,0.627,0.373,0.127,0.873,0.327,0.673,0.727,0.273,0.527,0.473,0.227,0.773,0.827,0.173,0.427,0.573,0.327,0.673,0.727,0.273,0.727,0.273,0.327,0.673),c(2,2,2,2,2),list(Productivity=lv,Accidents=lv, WorkingFrequency=lv,TechnologyLevel=lv,TaskComplexity=lv))

constructionproductivity <- custom.fit(dag,list(
  OwnerFinance=OwnerFinance,
  MaterialPresence=MaterialPresence,
  Workmanship=Workmanship,
  WorkingTools=WorkingTools,
  WorkingFrequency=WorkingFrequency,
  Sex=Sex,Age=Age,
  SkilledWorkers=SkilledWorkers,
  AdverseWeather=AdverseWeather,
  Attitude=Attitude,
  Experience=Experience,
  EngineerQualification=EngineerQualification,
  PlanningAndMethod=PlanningAndMethod,
  HealthStatus=HealthStatus,
  Accidents=Accidents,
  TaskComplexity=TaskComplexity,
  TechnologyLevel=TechnologyLevel,
  Productivity=Productivity
))


usethis::use_data(constructionproductivity, overwrite = TRUE)

