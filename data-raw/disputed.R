dag <- model2network("[DNAX|TPRaltactX:TPRXstrangledY][TPRXstrangledY|XstrangledY][DNAU|BGU:TPRUstrangledY][BGU][Prop][TPRaltactX|Xaltact][DNAFind|DNAU:DNAX][UstrangledY|Prop][Xaltact][XstrangledY|Prop][TPRUstrangledY|UstrangledY]")

lv1 <- c("H1","H2")
lv <- c("false", "true")

DNAFind <- array(c(0,1,1,0,0,1,0,1),c(2,2,2),list(DNAFind=lv,DNAX=lv,DNAU=lv))
UstrangledY <- array(c(1,0,0,1),c(2,2),list(UstrangledY=lv,Prop=lv1))
Xaltact <- array(c(0,1),2,list(Xaltact=lv))
XstrangledY <- array(c(0,1,1,0),c(2,2),list(XstrangledY=lv,Prop=lv1))
TPRUstrangledY <- array(c(1,0,0.05,0.95),c(2,2),list(TPRUstrangledY=lv,UstrangledY=lv))
TPRaltactX <- array(c(1,0,0.4,0.6),c(2,2),list(TPRaltactX=lv,Xaltact=lv))
Prop <- array(c(0.5,0.5),2,list(Prop=lv1))
BGU <- array(c(0.4,0.6),2,list(BGU=lv))
DNAU<- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAU=lv,TPRUstrangledY=lv,BGU=lv))
TPRXstrangledY <- array(c(1,0,0.05,0.95),c(2,2),list(TPRXstrangledY=lv,XstrangledY=lv))
DNAX <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAX=lv,TPRXstrangledY=lv,TPRaltactX=lv))

disputed1 <- custom.fit(dag,list(
  DNAFind=DNAFind,UstrangledY=UstrangledY,Xaltact=Xaltact,XstrangledY=XstrangledY,DNAX=DNAX,
  TPRUstrangledY=TPRUstrangledY,TPRaltactX=TPRaltactX,Prop=Prop,BGU=BGU,DNAU=DNAU,TPRXstrangledY=TPRXstrangledY
))

usethis::use_data(disputed1, overwrite = TRUE)



dag <- model2network("[TPRXstrangledY|ItemProposition:XstrangledY][DNAU|BGU:TPRUstrangledY][TPRYtoSweater|ItemProposition][BGFibers][BGU][ItemProposition][DNAX|TPRaltactX:TPRXstrangledY][Prop][TPRaltactX|Xaltact][TPRUstrangledY|ItemProposition:UstrangledY][XstrangledY|Prop][Xaltact][UstrangledY|Prop][CaseFind|DNAfind:FiberFind][DNAfind|DNAU:DNAX][FiberFind|FibersSweater][FibersSweater|BGFibers:TPRYtoSweater]")

lv <- c("false", "true")
lvDNA <- c("DNA X", "DNA U", "DNA X + U", "No DNA")
lv1 <- c("H1", "H2")

CaseFind <- array(c(0,1,1,0,rep(c(0,1),6)),c(2,2,4),list(CaseFind=lv,FiberFind=lv,DNAfind=lvDNA))
DNAfind <- array(c(0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0),c(4,2,2),list(DNAfind=lvDNA,DNAX=lv,DNAU=lv))
FiberFind <- array(c(1,0,0,1),c(2,2),list(FiberFind=lv,FibersSweater=lv))
FibersSweater <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(FibersSweater=lv,BGFibers=lv,TPRYtoSweater=lv))
UstrangledY <- array(c(1,0,0,1),c(2,2),list(UstrangledY=lv,Prop=lv1))
Xaltact <- array(c(0,1),2,list(Xaltact=lv))
XstrangledY <- array(c(0,1,1,0),c(2,2),list(XstrangledY=lv,Prop=lv1))
TPRUstrangledY <- array(c(1,0,1,0,1,0,0.05,0.95),c(2,2,2),list(TPRUstrangledY=lv,UstrangledY=lv,ItemProposition=lv))
TPRaltactX <- array(c(1,0,0.4,0.6),c(2,2),list(TPRaltactX=lv,Xaltact=lv))
Prop <- array(c(0.5,0.5),c(2),list(Prop=lv1))
DNAX <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAX=lv,TPRXstrangledY=lv,TPRaltactX=lv))
ItemProposition <- array(c(0.5,0.5),2,list(ItemProposition=lv))
BGU <- array(c(0.4,0.6),2,list(BGU=lv))
BGFibers <- array(c(0.8,0.2),2,list(BGFibers=lv))
TPRYtoSweater <- array(c(1,0,0.4,0.6),c(2,2),list(TPRYtoSweater=lv,ItemProposition=lv))
DNAU <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAU=lv,TPRUstrangledY=lv,BGU=lv))
TPRXstrangledY <- array(c(1,0,1,0,1,0,0.05,0.95),c(2,2,2),list(TPRXstrangledY=lv,XstrangledY=lv,ItemProposition=lv))

