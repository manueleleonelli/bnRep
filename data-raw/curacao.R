
dag <- model2network("[SuitabilityForConservation|VisitorDemand:SpeciesRelatedConservationValue:WatershedConservationValue:NeighborhoodConservationValue][WatershedConservationValue|WSIncludesOtherKeyDesignations:WSIncludesRAMSARArea:WSAboveMarineProtectedArea:WSLandscapeVariability][NeighborhoodConservationValue|CulturalSiteProximity:NeighborhoodNaturalLandCover][SpeciesRelatedConservationValue|FloraRichness:KeySpeciesPresence][FloraRichness][VisitorDemand][KeySpeciesPresence][WSLandscapeVariability][WSIncludesOtherKeyDesignations][WSIncludesRAMSARArea][WSAboveMarineProtectedArea][CulturalSiteProximity][NeighborhoodNaturalLandCover]")

lv <- c("no","yes")
lv2 <- c("low", "high")
lv3 <- c("low", "med", "high")


FloraRichness <- array(rep(1/3,3),3,list(FloraRichness=lv3))
VisitorDemand <- array(rep(1/3,3),3,list(VisitorDemand=lv3))
KeySpeciesPresence <- array(c(0.5,0.5),2,list(KeySpeciesPresence=lv))
WSLandscapeVariability <- array(c(1/3,1/3,1/3),3,list(WSLandscapeVariability=lv3))
WSIncludesOtherKeyDesignations <- array(c(0.5,0.5),2,list(WSIncludesOtherKeyDesignations=lv))
WSIncludesRAMSARArea <- array(c(0.5,0.5),2,list(WSIncludesRAMSARArea=lv))
WSAboveMarineProtectedArea <- array(c(0.5,0.5),2,list(WSAboveMarineProtectedArea=lv))
CulturalSiteProximity <- array(c(1/3,1/3,1/3),3,list(CulturalSiteProximity=lv3))
NeighborhoodNaturalLandCover <- array(c(1/3,1/3,1/3),3,list(NeighborhoodNaturalLandCover=lv3))
SpeciesRelatedConservationValue <- array(c(0.65,0.35,0,1,0.25,0.75,0,1,0.1,0.9,0,1),c(2,2,3),list(SpeciesRelatedConservationValue=lv2,KeySpeciesPresence=lv,FloraRichness=lv3))
NeighborhoodConservationValue <- array(c(0.85,0.15,0.7,0.3,0,1,0.35,0.65,0.15,0.85,0,1,0,1,0,1,0,1),c(2,3,3),list(NeighborhoodConservationValue=lv2,NeighborhoodNaturalLandCover=lv3,CulturalSiteProximity=lv3))
WatershedConservationValue <- array(c(1,0,0.3,0.7,rep(c(0,1),6), 0.4,0.6,0.15,0.85,rep(c(0,1),14)),c(2,2,2,2,3),list(WatershedConservationValue=lv2,WSIncludesOtherKeyDesignations=lv,WSIncludesRAMSARArea=lv,WSAboveMarineProtectedArea=lv ,WSLandscapeVariability=lv3))
SuitabilityForConservation <- array(c(1,0, 0.98,0.02, 0.95,0.05, 0.5,0.5, 0.48,0.52, 0.45,0.55, 0.45,0.55, 0.43,0.57,0.4,0.6,0.35,0.65,0.33,0.67,0.3,0.7,0.2,0.8,0.15,0.85,0.1,0.9,rep(c(0,1),9)),c(2,3,2,2,2),list(SuitabilityForConservation=lv2,VisitorDemand=lv3,SpeciesRelatedConservationValue=lv2,WatershedConservationValue=lv2,NeighborhoodConservationValue=lv2))

