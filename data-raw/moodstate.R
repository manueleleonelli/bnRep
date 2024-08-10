# Inference of Mood State Indices by Using a Multimodal High-Level Information Fusion Technique

library(bnlearn)

moodstate.dag = model2network("[DepressiveState][MoodState|DepressiveState][Irritability|DepressiveState][Anxiety|DepressiveState][Energy|DepressiveState][Sleep|DepressiveState][EEG|DepressiveState]")

lv = c("TRUE","FALSE")

DepressiveState.prob <- array(c(0.2,0.8),dim = 2, dimnames = list(DepressiveState = lv))
EEG.prob <- array(c(0.67,0.33,0.22,0.78), dim=c(2,2), dimnames = list(EEG= c(">0","<0"), DepressiveState=lv))
Sleep.prob <- array(c(0.8,0.2,0.2,0.8), dim=c(2,2), dimnames = list(Sleep= c("<6 Hours",">6 Hours"), DepressiveState=lv))
Anxiety.prob <- array(c(0.25,0.75,0.8,0.2), dim=c(2,2), dimnames = list(Anxiety= c("0-2","3-5"), DepressiveState=lv))
Irritability.prob <- array(c(0.67,0.33,0.9,0.1), dim=c(2,2), dimnames = list(Irritability= c("0-3","4-5"), DepressiveState=lv))
Energy.prob <- array(c(0.8,0.2,0.5,0.5), dim=c(2,2), dimnames = list(Energy= c("0-2","3-5"), DepressiveState=lv))
MoodState.prob <- array(c(0,0,0,0.1,0.35,0.35,0.2,0,0.01,0.09,0.8,0.04,0.04,0.02), dim=c(7,2), dimnames = list(MoodState= c("+3","+2","+1","0","-1","-2","-3"), DepressiveState=lv))


moodstate.cpt <- list(DepressiveState=DepressiveState.prob, EEG=EEG.prob, Sleep = Sleep.prob,
                      Anxiety=Anxiety.prob, Irritability= Irritability.prob, Energy=Energy.prob,
                      MoodState=MoodState.prob)

moodstate <- custom.fit(moodstate.dag,moodstate.cpt)
usethis::use_data(moodstate, overwrite = TRUE)


## VERTEX HRV NOT INCLUDED AS CONTINUOUS AND PROBY NOT GIVEN.