disputed2 <- custom.fit(dag,list(
  FiberFind=FiberFind,DNAfind=DNAfind,CaseFind=CaseFind,FibersSweater=FibersSweater,UstrangledY=UstrangledY,BGU=BGU,
  Xaltact=Xaltact,XstrangledY=XstrangledY,TPRUstrangledY=TPRUstrangledY,TPRaltactX=TPRaltactX,Prop=Prop,DNAX=DNAX,
  ItemProposition=ItemProposition,BGFibers=BGFibers,TPRYtoSweater=TPRYtoSweater,DNAU=DNAU,TPRXstrangledY=TPRXstrangledY
))

usethis::use_data(disputed2, overwrite = TRUE)



dag <- model2network("[TPRaltactX|Xaltact][TPRUstrangledY|UstrangledY:Sworn][XstrangledY|Prop][UstrangledY|Prop][Xaltact][Prop][DNAX|TPRXstrangledY:TPRaltactX][TPRXstrangledY|XstrangledY:Sworn][DNAU|TPRUstrangledY:C7][TPRYtoS|Sworn][C61][C7][WhichGarment][C52|C61:TPRYtoS][CasefindSweater|DNAfind:FiberfindSweater][FiberfindSweater|C52][DNAfind|DNAU:DNAX][TPRStoY|TPRYtoS:Sworn][FiberfindYtop|FibresnotM:FibersM][FibersM|TPRUtoY:BGM:TPRStoY][BGM|BGnotM:BGfibers][BGnotM|BGfibers][BGfibers][FibresnotM|BGnotM:TPRUtoY][TPRUtoY|Uworn][Sworn|WhichGarment][Uworn|WhichGarment]")
lv <- c("false", "true")
lvDNA <- c("DNA X", "DNA U", "DNA X + U", "No DNA")
lv1 <- c("H1", "H2")