curacao1 <- custom.fit(dag,list(
  FloraRichness=FloraRichness,VisitorDemand=VisitorDemand,KeySpeciesPresence=KeySpeciesPresence,
  WSLandscapeVariability=WSLandscapeVariability,WSIncludesOtherKeyDesignations=WSIncludesOtherKeyDesignations,
  WSIncludesRAMSARArea=WSIncludesRAMSARArea,WSAboveMarineProtectedArea=WSAboveMarineProtectedArea,
  CulturalSiteProximity=CulturalSiteProximity,NeighborhoodNaturalLandCover=NeighborhoodNaturalLandCover,
  SpeciesRelatedConservationValue=SpeciesRelatedConservationValue,
  NeighborhoodConservationValue=NeighborhoodConservationValue,
  WatershedConservationValue=WatershedConservationValue,SuitabilityForConservation=SuitabilityForConservation
))

usethis::use_data(curacao1,overwrite = TRUE)


dag <- model2network("[SuitabilityForTourism|NeighborhoodSafetyScore:ViewQuality:SiteInfrastructure:NaturalAmenities:DistanceToTourismCore][NaturalAmenities|ProximityToPOIs:ImmediateBeachAccess:ProximityToSouthernCoast][SiteInfrastructure|RoadsWithin1KM:UtilityAccess][ViewQuality|CoastalView:ViewExtent][DistanceToTourismCore][ProximityToPOIs][ProximityToSouthernCoast][ImmediateBeachAccess][RoadsWithin1KM][UtilityAccess][CoastalView][ViewExtent][NeighborhoodSafetyScore]")
lv1 <- c("no","yes")
lv2 <- c("low", "high")
lv3 <- c("low", "medium", "high")
lv4 <- c("far","near","immediate")
lv5 <- c("distant","nearby","inside")


 DistanceToTourismCore <- array(c(1/3,1/3,1/3),c(3),list(DistanceToTourismCore=lv5))
 ProximityToPOIs<- array(c(1/3,1/3,1/3),c(3),list(ProximityToPOIs=lv4))
 ProximityToSouthernCoast<- array(c(1/3,1/3,1/3),c(3),list(ProximityToSouthernCoast=lv4))
 ImmediateBeachAccess<- array(c(1/2,1/2),c(2),list(ImmediateBeachAccess=lv1))
 RoadsWithin1KM<- array(c(1/2,1/2),c(2),list(RoadsWithin1KM=lv1))
 UtilityAccess<- array(c(1/2,1/2),c(2),list(UtilityAccess=lv1))
 CoastalView<- array(c(1/2,1/2),c(2),list(CoastalView=lv1))
 ViewExtent<- array(c(1/3,1/3,1/3),c(3),list(ViewExtent=lv3))
 NeighborhoodSafetyScore<- array(c(1/3,1/3,1/3),c(3),list(NeighborhoodSafetyScore=lv3))
 ViewQuality <- array(c(1,0,0.5,0.5,0.4,0.6,0.6,0.4,0.2,0.8,0,1),c(2,3,2),list(ViewQuality=lv2,ViewExtent=lv3,CoastalView=lv1))
 SiteInfrastructure <- array(c(1,0,0.5,0.5,0.5,0.5,0,1),c(2,2,2),list(SiteInfrastructure=lv2,RoadsWithin1KM=lv1,UtilityAccess=lv1))
 NaturalAmenities <- array(c(1,0,0.8,0.2,0.5,0.5,0,1,0,1,0,1,0.7,0.3,0.6,0.4,0.3,0.7,0,1,0,1,0,1,0.5,0.5,0.3,0.7,0.2,0.8,0,1,0,1,0,1),c(2,3,2,3),list(NaturalAmenities=lv2,ProximityToPOIs=lv4,ImmediateBeachAccess=lv1,ProximityToSouthernCoast=lv4))
 SuitabilityForTourism <- array(c(1,0,1,0,1,0,1,0,  0.9,0.1,0.85,0.15,1,0, 0.9,0.1,    0.85,0.15, 0.45,0.55,0.4,0.6, 0.35,0.65,0.7,0.3, 0.65,0.35, 0.625,0.375,  0.45,0.55,0.4,0.6, 0.375,0.625,   0.4,0.6,   0.35,0.65,0.325,0.675,0.225,0.775, 0.175,0.825,0.15,0.85, 1,0,1,0,1,0,   0.8,0.2,0.7,0.3,0.65,0.35,0.9,0.1,0.8,0.2,0.75,0.25,0.45,0.55,0.35,0.65,0.3,0.7,0.5,0.5,0.4,0.6,0.35,0.65,0.4,0.6,0.3,0.7,0.25,0.75,0.35,0.65,0.25,0.75,0.2,0.8,0.25,0.75,0.2,0.8,0.25,0.75,0.15,0.85,0.1,0.9,1,0,1,0,1,0, 0.7,0.3,0.6,0.4,0.5,0.5,0.45,0.55,0.35,0.65,0.25,0.75,0.4,0.6,0.3,0.7,0.2,0.8,0.35,0.65,0.25,0.75,0.15,0.85,0.25,0.75,0.15,0.85,0.05,0.95,0.3,0.7,0.2,0.8,0.1,0.9,0.2,0.8,0.1,0.9,0,1),c(2,3,2,2,2,3),list(SuitabilityForTourism=lv1,NeighborhoodSafetyScore=lv3,ViewQuality=lv2,SiteInfrastructure=lv2,NaturalAmenities=lv2,DistanceToTourismCore=lv5))

 curacao2 <- custom.fit(dag,list(
  DistanceToTourismCore=DistanceToTourismCore,ProximityToPOIs=ProximityToPOIs,ProximityToSouthernCoast=ProximityToSouthernCoast,
  ImmediateBeachAccess=ImmediateBeachAccess,RoadsWithin1KM=RoadsWithin1KM,UtilityAccess=UtilityAccess,
  CoastalView=CoastalView,ViewExtent=ViewExtent,NeighborhoodSafetyScore=NeighborhoodSafetyScore,
  ViewQuality=ViewQuality,SiteInfrastructure=SiteInfrastructure,NaturalAmenities=NaturalAmenities,
  SuitabilityForTourism=SuitabilityForTourism
))

