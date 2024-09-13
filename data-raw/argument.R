# Development of a computerized adaptive testing for ADHD using Bayesian networks: An attempt at classification

library(bnlearn)

dag <- model2network("[ObjectiveEvidence|Hypothesis:Validity][ExpertAssertsHypothesis|DecisionProcess:ObjectiveEvidence:GenuineExpertise][DecisionProcess][GenuineExpertise|RegularPractice:DeliberativePractice][DeliberativePractice|WellInformedPractice:Feedback][RegularPractice][Hypothesis][Validity][Feedback|Validity][WellInformedPractice|Validity]")

lv <- c("FALSE","TRUE")
lv1 <- c("High","Medium","Zero")
lv2 <- c("Not based on evidence", "Integrative complexity","Absence of integrative complexity")

RegularPractice <- array(c(0.5,0.5),2,list(RegularPractice=lv))
Hypothesis <- array(c(0.5,0.5),2,list(Hypothesis=lv))
Validity <- array(c(1/3,1/3,1/3),3,list(Validity=lv1))
Feedback <- array(c(0,1,0.3,0.7,1,0),c(2,3),list(Feedback=lv,Validity=lv1))
WellInformedPractice <- array(c(0,1,0.3,0.7,1,0),c(2,3),list(WellInformedPractice=lv,Validity=lv1))
DeliberativePractice <- array(c(1,0,0.4,0.6,0.4,0.6,0,1),c(2,2,2),list(DeliberativePractice=lv,WellInformedPractice=lv,Feedback=lv))
GenuineExpertise <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(GenuineExpertise=lv,RegularPractice=lv,DeliberativePractice=lv))
DecisionProcess <- array(c(1/3,1/3,1/3),3,list(DecisionProcess=lv2))
ObjectiveEvidence <- array(c(1,0,0,1,0.7,0.3,0.3,0.7,1,0,1,0),c(2,2,3),list(ObjectiveEvidence=lv,Hypothesis=lv,Validity=lv1))
ExpertAssertsHypothesis <- array(c(0.5,0.5,0.55,0.45,0.2,0.8,0.5,0.5,0.45,0.55,0.8,0.2,0.5,0.5,0.65,0.35,0.2,0.8,0.5,0.5,0.35,0.65,0.8,0.2),c(2,3,2,2),list(ExpertAssertsHypothesis=lv,DecisionProcess=lv2,ObjectiveEvidence=lv,GenuineExpertise=lv))

argument <- custom.fit(dag,list(
Hypothesis=Hypothesis,
Validity=Validity,
Feedback=Feedback,
WellInformedPractice =WellInformedPractice ,
RegularPractice=RegularPractice,
DeliberativePractice=DeliberativePractice,
GenuineExpertise = GenuineExpertise,
DecisionProcess=DecisionProcess,
ObjectiveEvidence=ObjectiveEvidence,
ExpertAssertsHypothesis=ExpertAssertsHypothesis
))


usethis::use_data(argument, overwrite = TRUE)