BGM <- array(c(1,0,0,1,1,0,0.05,0.95),c(2,2,2),list(BGM=lv,BGfibers=lv,BGnotM=lv))
BGnotM <- array(c(1,0,0.1,0.9),c(2,2),list(BGnotM=lv,BGfibers=lv))
BGfibers <- array(c(0.4,0.6),2,list(BGfibers=lv))
FibresnotM <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(FibresnotM=lv,TPRUtoY=lv,BGnotM=lv))
TPRUtoY <- array(c(1,0,0.2,0.8),c(2,2),list(TPRUtoY=lv,Uworn=lv))
Sworn <- array(c(0,1,1,0),c(2,2),list(Sworn=lv,WhichGarment=c("sweater", "unknown garment")))
Uworn <- array(c(1,0,0,1),c(2,2),list(Uworn=lv,WhichGarment=c("sweater", "unknown garment")))
FibersM <- array(c(1,0,rep(c(0,1),7)),c(2,2,2,2),list(FibersM=lv,TPRStoY=lv,BGM=lv,TPRUtoY=lv))
FiberfindYtop <- array(c(0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0),c(4,2,2),list(FiberfindYtop=c("matching","non matching", "both matching and not matching", "no fibers"),FibersM=lv,FibresnotM=lv))
TPRStoY <- array(c(1,0,1,0,0.2,0.8,0.1,0.9),c(2,2,2),list(TPRStoY=lv,TPRYtoS=lv,Sworn=lv))
DNAfind <- array(c(0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0),c(4,2,2),list(DNAfind=lvDNA,DNAX=lv,DNAU=lv))
FiberfindSweater <- array(c(1,0,0,1),c(2,2),list(FiberfindSweater=lv,C52=lv))
CasefindSweater <- array(c(0,1,1,0,rep(c(0,1),6)), c(2,2,4),list(CasefindSweater=lv,FiberfindSweater=lv,DNAfind=lvDNA))
C52 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(C52=lv,C61=lv,TPRYtoS=lv))
WhichGarment <- array(c(0.5,0.5),2,list(WhichGarment=c("sweater", "unknown garment")))
C61 <- array(c(0.05,0.95),2,list(C61=lv))
C7 <- array(c(0.4,0.6),2,list(C7=lv))
TPRYtoS <- array(c(1,0,0.2,0.8),c(2,2),list(TPRYtoS=lv,Sworn=lv))
DNAU <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAU=lv,TPRUstrangledY=lv,C7=lv))
TPRXstrangledY <- array(c(1,0,1,0,1,0,0.2,0.8),c(2,2,2),list(TPRXstrangledY=lv,XstrangledY=lv,Sworn=lv))
DNAX <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAX=lv,TPRXstrangledY=lv,TPRaltactX=lv))
Prop <- array(c(0.5,0.5),2,list(Prop=lv1))
Xaltact <- array(c(0,1),2,list(Xaltact=lv))
UstrangledY <- array(c(1,0,0,1),c(2,2),list(UstrangledY=lv,Prop=lv1))
XstrangledY <- array(c(0,1,1,0),c(2,2),list(XstrangledY=lv,Prop=lv1))
TPRUstrangledY <- array(c(1,0,1,0,1,0,0.2,0.8),c(2,2,2),list(TPRUstrangledY=lv,UstrangledY=lv,Sworn=lv))
TPRaltactX <- array(c(1,0,0.4,0.6),c(2,2),list(TPRaltactX=lv,Xaltact=lv))

disputed3 <- custom.fit(dag,list(
  BGM=BGM,BGnotM=BGnotM,BGfibers=BGfibers,FibresnotM=FibresnotM,TPRUtoY=TPRUtoY,Sworn=Sworn,Uworn=Uworn,FibersM=FibersM,
  FiberfindYtop=FiberfindYtop,TPRStoY=TPRStoY,DNAfind=DNAfind,FiberfindSweater=FiberfindSweater,Prop=Prop,
  CasefindSweater=CasefindSweater,C52=C52,C7=C7,C61=C61,WhichGarment=WhichGarment,TPRYtoS=TPRYtoS,DNAU=DNAU,
  TPRXstrangledY=TPRXstrangledY,DNAX=DNAX,Xaltact=Xaltact,UstrangledY=UstrangledY,XstrangledY=XstrangledY,
  TPRUstrangledY=TPRUstrangledY,TPRaltactX=TPRaltactX
))

usethis::use_data(disputed3, overwrite = TRUE)




dag <- model2network("[FibersMSonY|BGM:TPRUtoYtop:TPRStoYtop][FibersnotMSonY|BGnotM:TPRUtoYtop][FiberfindYtop|FibersMSonY:FibersnotMSonY][TPRStoYtop|TPRYtoptoS:Sweater][DNAfind|DNAX][FiberfindSweater|FibersYonS][Casefind|FiberfindSweater:DNAfind][FibersYonS|TPRYtoptoS:BGYonS][DNAX|TPRXstrangledY:TPRaltactX][TPRXstrangledY|Sweater:XstrangledY][TPRYtoptoS|Sweater][BGM|BGnotM:BGfibersYtop][BGnotM|BGfibersYtop][TPRUtoYtop|Unknown][Unknown|WhichGarment][Sweater|WhichGarment][XstrangledY|Prop][TPRaltactX|Xaltact][BGYonS][Prop][Xaltact][BGfibersYtop][WhichGarment|Prop]")

lv <- c("false", "true")
lv1 <- c("H1", "H2")
lv2 <- c("sweater", "unknown garment")
lvDNA <- c("DNA X", "DNA U", "DNA X + U", "No DNA")
lvFind <- c("matching","non matching", "both matching and not matching", "no fibers")