usethis::use_data(curacao2,overwrite = TRUE)


dag <- model2network("[SuitabilityForUrbanFabric|LuxuryAmenities:NeighborhoodFactors:TransportationAccess:SiteFavorability][LuxuryAmenities|ProximityToBeach:ProximityToCoast:ViewQuality][TransportationAccess|SmallRoads:PrimaryRoads:AccessToPublicTransportation][ViewQuality|CoastalView:ViewExtent][SiteFavorability|PollutedSoils:AirNuisance:NoiseNuisance:SlopeLimited][NeighborhoodFactors|NearbySupportingFunctions:NeighborhoodSafetyScore][NearbySupportingFunctions][NeighborhoodSafetyScore][SlopeLimited][PollutedSoils][AirNuisance][NoiseNuisance][ProximityToBeach][ProximityToCoast][CoastalView][ViewExtent][SmallRoads][PrimaryRoads][AccessToPublicTransportation]")

lv3 <- c("low","medium", "high")
lv2 <- c("low","high")
lv <- c("no", "yes")
lv4 <- c("far", "near", "immediate")


NearbySupportingFunctions  <- array(c(1/3,1/3,1/3),3,list(NearbySupportingFunctions=lv3))
NeighborhoodSafetyScore<- array(c(1/3,1/3,1/3),3,list(NeighborhoodSafetyScore=lv3))
SlopeLimited<- array(c(1/2,1/2),2,list(SlopeLimited=lv))
PollutedSoils<- array(c(1/2,1/2),2,list(PollutedSoils=lv))
AirNuisance<- array(c(1/2,1/2),2,list(AirNuisance=lv))
NoiseNuisance<- array(c(1/2,1/2),2,list(NoiseNuisance=lv))
ProximityToBeach<- array(c(1/2,1/2),2,list(ProximityToBeach=lv))
ProximityToCoast<- array(c(1/3,1/3,1/3),3,list(ProximityToCoast=lv4))
CoastalView<- array(c(1/2,1/2),2,list(CoastalView=lv))
ViewExtent<- array(c(1/3,1/3,1/3),3,list(ViewExtent=lv3))
SmallRoads<- array(c(1/2,1/2),2,list(SmallRoads=lv))
PrimaryRoads<- array(c(1/2,1/2),2,list(PrimaryRoads=lv))
AccessToPublicTransportation<- array(c(1/2,1/2),2,list(AccessToPublicTransportation=lv))
NeighborhoodFactors  <- array(c(1,0,0.8,0.2,0.6,0.4,0.9,0.1,0.5,0.5,0.4,0.6,0.3,0.7,0.2,0.8,0,1),c(2,3,3),list(NeighborhoodFactors=lv2,NearbySupportingFunctions=lv3,NeighborhoodSafetyScore=lv3))
SiteFavorability <- array(c(0,1,1,0,0.4,0.6,1,0,0.3,0.7,1,0,0.7,0.3,rep(c(1,0),9)),rep(2,5),list(SiteFavorability=lv2,PollutedSoils=lv,AirNuisance=lv,NoiseNuisance=lv,SlopeLimited=lv))
ViewQuality <- array(c(1,0,0.6,0.4,0.4,0.6,0.3,0.7,0.2,0.8,0,1),c(2,3,2),list(ViewQuality=lv2,ViewExtent=lv3,CoastalView=lv))
TransportationAccess <- array(c(1,0,1,0,0.1,0.9,0.03,0.97,0.05,0.95,0.05,0.95,0.05,0.95,0,1),c(2,2,2,2),list(TransportationAccess=lv2,AccessToPublicTransportation=lv,SmallRoads=lv,PrimaryRoads=lv))
LuxuryAmenities <- array(c(1,0,0.3,0.7,0.3,0.7,0.1,0.9,0.9,0.1,0.1,0.9,0.25,0.75,0.05,0.95,0.2,0.8,0.1,0.9,0.1,0.9,0,1),c(2,2,2,3),list(LuxuryAmenities=lv2,ViewQuality=lv2,ProximityToBeach=lv,ProximityToCoast=lv4))
SuitabilityForUrbanFabric <- array(c(1,0,0.95,0.05,1,0,0.9,0.1,0.9,0.1,0.35,0.65,0.55,0.45,0.25,0.75,0.9,0.1,0.15,0.85,0.6,0.4,0.05,0.95,0.4,0.6,0.1,0.9,0.05,0.95,0,1),rep(2,5),list(SuitabilityForUrbanFabric=lv,LuxuryAmenities=lv2,NeighborhoodFactors=lv2,TransportationAccess=lv2,SiteFavorability=lv2))
curacao3 <- custom.fit(dag,list(
  NearbySupportingFunctions=NearbySupportingFunctions,NeighborhoodSafetyScore=NeighborhoodSafetyScore,
  SlopeLimited=SlopeLimited,PollutedSoils=PollutedSoils,AirNuisance=AirNuisance,NoiseNuisance=NoiseNuisance,
  ProximityToBeach=ProximityToBeach,ProximityToCoast=ProximityToCoast,CoastalView=CoastalView,
  ViewExtent=ViewExtent,SmallRoads=SmallRoads,PrimaryRoads=PrimaryRoads,SiteFavorability=SiteFavorability,
  AccessToPublicTransportation=AccessToPublicTransportation,NeighborhoodFactors=NeighborhoodFactors,
  ViewQuality=ViewQuality,TransportationAccess=TransportationAccess,LuxuryAmenities=LuxuryAmenities,
  SuitabilityForUrbanFabric=SuitabilityForUrbanFabric
))

