# A bayesian network-based safety assessment method for solid propellant granule-casting molding process

library(bnlearn)
string1 <- "[GrindingTimeAnomaly][WaterAdditionAnomaly][TemperatureAnomaly][CentrifugalRunningTimeAnomaly][CalenderingRepellingWaterTemperatureAnomaly][CalenderingRepellentWaterTimesAnomaly][CalenderingRollDistanceAnomaly][DryingRepellingWaterTemperatureAnomaly][DryingRepellingWaterTimeAnomaly][KneadingTimeAnomaly]"
string2 <- "[JacketTemperatureAnomaly][HoldingPressureAnomaly][HoldingTimeAnomaly][ExtrusionStrengthAnomaly][LengthSettingValueAnomaly][PolishTimeAnomaly][FloodingTimeAnomaly][FrequencyOfWaterChangeAnomaly][DryingTemperatureAnomaly][DryingTimeAnomaly]"
string3 <- "[ShineTimeAnomaly][MedicineGranulesDryingTemperatureAnomaly][MedicineGranulesDryingTimeAnomaly][CirculationWaterTemperatureAnomaly][VacuumDegreeAnomaly1][VacuumTimeAnomaly1][CirculatingWaterTemperatureAnomaly][VacuumDegreeAnomaly2][VacuumTimeAnomaly2][CastingDifferentialPressureAnomaly]"
string4 <- "[CastingTimeAnomaly][CuringTemperatureAnomaly][CuringTimeAnomaly]"
string5 <- "[ShineAnomaly|ShineTimeAnomaly][SolventRemovingAnomaly|FloodingTimeAnomaly:FrequencyOfWaterChangeAnomaly:DryingSolventRemovingAnomaly][DryingSolventRemovingAnomaly|DryingTemperatureAnomaly:DryingTimeAnomaly][PolishAnomaly|PolishTimeAnomaly][CuttingAnomaly|LengthSettingValueAnomaly][ExtrusionAnomaly|HoldingPressureAnomaly:HoldingTimeAnomaly:ExtrusionStrengthAnomaly][KneadingAnomaly|JacketTemperatureAnomaly:KneadingTimeAnomaly][RepellentWaterAnomaly|CentrifugalRunningTimeAnomaly:CalenderingRepellingWaterTemperatureAnomaly:CalenderingRepellentWaterTimesAnomaly:CalenderingRollDistanceAnomaly:DryingRepellentWaterAnomaly][DryingRepellentWaterAnomaly|DryingRepellingWaterTemperatureAnomaly:DryingRepellingWaterTimeAnomaly][AbsorptionAnomaly|TemperatureAnomaly][CatalystGrindingAnomaly|GrindingTimeAnomaly:WaterAdditionAnomaly]"
string6 <- "[GranuleCastingMoldingAnomaly|CatalystGrindingAnomaly:AbsorptionAnomaly:RepellentWaterAnomaly:KneadingAnomaly:ExtrusionAnomaly:CuttingAnomaly:PolishAnomaly:SolventRemovingAnomaly:ShineAnomaly:DryingOfMedicineGranulesAnomaly:LiquidPreparationAnomaly:CastingAnomaly:CuringAnomaly][CuringAnomaly|CuringTemperatureAnomaly:CuringTimeAnomaly][CastingAnomaly|CirculatingWaterTemperatureAnomaly:VacuumDegreeAnomaly2:VacuumTimeAnomaly2:CastingDifferentialPressureAnomaly:CastingTimeAnomaly][LiquidPreparationAnomaly|CirculationWaterTemperatureAnomaly:VacuumDegreeAnomaly1:VacuumTimeAnomaly1][DryingOfMedicineGranulesAnomaly|MedicineGranulesDryingTemperatureAnomaly:MedicineGranulesDryingTimeAnomaly]"
propellant.dag <- model2network(paste0(string1,string2,string3,string4,string5,string6))

lv <- c("True","False")

