# Local Computation with Probabilities on Graphical Structures and their Application to Expert Systems

#library(bnlearn)

asia.dag <- model2network("[Visit_To_Asia][Tubercolosis|Visit_To_Asia][Smoker][Lung_Cancer|Smoker][Bronchitis|Smoker][TubercolosisOrCancer|Tubercolosis:Lung_Cancer][XRay_Result|TubercolosisOrCancer][Dyspnea|TubercolosisOrCancer:Bronchitis]")
lv=c("True","False")

asia.prob <- array(c(0.01,0.99),dim=2,dimnames= list(Visit_To_Asia=lv))
Tubercolosis.prob <- array(c(0.05,0.95,0.01,0.99),dim=c(2,2),dimnames=list(Tubercolosis=lv,Visit_To_Asia=lv))
Smoker.prob <- array(c(0.5,0.5),dim=2,dimnames=list(Smoker=lv))
Lung.prob <- array(c(0.1,0.90,0.01,0.99),dim=c(2,2),dimnames=list(Lung_Cancer=lv,Smoker=lv))
Bronchitis.prob <- array(c(0.6,0.4,0.3,0.7),dim=c(2,2),dimnames= list(Bronchitis=lv,Smoker=lv))
OR.prob <- array(c(1,0,1,0,1,0,0,1),dim=c(2,2,2),dimnames= list(TubercolosisOrCancer=lv,Tubercolosis=lv,Lung_Cancer=lv))
XRay.prob <- array(c(0.98,0.02,0.05,0.95),dim=c(2,2),dimnames=list(XRay_Result=c("Abnormal","Normal"), TubercolosisOrCancer=lv))
Dyspnea.prob <- array(c(0.9,0.1,0.8,0.2,0.7,0.3,0.1,0.9),dim=c(2,2,2),dimnames=list(Dyspnea=lv,TubercolosisOrCancer=lv,Bronchitis=lv))


cpt <- list(Visit_To_Asia=asia.prob,Tubercolosis=Tubercolosis.prob,
            Smoker=Smoker.prob,Lung_Cancer=Lung.prob,
            Bronchitis=Bronchitis.prob, TubercolosisOrCancer=OR.prob,
            XRay_Result=XRay.prob, Dyspnea=Dyspnea.prob
)

asia <- custom.fit(asia.dag,cpt)

usethis::use_data(asia, overwrite = TRUE)
