
library(bnlearn)

dag <- model2network("[Premed|FightBarn:PlanBarnF][Killed|ShootStenGun:KKilled][Intent|ShootStenGun][ComplicityMurder|Prov:Help:Murdered][Murdered|KKilled:ShootStenGun][Help][Prov|PlanBarnF][Murder|Killed:Premed:Intent][FightBarn|FBarn:DebtFightFK:KBarn][SBarn|PlanBarnF][ShootStenGun|FightBarn:KBarn:FStenGun:FBarn][KKilled|ShootStenGun][FStenGun][TSF2|TSF1:FBarn][TStenGun|FStenGun][Body|KKilled][KBarn|PlanBarnF][TSF1|FBarn][TSLocation|KBarn:SBarn][TMathus|DebtFightFK:PlanBarnF][FBarn|PlanBarnF][PlanBarnF|DebtFightFK][DebtFightFK]")
lv <- c("f","t")
lv1 <- c("none","F", "Not F")

DebtFightFK <- array(c(0.5,0.5),2,list(DebtFightFK=lv))
PlanBarnF <- array(c(0.9999,1-0.9999,1/3,2/3),c(2,2),list(PlanBarnF=lv,DebtFightFK=lv))
FBarn <- array(c(1,0,0.5,0.5),c(2,2),list(FBarn=lv,PlanBarnF=lv))
TMathus <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(TMathus=lv,DebtFightFK=lv,PlanBarnF=lv))
TSLocation <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(TSLocation=lv,SBarn=lv,KBarn=lv))
TSF1 <- array(c(0.999,0.001,0.1,0.9),c(2,2),list(TSF1=lv,FBarn=lv))
KBarn <- array(c(1,0,0.1,0.9),c(2,2),list(KBarn=lv,PlanBarnF=lv))
Body <- array(c(1,0,0,1),c(2,2),list(Body=lv,KKilled=lv))
TStenGun <- array(c(0.5,0.5,0.2,0.8),c(2,2),list(TStenGun=lv,FStenGun=lv))
TSF2 <- array(c(0.5,0.5,0.9,0.1,0.5,0.5,0.999,0.001),c(2,2,2),list(TSF2=lv,FBarn=lv,TSF1=lv))
FStenGun <- array(c(0.5,0.5),c(2),list(FStenGun=lv))
KKilled <- array(c(1,0,0,1,0,1),c(2,3),list(KKilled=lv,ShootStenGun=lv1))
ShootStenGun <- array(c(1,0,0,1,0,0,1,0,0,1,0,0,0.5,0,0.5,0.5,0,0.5,0.5,0,0.5, 0.99502,0.00398406,0.000996016, 1,0,0,1,0,0,1,0,0,1,0,0,0.5,0,0.5,0.9995,0.0001,0.0004,0.5,0,0.5,0,0.909091,0.0909091),c(3,2,2,2,2),list(ShootStenGun=lv1, FBarn=lv,FStenGun=lv,KBarn=lv,FightBarn=lv))
SBarn <- array(c(1,0,0.1,0.9),c(2,2),list(SBarn=lv,PlanBarnF=lv))
FightBarn <- array(c(rep(c(1,0),7),0.1,0.9),c(2,2,2,2),list(FightBarn=lv,KBarn=lv,DebtFightFK=lv,FBarn=lv))
Murder<- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(Murder=lv,Intent=lv,Premed=lv,Killed=lv))
Help <- array(c(0.999,0.001),2,list(Help=lv))
Prov<-array(c(1,0,0,1),c(2,2),list(Prov=lv,PlanBarnF=lv))
Murdered <- array(c(1,0,1,0,1,0,1,0,1,0,0,1),c(2,2,3),list(Murdered=lv,KKilled=lv,ShootStenGun=lv1))
ComplicityMurder <- array(c(1,0,1,0,1,0,0,1,1,0,0,1,1,0,0,1),c(2,2,2,2),list(ComplicityMurder=lv,Murdered=lv,Help=lv,Prov=lv))
Intent <- array(c(1,0,0,1,1,0),c(2,3),list(Intent=lv,ShootStenGun=lv1))
Killed <- array(c(1,0,1,0,1,0,0,1,1,0,1,0),c(2,2,3),list(Killed=lv,KKilled=lv,ShootStenGun=lv1))
Premed <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(Premed=lv,FightBarn=lv,PlanBarnF=lv))

case <- custom.fit(dag,list(
  DebtFightFK=DebtFightFK,PlanBarnF=PlanBarnF,FBarn=FBarn,TMathus=TMathus,
  TSLocation=TSLocation,TSF1=TSF1,KBarn=KBarn,Body=Body,TStenGun=TStenGun,TSF2=TSF2,
  FStenGun=FStenGun,KKilled=KKilled,ShootStenGun=ShootStenGun,SBarn=SBarn,
  FightBarn=FightBarn,Murder=Murder,Prov=Prov,Help=Help,Murdered=Murdered,
  ComplicityMurder=ComplicityMurder,Intent=Intent,Killed=Killed,Premed=Premed
  ))


usethis::use_data(case, overwrite = TRUE)
