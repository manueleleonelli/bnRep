
dag <- model2network("[DieFromCovid19|Age:Sex:VaccineEffectivenessAgainstDeathIfInfected:RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus][DieFromCovid19AssociatedCSVT|Covid19AssociatedCSVT][DieFromCovid19AssociatedPVT|Covid19AssociatedPVT][Covid19AssociatedPVT|Sex:RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus][Covid19AssociatedCSVT|Sex:RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus][RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus|IntensityOfCommunityTransmission:VaccineEffectivenessAgainstSymptomaticInfection:RiskOfSymptomaticInfection][DieFromBackgroundPVT|BackgroundPVTOver6Weeks][DieFromBackgroundCSVT|BackgroundCSVTOver6Weeks][DieFromVaccineAssociatedTTS|VaccineAssociatedTTS][VaccineAssociatedTTS|Age:AZVaccineDoses][RiskOfSymptomaticInfection|SARSCoV2Variant:Age][VaccineEffectivenessAgainstDeathIfInfected|SARSCoV2Variant:AZVaccineDoses][BackgroundPVTOver6Weeks|Age][VaccineEffectivenessAgainstSymptomaticInfection|SARSCoV2Variant:AZVaccineDoses][BackgroundCSVTOver6Weeks|Age][Sex][Age][AZVaccineDoses][SARSCoV2Variant][IntensityOfCommunityTransmission]")

lvAge <- c("0-9","10-19","20-29","30-39","40-49","50-59","60-69", "70+")
lvDoses <- c("None", "One", "Two")
lvVariant <- c("Alpha Wild", "Delta")
lvTransmission <- c("None", "ATAGI Low", "ATAGI Med", "ATAGI High", "One Percent", "Two Percent", "NSW 200 Daily", "NSW 1000 Daily", "VIC 1000 Daily", "QLD 1000 Daily")
lvSex <- c("Male", "Female")
lv <- c("Yes", "No")
lv1 <- c("Effective", "Not Effective")