x1.prob <- array(c(6.25E-03,1-6.25E-03),2,list(GrindingTimeAnomaly=lv))
x2.prob <- array(c(1.87E-03,1-1.87E-03),2,list(WaterAdditionAnomaly=lv))
x3.prob <- array(c(3.28E-03,1-3.28E-03),2,list(TemperatureAnomaly=lv))
x4.prob <- array(c(2.97E-03,1-2.97E-03),2,list(CentrifugalRunningTimeAnomaly=lv))
x5.prob <- array(c(7.68E-03,1-7.68E-03),2,list(CalenderingRepellingWaterTemperatureAnomaly=lv))
x6.prob <- array(c(9.69E-03,1-9.69E-03),2,list(CalenderingRepellentWaterTimesAnomaly=lv))
x7.prob <- array(c(1.23E-02,1-1.23E-02),2,list(CalenderingRollDistanceAnomaly=lv))
x8.prob <- array(c(2.02E-03,1-2.02E-03),2,list(DryingRepellingWaterTemperatureAnomaly=lv))
x9.prob <- array(c(2.51E-03,1-2.51E-03),2,list(DryingRepellingWaterTimeAnomaly=lv))
x10.prob <- array(c(3.54E-03,1-3.54E-03),2,list(KneadingTimeAnomaly=lv))
x11.prob <- array(c(4.24E-03,1-4.24E-03),2,list(JacketTemperatureAnomaly=lv))
x12.prob <- array(c(8.08E-03,1-8.08E-03),2,list(HoldingPressureAnomaly=lv))
x13.prob <- array(c(6.24E-03,1-6.24E-03),2,list(HoldingTimeAnomaly=lv))
x14.prob <- array(c(1.53E-02,1-1.53E-02),2,list(ExtrusionStrengthAnomaly=lv))
x15.prob <- array(c(1.17E-02,1-1.17E-02),2,list(LengthSettingValueAnomaly=lv))
x16.prob <- array(c(2.42E-03,1-2.42E-03),2,list(PolishTimeAnomaly=lv))
x17.prob <- array(c(5.92E-03,1-5.92E-03),2,list(FloodingTimeAnomaly=lv))
x18.prob <- array(c(2.02E-03,1-2.02E-03),2,list(FrequencyOfWaterChangeAnomaly=lv))
x19.prob <- array(c(6.92E-04,1-6.92E-04),2,list(DryingTemperatureAnomaly=lv))
x20.prob <- array(c(6.92E-04,1-6.92E-04),2,list(DryingTimeAnomaly=lv))
x21.prob <- array(c(2.39E-03,1-2.39E-03),2,list(ShineTimeAnomaly=lv))
x22.prob <- array(c(1.17E-03,1-1.17E-03),2,list(MedicineGranulesDryingTemperatureAnomaly=lv))
x23.prob <- array(c(8.34E-04,1-8.34E-04),2,list(MedicineGranulesDryingTimeAnomaly=lv))
x24.prob <- array(c(8.06E-03,1-8.06E-03),2,list(CirculationWaterTemperatureAnomaly=lv))
x25.prob <- array(c(1.57E-02,1-1.57E-02),2,list(VacuumDegreeAnomaly1=lv))
x26.prob <- array(c(2.94E-03,1-2.94E-03),2,list(VacuumTimeAnomaly1=lv))
x27.prob <- array(c(4.10E-03,1-4.10E-03),2,list(CirculatingWaterTemperatureAnomaly=lv))
x28.prob <- array(c(9.39E-03,1-9.39E-03),2,list(VacuumDegreeAnomaly2=lv))
x29.prob <- array(c(4.11E-03,1-4.11E-03),2,list(VacuumTimeAnomaly2=lv))
x30.prob <- array(c(8.80E-03,1-8.80E-03),2,list(CastingDifferentialPressureAnomaly=lv))
x31.prob <- array(c(4.64E-03,1-4.64E-03),2,list(CastingTimeAnomaly=lv))
x32.prob <- array(c(1.67E-02,1-1.67E-02),2,list(CuringTemperatureAnomaly=lv))
x33.prob <- array(c(1.09E-02,1-1.09E-02),2,list(CuringTimeAnomaly=lv))
m1.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2), list(CatalystGrindingAnomaly=lv,GrindingTimeAnomaly=lv,WaterAdditionAnomaly=lv))
m2.prob <- array(c(1,0,0,1),c(2,2),list(AbsorptionAnomaly=lv,TemperatureAnomaly=lv))
m14.prob <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DryingRepellentWaterAnomaly=lv,DryingRepellingWaterTemperatureAnomaly=lv,DryingRepellingWaterTimeAnomaly=lv))
m3.prob <- array(c(rep(c(1,0),31),0,1),rep(2,6),list(RepellentWaterAnomaly=lv,CentrifugalRunningTimeAnomaly=lv,CalenderingRepellingWaterTemperatureAnomaly=lv,CalenderingRepellentWaterTimesAnomaly=lv,CalenderingRollDistanceAnomaly=lv,DryingRepellentWaterAnomaly=lv))
m4.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(KneadingAnomaly=lv,JacketTemperatureAnomaly=lv,KneadingTimeAnomaly=lv))
m5.prob <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(ExtrusionAnomaly=lv,HoldingPressureAnomaly=lv,HoldingTimeAnomaly=lv,ExtrusionStrengthAnomaly=lv))
m6.prob <- array(c(1,0,0,1),c(2,2),list(CuttingAnomaly=lv,LengthSettingValueAnomaly=lv))
m7.prob <- array(c(1,0,0,1),c(2,2),list(PolishAnomaly=lv,PolishTimeAnomaly=lv))
m15.prob <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DryingSolventRemovingAnomaly=lv,DryingTemperatureAnomaly=lv,DryingTimeAnomaly=lv))
m8.prob <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(SolventRemovingAnomaly=lv,FloodingTimeAnomaly=lv,FrequencyOfWaterChangeAnomaly=lv,DryingSolventRemovingAnomaly=lv))
m9.prob <- array(c(1,0,0,1),c(2,2),list(ShineAnomaly=lv,ShineTimeAnomaly=lv))
m10.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(DryingOfMedicineGranulesAnomaly=lv,MedicineGranulesDryingTemperatureAnomaly=lv,MedicineGranulesDryingTimeAnomaly=lv))
m11.prob <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(LiquidPreparationAnomaly=lv,CirculationWaterTemperatureAnomaly=lv,VacuumDegreeAnomaly1=lv,VacuumTimeAnomaly1=lv))
m12.prob <- array(c(rep(c(1,0),31),0,1),rep(2,6),list(CastingAnomaly=lv,CirculatingWaterTemperatureAnomaly=lv,VacuumDegreeAnomaly2=lv,VacuumTimeAnomaly2=lv,CastingDifferentialPressureAnomaly=lv,CastingTimeAnomaly=lv))
m13.prob <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(CuringAnomaly=lv,CuringTemperatureAnomaly=lv,CuringTimeAnomaly=lv))
t.prob <- array(c(rep(c(1,0),2^13-1),0,1),rep(2,14),list(GranuleCastingMoldingAnomaly=lv,CatalystGrindingAnomaly=lv,AbsorptionAnomaly=lv,RepellentWaterAnomaly=lv,KneadingAnomaly=lv,ExtrusionAnomaly=lv,CuttingAnomaly=lv,PolishAnomaly=lv,SolventRemovingAnomaly=lv,ShineAnomaly=lv,DryingOfMedicineGranulesAnomaly=lv,LiquidPreparationAnomaly=lv,CastingAnomaly=lv,CuringAnomaly=lv))

