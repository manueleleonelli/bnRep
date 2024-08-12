# Leverage Bayesian Network and Fault Tree Method on Risk Assessment of LNG Maritime Transport Shipping Routes: Application to the China–Australia Route

library(bnlearn)

string1 <- "[FireRiskLNG][LNGLoadingRisk][LNGTransportRisk|FireRiskLNG:LNGLoadingRisk][SafetyPerformanceLNG][DifficultHandlingLNG][VesselRisk|SafetyPerformanceLNG:DifficultHandlingLNG]"
string2 <- "[ImpactEpidemic][PiracyAttack][NonTraditionalThreat|ImpactEpidemic:PiracyAttack][MilitaryConflict][SovereignityDispute][InfluencePoliticalGame|MilitaryConflict:SovereignityDispute]"
string3 <- "[PoorOrganization][UnsafePersonnel][SubjectiveFactors|PoorOrganization:UnsafePersonnel][PoorDraftLevel][UncertainNavigablePeriod][FewerPorts][ObjectiveFactors|PoorDraftLevel:UncertainNavigablePeriod:FewerPorts][MaritimeSecurity|InfluencePoliticalGame:NonTraditionalThreat][CoastalPortsRisk|ObjectiveFactors:SubjectiveFactors]"
string4 <- "[LongDistance][DeepChannel][HighCurrent][HeavyTraffic][AirlineInherentRisks|LongDistance:DeepChannel:HighCurrent:HeavyTraffic][StrongWinds][StrongSeaBreeze][SeaBreezeEffect|StrongWinds:StrongSeaBreeze][Thunderstorms][HeavyFog][LowVisibility|Thunderstorms:HeavyFog][HighWaves][InfluenceWeather|SeaBreezeEffect:LowVisibility:HighWaves]"
string5 <- "[SafetyRoutes|MaritimeSecurity:CoastalPortsRisk:InfluenceWeather:AirlineInherentRisks][TransportLNGRisk|SafetyRoutes:VesselRisk:LNGTransportRisk]"
shipping.dag <- model2network(paste0(string1,string2,string3,string4,string5))

lv <- c("Yes","No")

x1.prob <- array(c(0.00313,1-0.00313),dim=2,dimnames=list(FireRiskLNG=lv))
x2.prob <- array(c(0.0014,1-0.0014),dim=2,dimnames=list(LNGLoadingRisk=lv))
x3.prob <- array(c(0.00133,1-0.00133),dim=2,dimnames=list(SafetyPerformanceLNG=lv))
x4.prob <- array(c(0.000738,1-0.000738),dim=2,dimnames=list(DifficultHandlingLNG=lv))
x22.prob <- array(c(0.0237,1-0.0237),dim=2,dimnames=list(ImpactEpidemic=lv))
x21.prob <- array(c(0.0171,1-0.0171),dim=2,dimnames=list(PiracyAttack=lv))
x20.prob <- array(c(0.00325,1-0.00325),dim=2,dimnames=list(MilitaryConflict=lv))
x19.prob <- array(c(0.000966,1-0.000966),dim=2,dimnames=list(SovereignityDispute=lv))
x18.prob <- array(c(0.000778,1-0.000778),dim=2,dimnames=list(PoorOrganization=lv))
x17.prob <- array(c(0.000463,1-0.000463),dim=2,dimnames=list(UnsafePersonnel=lv))
x16.prob <- array(c(0.00128,1-0.00128),dim=2,dimnames=list(PoorDraftLevel=lv))
x15.prob <- array(c(0.00128,1-0.00128),dim=2,dimnames=list(UncertainNavigablePeriod=lv))
x14.prob <- array(c(0.0142,1-0.0142),dim=2,dimnames=list(FewerPorts=lv))
x13.prob <- array(c(0.014,1-0.014),dim=2,dimnames=list(StrongWinds=lv))
x12.prob <- array(c(0.00247,1-0.00247),dim=2,dimnames=list(StrongSeaBreeze=lv))
x11.prob <- array(c(0.00249,1-0.00249),dim=2,dimnames=list(Thunderstorms=lv))
x10.prob <- array(c(0.0186,1-0.0186),dim=2,dimnames=list(HeavyFog=lv))
x9.prob <- array(c(0.00751,1-0.00751),dim=2,dimnames=list(HighWaves=lv))
x8.prob <- array(c(0.00605,1-0.00605),dim=2,dimnames=list(HeavyTraffic=lv))
x7.prob <- array(c(0.00578,1-0.00578),dim=2,dimnames=list(HighCurrent=lv))
x6.prob <- array(c(0.000844,1-0.000844),dim=2,dimnames=list(DeepChannel=lv))
x5.prob <- array(c(0.000553,1-0.000553),dim=2,dimnames=list(LongDistance=lv))


