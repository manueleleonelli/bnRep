library(bnlearn)

string1 <- "[SafetySupervisionIsInadequate][InsufficientCracdownOnIllegalActivities]"
string2 <- "[DeparmentsAndInstitutionsAreNotComplete|SafetySupervisionIsInadequate][SafetyEducationAndTraning|SafetySupervisionIsInadequate][InsufficientSupervisionOfWorkSafety][InadequateEmergencyPlan][SecurityManagementConfusion|SafetySupervisionIsInadequate:InsufficientCracdownOnIllegalActivities]"
string3 <- "[PhysicalIntellectualDisability|SecurityManagementConfusion:InadequateEmergencyPlan:SafetyEducationAndTraning][MentalStates|SafetyEducationAndTraning][IllegalCommand][TechnicalEnvironment|InsufficientSupervisionOfWorkSafety][OrganizeProductionInViolationOfLawsAndRegulations|DeparmentsAndInstitutionsAreNotComplete:SecurityManagementConfusion][CreateAFalseImpressionToDeceiveTheRegulators|SecurityManagementConfusion]"
string4 <- "[SkillBasedErrors|IllegalCommand:CreateAFalseImpressionToDeceiveTheRegulators:TechnicalEnvironment][DecisionErrors|IllegalCommand:OrganizeProductionInViolationOfLawsAndRegulations:TechnicalEnvironment][PerceptualErrors|IllegalCommand][HabitualViolations|PhysicalIntellectualDisability:MentalStates][AccidentalViolations|IllegalCommand:OrganizeProductionInViolationOfLawsAndRegulations]"
dag <- model2network(paste0(string1,string2,string3,string4))
lv <- c("Non-occurence","Occurence")

SafetySupervisionIsInadequate <- array(c(0.5,0.5),2,list(SafetySupervisionIsInadequate=lv))
InsufficientCracdownOnIllegalActivities <- array(c(0.78,0.22),2,list(InsufficientCracdownOnIllegalActivities=lv))
SecurityManagementConfusion <- array(c(0.417,0.583,0,1,0.233,0.767,0.25,0.75),c(2,2,2),list(SecurityManagementConfusion=lv,InsufficientCracdownOnIllegalActivities=lv,SafetySupervisionIsInadequate=lv))
InadequateEmergencyPlan <- array(c(0.79,0.21),2,list(InadequateEmergencyPlan=lv))
InsufficientSupervisionOfWorkSafety <- array(c(0.56,0.44),2,list(InsufficientSupervisionOfWorkSafety=lv))
SafetyEducationAndTraning <- array(c(0.78,0.22,0.66,0.34),c(2,2),list(SafetyEducationAndTraning=lv,SafetySupervisionIsInadequate=lv))
DeparmentsAndInstitutionsAreNotComplete <- array(c(0.74,0.26,0.68,0.32),c(2,2),list(DeparmentsAndInstitutionsAreNotComplete=lv,SafetySupervisionIsInadequate=lv))
TechnicalEnvironment <- array(c(0.75,0.25,0.659,0.341),c(2,2),list(TechnicalEnvironment=lv,InsufficientSupervisionOfWorkSafety=lv))
OrganizeProductionInViolationOfLawsAndRegulations <- array(c(0.619,0.381,0.52,0.48,0.545,0.455,0.389,0.611),c(2,2,2),list(OrganizeProductionInViolationOfLawsAndRegulations=lv,SecurityManagementConfusion=lv,DeparmentsAndInstitutionsAreNotComplete=lv))
CreateAFalseImpressionToDeceiveTheRegulators <-array(c(0.875,0.125,0.706,0.294),c(2,2),list(CreateAFalseImpressionToDeceiveTheRegulators=lv,SecurityManagementConfusion =lv))
IllegalCommand <- array(c(0.6,0.4),2,list(IllegalCommand=lv))
MentalStates <- array(c(1,0,0.857,0.143),c(2,2),list(MentalStates=lv,SafetyEducationAndTraning=lv))
PhysicalIntellectualDisability <- array(c(1,0,0.974,0.026,1,0,1,0,1,0,0.875,0.125,0.667,0.333,1,0),c(2,2,2,2),list(PhysicalIntellectualDisability=lv,SecurityManagementConfusion=lv,InadequateEmergencyPlan=lv,SafetyEducationAndTraning=lv))
SkillBasedErrors <- array(c(0.969,0.031,0.957,0.043,1,0,0.75,0.25,0.9,0.1,0.726,0.272,0.833,0.167,0.5,0.5),c(2,2,2,2),list(SkillBasedErrors=lv,IllegalCommand=lv,CreateAFalseImpressionToDeceiveTheRegulators=lv,TechnicalEnvironment=lv))
DecisionErrors <- array(c(1,0,0.846,0.154,0.882,0.118,1,0,1,0,0.75,0.25,0.75,0.25,1,0),c(2,2,2,2),list(DecisionErrors=lv,IllegalCommand=lv,OrganizeProductionInViolationOfLawsAndRegulations=lv,TechnicalEnvironment=lv))
PerceptualErrors <- array(c(0.917,0.083,0.85,0.15),c(2,2),list(PerceptualErrors=lv,IllegalCommand=lv))
HabitualViolations <- array(c(0.645,0.355,0.333,0.667,0.333,0.667,0,1),c(2,2,2),list(HabitualViolations=lv,PhysicalIntellectualDisability=lv,MentalStates=lv))
AccidentalViolations <- array(c(0.903,0.097,0.905,0.095,0.793,0.207,0.789,0.211),c(2,2,2),list(AccidentalViolations=lv,IllegalCommand=lv,OrganizeProductionInViolationOfLawsAndRegulations=lv))

gasexplosion <- custom.fit(dag,list(
  SafetySupervisionIsInadequate=SafetySupervisionIsInadequate,
  InsufficientCracdownOnIllegalActivities=InsufficientCracdownOnIllegalActivities,
  SecurityManagementConfusion=SecurityManagementConfusion,
  InadequateEmergencyPlan=InadequateEmergencyPlan,
  InsufficientSupervisionOfWorkSafety=InsufficientSupervisionOfWorkSafety,
  SafetyEducationAndTraning=SafetyEducationAndTraning,
  DeparmentsAndInstitutionsAreNotComplete=DeparmentsAndInstitutionsAreNotComplete,
  TechnicalEnvironment=TechnicalEnvironment,
  OrganizeProductionInViolationOfLawsAndRegulations=OrganizeProductionInViolationOfLawsAndRegulations,
  CreateAFalseImpressionToDeceiveTheRegulators=CreateAFalseImpressionToDeceiveTheRegulators,
  IllegalCommand=IllegalCommand,MentalStates=MentalStates,
  PhysicalIntellectualDisability=PhysicalIntellectualDisability,
  SkillBasedErrors=SkillBasedErrors,DecisionErrors=DecisionErrors,PerceptualErrors=PerceptualErrors,
  HabitualViolations=HabitualViolations,AccidentalViolations=AccidentalViolations
))


usethis::use_data(gasexplosion, overwrite = TRUE)