usethis::use_data(curacao3,overwrite = TRUE)



dag <- model2network("[SuitabilityConventionalAgriculture|InfrastructureConstraints:SiteConstraints:CoUserInteractionConstraints:ProductivityConstraints][SiteConstraints|EnvironmentalConstraints:Slope][CoUserInteractionConstraints|BuiltUpDensity:AgriculturalDensity][ProductivityConstraints|GroundwaterDepth:Geology][InfrastructureConstraints|AllRoadAccess:UtilitiesAccess][AllRoadAccess][UtilitiesAccess][GroundwaterDepth][Geology][BuiltUpDensity][AgriculturalDensity][EnvironmentalConstraints][Slope]")

lv <- c("no", "yes")
lvU <- c("no","planned","yes")
lvG <- c("less than 25m", "between 25 and 60m", "over 60m")
lvGeo <- c("colluvial clay","diabase or other", "limestone bare rock")
lv3 <- c("low", "med","high")
lvS <- c("flat","moderate","steep")
vl <- c("yes","no")
lv2 <- c("low","high")

AllRoadAccess <-array(c(0.5,0.5),2,list(AllRoadAccess=lv))
UtilitiesAccess <- array(c(1/3,1/3,1/3),3,list(UtilitiesAccess=lvU))
GroundwaterDepth <- array(c(1/3,1/3,1/3),3,list(GroundwaterDepth=lvG))
Geology <- array(c(1/3,1/3,1/3),3,list(Geology=lvGeo))
BuiltUpDensity <- array(c(1/3,1/3,1/3),3,list(BuiltUpDensity=lv3))
AgriculturalDensity <- array(c(1/3,1/3,1/3),3,list(AgriculturalDensity=lv3))
EnvironmentalConstraints <- array(c(1/2,1/2),2,list(EnvironmentalConstraints=vl))
Slope <- array(c(1/3,1/3,1/3),3,list(Slope=lvS))
InfrastructureConstraints <- array(c(0.5,0.5,0.7,0.3,0.9,0.1,0.6,0.4,0.75,0.25,1,0),c(2,3,2),list(InfrastructureConstraints=lv2,UtilitiesAccess=lvU,AllRoadAccess=lv))
ProductivityConstraints <- array(c(0.9,0.1,0.85,0.15,0.5,0.5,0.7,0.3,0.65,0.35,0.25,0.75,0.65,0.35,0.5,0.5,0,1), c(2,3,3),list(ProductivityConstraints=lv2,Geology=lvGeo,GroundwaterDepth=lvG))
CoUserInteractionConstraints <- array(c(0.15,0.85,0.85,0.15,0.85,0.15,0.8,0.2,0.7,0.3,0.6,0.4,0.95,0.05,0.85,0.15,0.8,0.2),c(2,3,3),list(CoUserInteractionConstraints=lv2,BuiltUpDensity=lv3,AgriculturalDensity=lv3))
SiteConstraints <- array(c(0.4,0.6,1,0,0.4,0.6,0.9,0.1,0.4,0.6,0.7,0.3),c(2,2,3),list(SiteConstraints=lv2,EnvironmentalConstraints=lv,Slope=lvS))
SuitabilityConventionalAgriculture <- array(c(0,1,0.1,0.9,0.4,0.6,0.5,0.5,0.2,0.8,0.25,0.75,0.35,0.65,0.4,0.6,0.5,0.5,0.6,0.4,0.7,0.3,0.8,0.2,0.65,0.35,0.7,0.3,0.8,0.2,0.9,0.1),c(2,2,2,2,2),list(SuitabilityConventionalAgriculture=lv,InfrastructureConstraints=lv2,SiteConstraints=lv2,CoUserInteractionConstraints=lv2,ProductivityConstraints=lv2))

