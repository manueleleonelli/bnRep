
library(bnlearn)

dag <- model2network("[ASTTest|UnpromptedTest:InitialTreatmentFailure][InitialTreatmentFailure|EpidemiologicalFactors:ClinicianExperience:PersistingSymptoms][PersistingSymptoms|MedicationAdherence][EpidemiologicalFactors|PastDiagnoses:SexualOrientation:NumberPartners][MedicationAdherence][ClinicianExperience][UnpromptedTest][PastDiagnoses][SexualOrientation][NumberPartners]")

lvAd <- c("Proper Adherence", "Improper Adherence")
lvEx <- c("Experienced", "Unexperienced")
lvTest <- c("Initiated","Not initiated")
lvDiag <- c("One","Two to four", "Five to nine", "More than ten")
lvSex <- c("Heterosexual", "Homosexual")
lvNum <- c("One","Two to five","More than six")
lvRisk <- c("High Risk Group", "Low Risk Group")
lvSym <- c("Symptoms persist", "Symptoms resolve")
lvTreat <- c("Treatment success", "Treatment failure")

MedicationAdherence <- array(c(0.7,0.3),2,list(MedicationAdherence=lvAd))
ClinicianExperience <- array(c(0.7,0.3),2,list(ClinicianExperience=lvEx))
UnpromptedTest <- array(c(0.01,0.99),2,list(UnpromptedTest=lvTest))
PastDiagnoses <- array(c(0.73,0.246,0.0236,0.0034),4,list(PastDiagnoses=lvDiag))
SexualOrientation <- array(c(0.292,0.708),2,list(SexualOrientation=lvSex))
NumberPartners <- array(c(0.366,0.495,0.139),3,list(NumberPartners=lvNum))
EpidemiologicalFactors <- array(0.01*c(5,95,20,80,35,65,30,70,45,55,60,40,65,35,80,20,95,5,75,25,90,10,95,5,10,90,25,75,40,60,40,60,55,45,70,30,75,25,85,15,95,5,80,20,90,10,95,5),c(2,3,4,2),list(EpidemiologicalFactors=lvRisk,NumberPartners=lvNum,PastDiagnoses=lvDiag,SexualOrientation=lvSex))
PersistingSymptoms <- array(c(0.16,0.84,0.84,0.16),c(2,2),list(PersistingSymptoms=lvSym,MedicationAdherence=lvAd))
InitialTreatmentFailure <- array(0.01*c(15,85,30,70,5,95,15,85,90,10,95,5,90,10,95,5),c(2,2,2,2),list(InitialTreatmentFailure=lvTreat,EpidemiologicalFactors=lvRisk,ClinicianExperience=lvEx,PersistingSymptoms=lvSym))
ASTTest <- array(c(99,1,1,99,99,1,90,10)*0.01,c(2,2,2),list(ASTTest=c("Initiated", "Not initiated"),UnpromptedTest=lvTest,InitialTreatmentFailure=lvTreat))
gonorrhoeae <- custom.fit(dag,list(
  MedicationAdherence=MedicationAdherence,ClinicianExperience=ClinicianExperience,
  UnpromptedTest=UnpromptedTest,PastDiagnoses=PastDiagnoses,
  SexualOrientation=SexualOrientation,NumberPartners=NumberPartners,
  EpidemiologicalFactors=EpidemiologicalFactors,ASTTest=ASTTest,
  PersistingSymptoms=PersistingSymptoms,InitialTreatmentFailure=InitialTreatmentFailure
))


usethis::use_data(gonorrhoeae, overwrite = TRUE)