I1.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(LNGTransportRisk=lv,FireRiskLNG=lv,LNGLoadingRisk=lv))
I2.prob <- array(c(1,0,0,1,0,1,0,1),dim=c(2,2,2),dimnames=list(VesselRisk=lv,SafetyPerformanceLNG=lv,DifficultHandlingLNG=lv))
I13.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames= list(NonTraditionalThreat=lv,ImpactEpidemic=lv,PiracyAttack=lv))
I12.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(InfluencePoliticalGame=lv,MilitaryConflict=lv,SovereignityDispute=lv))
I11.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(SubjectiveFactors=lv,PoorOrganization=lv,UnsafePersonnel=lv))
I10.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(ObjectiveFactors=lv,PoorDraftLevel=lv,UncertainNavigablePeriod=lv,FewerPorts=lv))
I9.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(SeaBreezeEffect=lv,StrongWinds=lv,StrongSeaBreeze=lv))
I7.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(MaritimeSecurity=lv,InfluencePoliticalGame=lv,NonTraditionalThreat=lv))
I6.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(CoastalPortsRisk=lv,ObjectiveFactors=lv,SubjectiveFactors=lv))
I8.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames=list(LowVisibility=lv,Thunderstorms=lv,HeavyFog=lv))
I5.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(InfluenceWeather=lv,SeaBreezeEffect=lv,LowVisibility=lv,HighWaves=lv))
I4.prob <- array(c(1,0,rep(c(0,1),15)),dim=c(2,2,2,2,2),dimnames=list(AirlineInherentRisks=lv,LongDistance=lv,DeepChannel=lv,HighCurrent=lv,HeavyTraffic=lv))
I3.prob <- array(c(rep(c(1,0),15),0,1),dim=c(2,2,2,2,2),dimnames=list(SafetyRoutes=lv,MaritimeSecurity=lv,CoastalPortsRisk=lv,InfluenceWeather=lv,AirlineInherentRisks=lv))
T.prob <- array(c(rep(c(1,0),7),0,1),dim=c(2,2,2,2),dimnames=list(TransportLNGRisk=lv,SafetyRoutes=lv,VesselRisk=lv,LNGTransportRisk=lv))
probs <- list(LNGTransportRisk=I1.prob,FireRiskLNG=x1.prob,LNGLoadingRisk=x2.prob,
              VesselRisk=I2.prob,SafetyPerformanceLNG=x3.prob,DifficultHandlingLNG=x4.prob,
              ImpactEpidemic=x22.prob,NonTraditionalThreat=I13.prob,PiracyAttack=x21.prob,
              InfluencePoliticalGame=I12.prob,MilitaryConflict=x20.prob,SovereignityDispute=x19.prob,
              SubjectiveFactors=I11.prob,PoorOrganization=x18.prob,UnsafePersonnel=x17.prob,
              ObjectiveFactors=I10.prob,PoorDraftLevel=x16.prob,UncertainNavigablePeriod=x15.prob,FewerPorts=x14.prob,
              MaritimeSecurity=I7.prob,CoastalPortsRisk=I6.prob,SeaBreezeEffect=I9.prob,StrongWinds=x13.prob,StrongSeaBreeze=x12.prob,
              LowVisibility=I8.prob,Thunderstorms=x11.prob,HeavyFog=x10.prob,HighWaves=x9.prob,InfluenceWeather=I5.prob,
              AirlineInherentRisks=I4.prob,LongDistance=x5.prob,DeepChannel=x6.prob,HighCurrent=x7.prob,HeavyTraffic=x8.prob,SafetyRoutes=I3.prob,
              TransportLNGRisk=T.prob)

shipping <- custom.fit(shipping.dag,probs)

usethis::use_data(shipping, overwrite = TRUE)