curacao4 <- custom.fit(dag,list(
  AllRoadAccess=AllRoadAccess,UtilitiesAccess=UtilitiesAccess,GroundwaterDepth=GroundwaterDepth,Geology=Geology,BuiltUpDensity=BuiltUpDensity,AgriculturalDensity=AgriculturalDensity,EnvironmentalConstraints=EnvironmentalConstraints,Slope=Slope,
  InfrastructureConstraints=InfrastructureConstraints,ProductivityConstraints=ProductivityConstraints,
  CoUserInteractionConstraints=CoUserInteractionConstraints,SiteConstraints=SiteConstraints,
  SuitabilityConventionalAgriculture=SuitabilityConventionalAgriculture
))

usethis::use_data(curacao4,overwrite = TRUE)



dag <- model2network("[SuitabilityStructuralAgriculture|InfrastructureConstraints:SiteConstraints:CoUserInteractionConstraints:ProductivityConstraints][SiteConstraints|EnvironmentalConstraints:Slope][CoUserInteractionConstraints|BuiltUpDensity:AgriculturalDensity][ProductivityConstraints|GroundwaterDepth:Geology][InfrastructureConstraints|AllRoadAccess:UtilitiesAccess][AllRoadAccess][UtilitiesAccess][GroundwaterDepth][Geology][BuiltUpDensity][AgriculturalDensity][EnvironmentalConstraints][Slope]")