Age <- array(c(0.12387612,0.12387612,0.14085914,0.14585415,0.12787213,0.12187812,0.1048951,0.11488511),c(8),list(Age=lvAge))
AZVaccineDoses <- array(c(0.3,0.35,0.35),3,list(AZVaccineDoses=lvDoses))
SARSCoV2Variant <- array(c(0.05,0.95),2,list(SARSCoV2Variant=lvVariant))
IntensityOfCommunityTransmission <- array(rep(0.10,10),10,list(IntensityOfCommunityTransmission=lvTransmission))
Sex <- array(c(0.5,0.5),2,list(Sex=lvSex))
BackgroundCSVTOver6Weeks <- array(c(1-0.99999962,0.99999962,1-0.99999962,0.99999962,1-0.99999936,0.99999936,1-0.99999936,0.99999936,1-0.99999936,0.99999936,1-0.99999925,0.99999925,1-0.99999925,0.99999925,1-0.99999927,0.99999927),c(2,8),list(BackgroundCSVTOver6Weeks=lv,Age=lvAge))
VaccineEffectivenessAgainstSymptomaticInfection <- array(c(0,1,0.6,0.4,0.8,0.2,0,1,1/3,2/3,0.61,0.39),c(2,3,2),list(VaccineEffectivenessAgainstSymptomaticInfection=lv1,AZVaccineDoses=lvDoses,SARSCoV2Variant=lvVariant))
BackgroundPVTOver6Weeks <- array(c(0,1,0,1,1-0.9999998,0.9999998,1-0.99999974,0.99999974,1-0.99999944,0.99999944,1-0.99999909,0.99999909,1-0.99999824,0.99999824,1-0.99999804,0.99999804),c(2,8),list(BackgroundPVTOver6Weeks=lv,Age=lvAge))
VaccineEffectivenessAgainstDeathIfInfected<- array(c(0,1,0.8,0.2,0.95,0.05,0,1,0.69,0.31,0.9,0.1),c(2,3,2),list(VaccineEffectivenessAgainstDeathIfInfected=lv1,AZVaccineDoses=lvDoses,SARSCoV2Variant=lvVariant))
RiskOfSymptomaticInfection <- array(c(0.0416611,1-0.0416611,0.0702759,1-0.0702759,0.1589055,1-0.1589055,0.1212599,1-0.1212599,0.1005435,1-0.1005435,0.0977633,1-0.0977633,0.0812794,1-0.0812794,0.1126984,1-0.1126984,0.09182884,1-0.09182884,0.1423347,1-0.1423347,0.15400685	,1-0.15400685	,0.11311761,1-0.11311761,0.09119044,1-0.09119044,0.09033166,1-0.09033166,0.05484361,1-0.05484361,0.04305606,1-0.04305606),c(2,8,2),list(RiskOfSymptomaticInfection=lv,Age=lvAge,SARSCoV2Variant=lvVariant))
VaccineAssociatedTTS <- array(c(rep(c(0,1),8), rep(c(0.000025,1-0.000025),5),0.000027,1-0.000027,0.000016,1-0.000016,0.0000185,1-0.0000185,rep(c(0.0000018,1-0.0000018),8)),c(2,8,3),list(VaccineAssociatedTTS=lv,Age=lvAge,AZVaccineDoses=lvDoses))
DieFromVaccineAssociatedTTS <- array(c(0.05,0.95,0,1),c(2,2),list(DieFromVaccineAssociatedTTS=lv,VaccineAssociatedTTS=lv))
DieFromBackgroundCSVT <- array(c(0.07,0.93,0,1),c(2,2),list(DieFromBackgroundCSVT=lv,BackgroundCSVTOver6Weeks=lv))
DieFromBackgroundPVT <- array(c(0.27,0.73,0,1),c(2,2),list(DieFromBackgroundPVT=lv,BackgroundPVTOver6Weeks=lv))
RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus <- array(c(rep(c(0,1),11),0.00471,1-0.00471,0.04469,1-0.04469,0.5759,1-0.5759,0.1,0.9,0.2,0.8,0.04455,1-0.04455,0.22276,1-0.22276,0.27289,1-0.27289,0.35067,1-0.35067,rep(c(0,1),20)),c(2,10,2,2),list(RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus=lv,IntensityOfCommunityTransmission=lvTransmission,VaccineEffectivenessAgainstSymptomaticInfection=lv1,RiskOfSymptomaticInfection=lv))
Covid19AssociatedCSVT <- array(c(0.0000288732,1-0.0000288732,0.0000541969,1-0.0000541969,0,1,0,1),c(2,2,2),list(Covid19AssociatedCSVT=lv,Sex=lvSex,RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus=lv))
Covid19AssociatedPVT <- array(c(0.000482596,1-0.000482596,0.000318407,1-0.000318407,0,1,0,1),c(2,2,2),list(Covid19AssociatedPVT=lv,Sex=lvSex,RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus=lv))
DieFromCovid19AssociatedCSVT <- array(c(0.174,0.826,0,1),c(2,2),list(DieFromCovid19AssociatedCSVT=lv,Covid19AssociatedCSVT=lv))
DieFromCovid19AssociatedPVT <- array(c(0.198,0.801,0,1),c(2,2),list(DieFromCovid19AssociatedPVT=lv,Covid19AssociatedPVT=lv))
DieFromCovid19 <- array(c(rep(c(0,1),17),0.00030321,1-0.00030321,0.00032457,1-0.00032457, 0.00080402,1-0.00080402,0.00086505,1-0.00086505,0.00374787,1-0.00374787,0.01879699,1-0.01879699,0.21743389,1-0.21743389,0,1,0,1,0,1,0.00044336,1-0.00044336,0.00062933,1-0.00062933,0.00285919,1-0.00285919,0.00806916,1-0.00806916,0.1910828,1-0.1910828,rep(c(0,1),32)),c(2,8,2,2,2),list(DieFromCovid19=lv,Age=lvAge,Sex=lvSex,VaccineEffectivenessAgainstDeathIfInfected=lv1,RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus=lv))

corical <- custom.fit(dag,list(
  Age=Age,AZVaccineDoses=AZVaccineDoses,SARSCoV2Variant=SARSCoV2Variant,
  IntensityOfCommunityTransmission=IntensityOfCommunityTransmission,Sex=Sex,
  BackgroundCSVTOver6Weeks=BackgroundCSVTOver6Weeks,
  VaccineEffectivenessAgainstSymptomaticInfection=VaccineEffectivenessAgainstSymptomaticInfection,
  BackgroundPVTOver6Weeks=BackgroundPVTOver6Weeks,
  VaccineEffectivenessAgainstDeathIfInfected=VaccineEffectivenessAgainstDeathIfInfected,
  RiskOfSymptomaticInfection=RiskOfSymptomaticInfection,
  VaccineAssociatedTTS=VaccineAssociatedTTS,
  DieFromVaccineAssociatedTTS=DieFromVaccineAssociatedTTS,
  DieFromBackgroundCSVT=DieFromBackgroundCSVT,
  DieFromBackgroundPVT=DieFromBackgroundPVT,
  RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus=RiskOfSymptomaticInfectionUnderCurrentTransmissionAndVaccinationStatus,
  Covid19AssociatedCSVT=Covid19AssociatedCSVT,Covid19AssociatedPVT=Covid19AssociatedPVT,
  DieFromCovid19AssociatedCSVT=DieFromCovid19AssociatedCSVT,DieFromCovid19AssociatedPVT=DieFromCovid19AssociatedPVT,
  DieFromCovid19=DieFromCovid19
))

usethis::use_data(corical, overwrite = TRUE)
