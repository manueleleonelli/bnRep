
dag <- model2network("[Direction|ExpectedSafeSpeed:SpeedSign][CurveSign|ExpectedSafeSpeed:SpeedSign][WarningSign|ExpectedSafeSpeed:SpeedSign][Angle|ExpectedSafeSpeed:PrecedingCurveSpeed][PrecedingCurveSpeed|ExpectedSafeSpeed:PrecedingRoadwayType][NumberOfLanes|ExpectedSafeSpeed:PrecedingRoadwayType][PrecedingRoadwayType|ExpectedSafeSpeed:SpeedSign][SpeedSign|ExpectedSafeSpeed][ExpectedSafeSpeed]")

lvSpeed <- c("S060-069", "S070-079","S080-089", "S090-S099", "S100-109", "S110-119", "S120-129","S130-140")
lvSign <- c("AdvSpeed50", "AdvSpeed60","AdvSpeed70","AdvSpeed80","AdvSpeed90", "SpeedLimit50","SpeedLimit60","SpeedLimit70","SpeedLimit80","SpeedLimit90","NoSpeedSign")
lvRoad <- c("Connector Road", "Deceleration Lane", "Fork", "Main Carriageway", "Merge", "Weaving Section")
lvLanes <- c("One", "Two", "Three", "Four")
lvCurve <- c("S060-080", "S080-100", "S100-120", "S120-140", "Tangent")
lvAngle <- c("A010-100", "A100-200", "A200-310")
lvDirection <- c("Left","Right")
lvS <- c("Present", "Not Present")

ExpectedSafeSpeed <- array(c(0.1117254001763534,0.05891777161785766,0.06636534761310457,0.1694573132663847,0.2215723005242049,0.1820635468031607,0.111100801533586,0.07879751846534815),8,list(ExpectedSafeSpeed=lvSpeed))
SpeedSign <- array(tab1,c(11,8),list(SpeedSign=lvSign,ExpectedSafeSpeed=lvSpeed))
PrecedingRoadwayType <- array(tab2,c(6,8,11),list(PrecedingRoadwayType=lvRoad,ExpectedSafeSpeed=lvSpeed,SpeedSign=lvSign))
NumberOfLanes <- array(tab3,c(4,8,6),list(NumberOfLanes=lvLanes,ExpectedSafeSpeed=lvSpeed,PrecedingRoadwayType=lvRoad))
PrecedingCurveSpeed <- array(tab4,c(5,8,6),list(PrecedingCurveSpeed=lvCurve,ExpectedSafeSpeed=lvSpeed,PrecedingRoadwayType=lvRoad))
Angle <- array(tab5,c(3,8,5),list(Angle=lvAngle,ExpectedSafeSpeed=lvSpeed,PrecedingCurveSpeed=lvCurve))
WarningSign <- array(tab6,c(2,8,11),list(WarningSign=lvS,ExpectedSafeSpeed=lvSpeed,SpeedSign=lvSign))
CurveSign <- array(tab7,c(2,8,11),list(CurveSign=lvS,ExpectedSafeSpeed=lvSpeed,SpeedSign=lvSign))
Direction <- array(tab8,c(2,8,11),list(Direction=lvDirection,ExpectedSafeSpeed=lvSpeed,SpeedSign=lvSign))

safespeeds <- custom.fit(dag,list(
  ExpectedSafeSpeed=ExpectedSafeSpeed,SpeedSign=SpeedSign,PrecedingRoadwayType=PrecedingRoadwayType,
  NumberOfLanes=NumberOfLanes,PrecedingCurveSpeed=PrecedingCurveSpeed,Angle=Angle,
  Direction=Direction,CurveSign=CurveSign,WarningSign=WarningSign
))

usethis::use_data(safespeeds, overwrite = TRUE)