BGYonS <- array(c(0.05,0.95),2,list(BGYonS=lv))
Prop <- array(c(0.5,0.5),2,list(Prop=lv1))
Xaltact <- array(c(0,1),2,list(Xaltact=lv))
BGfibersYtop <- array(c(0.4,0.6),2,list(BGfibersYtop=lv))
WhichGarment <- array(c(0.5,0.5,0,1),c(2,2),list(WhichGarment=lv2,Prop=lv1))
TPRaltactX <- array(c(1,0,0.4,0.6),c(2,2),list(TPRaltactX=lv,Xaltact=lv))
XstrangledY <- array(c(0,1,1,0),c(2,2),list(XstrangledY=lv,Prop=lv1))
Unknown <- array(c(1,0,0,1),c(2,2),list(Unknown=lv,WhichGarment=lv2))
Sweater <- array(c(0,1,1,0),c(2,2),list(Sweater=lv,WhichGarment=lv2))
TPRUtoYtop <- array(c(1,0,0.2,0.8),c(2,2),list(TPRUtoYtop=lv,Unknown=lv))
BGnotM <- array(c(1,0,0.1,0.9),c(2,2),list(BGnotM=lv,BGfibersYtop=lv))
BGM <- array(c(1,0,0,1,1,0,0.05,0.95),c(2,2,2),list(BGM=lv,BGfibersYtop=lv,BGnotM=lv))
TPRYtoptoS <- array(c(1,0,0.2,0.8),c(2,2),list(TPRYtoptoS=lv,Sweater=lv))
TPRXstrangledY <- array(c(1,0,1,0,1,0,0.2,0.8),c(2,2,2),list(TPRXstrangledY=lv,XstrangledY=lv,Sweater=lv))
DNAX <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(DNAX=lv,TPRXstrangledY=lv,TPRaltactX=lv))
FibersYonS <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(FibersYonS=lv,BGYonS=lv,TPRYtoptoS=lv))
Casefind <- array(c(0,1,1,0,rep(c(0,1),6)),c(2,2,4),list(Casefind=lv,FiberfindSweater=lv,DNAfind=lvDNA))
FiberfindSweater <- array(c(1,0,0,1),c(2,2),list(FiberfindSweater=lv,FibersYonS=lv))
DNAfind <- array(c(0,0,0,1,1,0,0,0),c(4,2),list(DNAfind=lvDNA,DNAX=lv))
TPRStoYtop <- array(c(1,0,1,0,0.2,0.8,0.1,0.9),c(2,2,2),list(TPRStoYtop=lv,TPRYtoptoS=lv,Sweater=lv))
FiberfindYtop <- array(c(0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0),c(4,2,2),list(FiberfindYtop=lvFind,FibersMSonY=lv,FibersnotMSonY=lv))
FibersnotMSonY <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(FibersnotMSonY=lv,TPRUtoYtop=lv,BGnotM=lv))
FibersMSonY <- array(c(1,0,rep(c(0,1),7)),c(2,2,2,2),list(FibersMSonY=lv,TPRStoYtop=lv,BGM=lv,TPRUtoYtop=lv))

disputed4 <- custom.fit(dag,list(
  BGYonS=BGYonS,Prop=Prop,Xaltact=Xaltact,BGfibersYtop=BGfibersYtop,WhichGarment=WhichGarment,TPRaltactX=TPRaltactX,
  XstrangledY=XstrangledY,Unknown=Unknown,Sweater=Sweater,TPRUtoYtop=TPRUtoYtop,BGnotM=BGnotM,BGM=BGM,
  TPRYtoptoS=TPRYtoptoS,TPRXstrangledY=TPRXstrangledY,DNAX=DNAX,FibersYonS=FibersYonS,Casefind=Casefind,
  FiberfindSweater=FiberfindSweater,DNAfind=DNAfind,TPRStoYtop=TPRStoYtop,FiberfindYtop=FiberfindYtop,
  FibersnotMSonY=FibersnotMSonY,FibersMSonY=FibersMSonY
))

usethis::use_data(disputed4, overwrite = TRUE)


