
library(bnlearn)

dag <- model2network("[Escape|PsychologicalIncapacitation:PerceivedHazard][PsychologicalIncapacitation|Stress][PerceivedHazard|Stress:FireKnowledge][Stress|TimePressure:EmotionalStability][EmotionalStability|TimePressure:FireKnowledge:LayoutFamiliarity:FireCues][FireCues|VisualFireCues:AudioFireCues:FireKnowledge][AudioFireCues][FireKnowledge][VisualFireCues][LayoutFamiliarity][TimePressure]")
lv <- c("Yes","No")
lv1 <- c("Low","High")
lv2 <- c("Consistent", "Not consistent")
lv3 <- c("Stable", "Unstable")

AudioFireCues <- array(c(0.5,0.5),2,list(AudioFireCues=lv))
FireKnowledge <- array(c(0.37,0.63),2,list(FireKnowledge=lv))
VisualFireCues <- array(c(0.5,0.5),2,list(VisualFireCues=lv))
LayoutFamiliarity <- array(c(0.59,0.41),2,list(LayoutFamiliarity=lv))
TimePressure <- array(c(0.63,0.37),2,list(TimePressure=lv1))
FireCues <- array(c(0.86,0.14,0.71,0.29,0.59,0.41,0.41,0.59,0.41,0.59,0.25,0.75,0.25,0.75,0.04,0.96),c(2,2,2,2),list(FireCues=lv2,VisualFireCues=lv,AudioFireCues=lv,FireKnowledge=lv))
EmotionalStability <- array(c(0.86,0.14,0.63,0.37,0.75,0.25,0.59,0.41,0.75,0.25,0.59,0.41,0.63,0.37,0.41,0.59,0.75,0.25,0.59,0.41,0.59,0.41,0.37,0.63,0.59,0.41,0.41,0.59,0.41,0.59,0.25,0.75),c(2,2,2,2,2),list(EmotionalStability=lv3,TimePressure=lv1,FireKnowledge=lv,LayoutFamiliarity=lv,FireCues=lv2))
Stress <- array(c(0.86,0.14,0.25,0.75,0.86,0.14,0.25,0.75),c(2,2,2),list(Stress=lv1,TimePressure=lv1,EmotionalStability=lv3))
PsychologicalIncapacitation <- array(c(0.86,0.14,0.37,0.63),c(2,2),list(PsychologicalIncapacitation=c("Mild","Severe"), Stress=lv1))
PerceivedHazard <- array(c(0.25,0.75,0.59,0.41,0.14,0.86,0.63,0.37),c(2,2,2),list(PerceivedHazard=c("Risky", "Not risky"),Stress=lv1,FireKnowledge=lv))
Escape <- array(c(0.63,0.37,0.29,0.71,0.63,0.37,0.41,0.59),c(2,2,2),list(Escape=c("True","False"),PsychologicalIncapacitation=c("Mild","Severe"),PerceivedHazard=c("Risky","Not risky")))

fire <- custom.fit(dag,list(
  AudioFireCues=AudioFireCues,FireKnowledge=FireKnowledge,VisualFireCues=VisualFireCues,LayoutFamiliarity=LayoutFamiliarity,
  TimePressure=TimePressure,FireCues=FireCues,EmotionalStability=EmotionalStability,Stress=Stress,
  PerceivedHazard=PerceivedHazard,PsychologicalIncapacitation=PsychologicalIncapacitation,Escape=Escape
))


usethis::use_data(fire, overwrite = TRUE)