probs <- list( GrindingTimeAnomaly= x1.prob,
               WaterAdditionAnomaly = x2.prob,
               TemperatureAnomaly = x3.prob,
               CentrifugalRunningTimeAnomaly= x4.prob,
               CalenderingRepellingWaterTemperatureAnomaly= x5.prob,
               CalenderingRepellentWaterTimesAnomaly = x6.prob,
               CalenderingRollDistanceAnomaly = x7.prob,
               DryingRepellingWaterTemperatureAnomaly= x8.prob,
               DryingRepellingWaterTimeAnomaly= x9.prob,
               KneadingTimeAnomaly= x10.prob,
               JacketTemperatureAnomaly= x11.prob,
               HoldingPressureAnomaly= x12.prob,
               HoldingTimeAnomaly= x13.prob,
               ExtrusionStrengthAnomaly= x14.prob,
               LengthSettingValueAnomaly= x15.prob,
               PolishTimeAnomaly = x16.prob,
               FloodingTimeAnomaly= x17.prob,
               FrequencyOfWaterChangeAnomaly = x18.prob,
               DryingTemperatureAnomaly= x19.prob,
               DryingTimeAnomaly= x20.prob,
               ShineTimeAnomaly= x21.prob,
               MedicineGranulesDryingTemperatureAnomaly= x22.prob,
               MedicineGranulesDryingTimeAnomaly= x23.prob,
               CirculationWaterTemperatureAnomaly= x24.prob,
               VacuumDegreeAnomaly1= x25.prob,
               VacuumTimeAnomaly1= x26.prob,
               CirculatingWaterTemperatureAnomaly= x27.prob,
               VacuumDegreeAnomaly2= x28.prob,
               VacuumTimeAnomaly2= x29.prob,
               CastingDifferentialPressureAnomaly= x30.prob,
               CastingTimeAnomaly= x31.prob,
               CuringTemperatureAnomaly= x32.prob,
               CuringTimeAnomaly= x33.prob,
               CatalystGrindingAnomaly =m1.prob,
               AbsorptionAnomaly=m2.prob,
               DryingRepellentWaterAnomaly=m14.prob,
               RepellentWaterAnomaly=m3.prob,
               KneadingAnomaly=m4.prob,
               ExtrusionAnomaly=m5.prob,
               CuttingAnomaly=m6.prob,
               PolishAnomaly=m7.prob,
               DryingSolventRemovingAnomaly=m15.prob,
               SolventRemovingAnomaly=m8.prob,
               ShineAnomaly=m9.prob,
               DryingOfMedicineGranulesAnomaly=m10.prob,
               LiquidPreparationAnomaly=m11.prob,
               CastingAnomaly=m12.prob,
               CuringAnomaly=m13.prob,
               GranuleCastingMoldingAnomaly=t.prob
)

propellant <- custom.fit(propellant.dag,probs)

usethis::use_data(propellant, overwrite = TRUE)
