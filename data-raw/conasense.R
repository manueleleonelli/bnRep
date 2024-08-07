#Bayesian Neural Networks for 6G CONASENSE Services

#library(bnlearn)

conasense.dag = model2network("[Services][Sensing|Services][Navigation|Services:Sensing][Communication|Sensing:Services:Navigation]")

lv = c("Yes","No")

Services.prob <- array(c(0.7,0.2,0.1),dim = 3, dimnames = list(Services = c("Good","Moderate","Poor")))
Communication.prob <- array(c(0.6,0.3,0.05,0.05,0.7,0.2,0.05,0.05,0.5,0.4,0.06,0.04,0.65,0.3,0.05,0,0.5,0.4,0,0.1,0.65,0.25,0.08,0.02,0.4,0.4,0.1,0.1,0.7,0.2,0.05,0.05,0.75,0.20,0.025,0.025,0.4,0.25,0.25,0.1,0.4,0.25,0.1,0.25,0.4,0.25,0.05,0.3,0.5,0.25,0,0.25,0.5,0.25,0.25,0,0.5,0.3,0.2,0,0.5,0.3,0,0.2,0.5,0.35,0,0.15,0.5,0.35,0.15,0,0.1,0.2,0.4,0.3,0.1,0.25,0.4,0.25,0.25,0,0.5,0.25,0,0.25,0.5,0.25,0.25,0,0.25,0.5,0.1,0.1,0.4,0.4,0.05,0.05,0.5,0.4,0,0,0.5,0.5,0.05,0,0.5,0.45),dim = c(4,3,3,3), dimnames = list(Communication = c("Bandwidth","CoverageArea","Latency","PacketLoss"),Sensing=c("TransmissionRange","Angle","Uplink"), Navigation = c("Accuracy","Mobility","Speed"),  Services = c("Good","Moderate","Poor")))
Navigation.prob <- array(c(0.6,0.2,0.2,0.4,0.4,0.2,0.5,0.1,0.4,0.333,0.333,0.334,0.333,0.333,0.334,0.333,0.333,0.334,0.2,0.5,0.3,0.333,0.333,0.334,0.3,0.2,0.5),dim = c(3,3,3), dimnames = list(Navigation = c("Accuracy","Mobility","Speed"), Sensing=c("TransmissionRange","Angle","Uplink"), Services = c("Good","Moderate","Poor")))
Sensing.prob <- array(c(0.2,0.35,0.45,0.2,0.2,0.6,0.6,0.2,0.2),dim = c(3,3), dimnames = list(Sensing = c("TransmissionRange","Angle","Uplink"),Services = c("Good","Moderate","Poor")))

conasense.cpt <- list(Services = Services.prob, Communication = Communication.prob, Navigation=Navigation.prob, Sensing= Sensing.prob)

conasense <- custom.fit(conasense.dag,conasense.cpt)

usethis::use_data(conasense, overwrite = TRUE)