lv <- c("no", "yes")
lvU <- c("no","planned","yes")
lvG <- c("less than 25m", "between 25 and 60m", "over 60m")
lvGeo <- c("colluvial clay","diabase or other", "limestone bare rock")
lv3 <- c("low", "med","high")
lvS <- c("flat","moderate","steep")
vl <- c("yes","no")
lv2 <- c("low","high")

AllRoadAccess <-array(c(0.5,0.5),2,list(AllRoadAccess=lv))
UtilitiesAccess <- array(c(1/3,1/3,1/3),3,list(UtilitiesAccess=lvU))
GroundwaterDepth <- array(c(1/3,1/3,1/3),3,list(GroundwaterDepth=lvG))
Geology <- array(c(1/3,1/3,1/3),3,list(Geology=lvGeo))
BuiltUpDensity <- array(c(1/3,1/3,1/3),3,list(BuiltUpDensity=lv3))
AgriculturalDensity <- array(c(1/3,1/3,1/3),3,list(AgriculturalDensity=lv3))
EnvironmentalConstraints <- array(c(1/2,1/2),2,list(EnvironmentalConstraints=vl))
Slope <- array(c(1/3,1/3,1/3),3,list(Slope=lvS))
InfrastructureConstraints <- array(c(0,1,0.3,0.7,0.3,0.7,0.2,0.8,0.5,0.5,1,0),c(2,3,2),list(InfrastructureConstraints=lv2,UtilitiesAccess=lvU,AllRoadAccess=lv))
ProductivityConstraints <- array(c(1,0,1,0,0.9,0.1,0.8,0.2,0.8,0.2,0.7,0.3,0.75,0.25,0.75,0.25,0.65,0.35), c(2,3,3),list(ProductivityConstraints=lv2,Geology=lvGeo,GroundwaterDepth=lvG))
CoUserInteractionConstraints <- array(c(0.6,0.4,0.85,0.15,1,0,0.8,0.2,0.8,0.2,1,0,1,0,1,0,1,0),c(2,3,3),list(CoUserInteractionConstraints=lv2,BuiltUpDensity=lv3,AgriculturalDensity=lv3))
SiteConstraints <- array(c(0.9,0.1,1,0,0.85,0.15,1,0,0.4,0.6,0.5,0.5),c(2,2,3),list(SiteConstraints=lv2,EnvironmentalConstraints=lv,Slope=lvS))
SuitabilityStructuralAgriculture <- array(c(0,1,0.2,0.8,0.4,0.6,0.6,0.4,0.2,0.8,0.4,0.6,0.6,0.4,0.65,0.35,0.1,0.9,0.3,0.7,0.5,0.5,0.75,0.25,0.3,0.7),c(2,2,2,2,2),list(SuitabilityStructuralAgriculture=lv,InfrastructureConstraints=lv2,SiteConstraints=lv2,CoUserInteractionConstraints=lv2,ProductivityConstraints=lv2))

curacao5 <- custom.fit(dag,list(
  AllRoadAccess=AllRoadAccess,UtilitiesAccess=UtilitiesAccess,GroundwaterDepth=GroundwaterDepth,Geology=Geology,BuiltUpDensity=BuiltUpDensity,AgriculturalDensity=AgriculturalDensity,EnvironmentalConstraints=EnvironmentalConstraints,Slope=Slope,
  InfrastructureConstraints=InfrastructureConstraints,ProductivityConstraints=ProductivityConstraints,
  CoUserInteractionConstraints=CoUserInteractionConstraints,SiteConstraints=SiteConstraints,
  SuitabilityStructuralAgriculture=SuitabilityStructuralAgriculture
))

usethis::use_data(curacao5,overwrite = TRUE)

