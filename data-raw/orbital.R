# Approaching Intention Prediction of Orbital Maneuver Based on Dynamic Bayesian Network

library(bnlearn)

string1 <- "[ApproachingIntentionT1][RelativeVelocityT1|ApproachingIntentionT1][LocationT1|ApproachingIntentionT1][ManeuverT1|ApproachingIntentionT1][HeadingT1|LocationT1][RelativeDistanceT1|LocationT1]"
string2 <- "[ApproachingIntentionT2|ApproachingIntentionT1][RelativeVelocityT2|ApproachingIntentionT2][LocationT2|ApproachingIntentionT2][ManeuverT2|ApproachingIntentionT2][HeadingT2|LocationT2][RelativeDistanceT2|LocationT2]"
string3 <- "[ApproachingIntentionT3|ApproachingIntentionT2][RelativeVelocityT3|ApproachingIntentionT3][LocationT3|ApproachingIntentionT3][ManeuverT3|ApproachingIntentionT3][HeadingT3|LocationT3][RelativeDistanceT3|LocationT3]"
string4 <- "[ApproachingIntentionT4|ApproachingIntentionT3][RelativeVelocityT4|ApproachingIntentionT4][LocationT4|ApproachingIntentionT4][ManeuverT4|ApproachingIntentionT4][HeadingT4|LocationT4][RelativeDistanceT4|LocationT4]"
string5 <- "[ApproachingIntentionT5|ApproachingIntentionT4][RelativeVelocityT5|ApproachingIntentionT5][LocationT5|ApproachingIntentionT5][ManeuverT5|ApproachingIntentionT5][HeadingT5|LocationT5][RelativeDistanceT5|LocationT5]"
string6 <- "[ApproachingIntentionT6|ApproachingIntentionT5][RelativeVelocityT6|ApproachingIntentionT6][LocationT6|ApproachingIntentionT6][ManeuverT6|ApproachingIntentionT6][HeadingT6|LocationT6][RelativeDistanceT6|LocationT6]"
string7 <- "[ApproachingIntentionT7|ApproachingIntentionT6][RelativeVelocityT7|ApproachingIntentionT7][LocationT7|ApproachingIntentionT7][ManeuverT7|ApproachingIntentionT7][HeadingT7|LocationT7][RelativeDistanceT7|LocationT7]"
string8 <- "[ApproachingIntentionT8|ApproachingIntentionT7][RelativeVelocityT8|ApproachingIntentionT8][LocationT8|ApproachingIntentionT8][ManeuverT8|ApproachingIntentionT8][HeadingT8|LocationT8][RelativeDistanceT8|LocationT8]"
string9 <- "[ApproachingIntentionT9|ApproachingIntentionT8][RelativeVelocityT9|ApproachingIntentionT9][LocationT9|ApproachingIntentionT9][ManeuverT9|ApproachingIntentionT9][HeadingT9|LocationT9][RelativeDistanceT9|LocationT9]"
string0 <- "[ApproachingIntentionT10|ApproachingIntentionT9][RelativeVelocityT10|ApproachingIntentionT10][LocationT10|ApproachingIntentionT10][ManeuverT10|ApproachingIntentionT10][HeadingT10|LocationT10][RelativeDistanceT10|LocationT10]"


orbital.dag <- model2network(paste0(string1,string2,string3,string4,string5,string6,string7,string8,string9,string0))

lvI <- c("Hover","Attach","Capture","Approach")
lvV <- c("Fast","Slow")
lvL <- c("Within the threat range","Outside the threat range")
lvM <- c("Maneuver","Non-Maneuver")
lvH <- c("0-110 degrees","> 110 degrees")
lvD <- c("Far","Near")

I1.prob <- array(c(0.25,0.25,0.25,0.25),4,list(ApproachIntentionT1=lvI))
I2.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT2=lvI,ApproachingIntentionT1=lvI))
I3.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT3=lvI,ApproachingIntentionT2=lvI))
I4.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT4=lvI,ApproachingIntentionT3=lvI))
I5.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT5=lvI,ApproachingIntentionT4=lvI))
I6.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT6=lvI,ApproachingIntentionT5=lvI))
I7.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT7=lvI,ApproachingIntentionT6=lvI))
I8.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT8=lvI,ApproachingIntentionT7=lvI))
I9.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT9=lvI,ApproachingIntentionT8=lvI))
I10.prob <- array(c(0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7,0.1,0.1,0.1,0.1,0.7),c(4,4),list(ApproachingIntentionT10=lvI,ApproachingIntentionT9=lvI))
V1.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT1=lvV,ApproachingIntentionT1=lvI))
V2.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT2=lvV,ApproachingIntentionT2=lvI))
V3.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT3=lvV,ApproachingIntentionT3=lvI))
V4.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT4=lvV,ApproachingIntentionT4=lvI))
V5.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT5=lvV,ApproachingIntentionT5=lvI))
V6.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT6=lvV,ApproachingIntentionT6=lvI))
V7.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT7=lvV,ApproachingIntentionT7=lvI))
V8.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT8=lvV,ApproachingIntentionT8=lvI))
V9.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT9=lvV,ApproachingIntentionT9=lvI))
V10.prob <- array(c(0.5,0.5,0.7,0.3,0.4,0.6,0.3,0.7),c(2,4),list(RelativeVelocityT10=lvV,ApproachingIntentionT10=lvI))
L1.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT1=lvL,ApproachingIntentionT1=lvI))
L2.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT2=lvL,ApproachingIntentionT2=lvI))
L3.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT3=lvL,ApproachingIntentionT3=lvI))
L4.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT4=lvL,ApproachingIntentionT4=lvI))
L5.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT5=lvL,ApproachingIntentionT5=lvI))
L6.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT6=lvL,ApproachingIntentionT6=lvI))
L7.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT7=lvL,ApproachingIntentionT7=lvI))
L8.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT8=lvL,ApproachingIntentionT8=lvI))
L9.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT9=lvL,ApproachingIntentionT9=lvI))
L10.prob <- array(c(0.8,0.2,0.7,0.3,0.6,0.4,0.7,0.3),c(2,4),list(LocationT10=lvL,ApproachingIntentionT10=lvI))
M1.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT1=lvM,ApproachingIntentionT1=lvI))
M2.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT2=lvM,ApproachingIntentionT2=lvI))
M3.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT3=lvM,ApproachingIntentionT3=lvI))
M4.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT4=lvM,ApproachingIntentionT4=lvI))
M5.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT5=lvM,ApproachingIntentionT5=lvI))
M6.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT6=lvM,ApproachingIntentionT6=lvI))
M7.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT7=lvM,ApproachingIntentionT7=lvI))
M8.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT8=lvM,ApproachingIntentionT8=lvI))
M9.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT9=lvM,ApproachingIntentionT9=lvI))
M10.prob <- array(c(0.8,0.2,0.6,0.4,0.7,0.3,0.5,0.5),c(2,4),list(ManeuverT10=lvM,ApproachingIntentionT10=lvI))
H1.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT1=lvH,LocationT1=lvL))
H2.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT2=lvH,LocationT2=lvL))
H3.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT3=lvH,LocationT3=lvL))
H4.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT4=lvH,LocationT4=lvL))
H5.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT5=lvH,LocationT5=lvL))
H6.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT6=lvH,LocationT6=lvL))
H7.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT7=lvH,LocationT7=lvL))
H8.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT8=lvH,LocationT8=lvL))
H9.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT9=lvH,LocationT9=lvL))
H10.prob <- array(c(0.7,0.3,0.3,0.7),c(2,2),list(HeadingT10=lvH,LocationT10=lvL))
D1.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT1=lvD,LocationT1=lvL))
D2.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT2=lvD,LocationT2=lvL))
D3.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT3=lvD,LocationT3=lvL))
D4.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT4=lvD,LocationT4=lvL))
D5.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT5=lvD,LocationT5=lvL))
D6.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT6=lvD,LocationT6=lvL))
D7.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT7=lvD,LocationT7=lvL))
D8.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT8=lvD,LocationT8=lvL))
D9.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT9=lvD,LocationT9=lvL))
D10.prob <- array(c(0.3,0.7,0.7,0.3),c(2,2), list(RelativeDistanceT10=lvD,LocationT10=lvL))

probs <- list(ApproachingIntentionT1= I1.prob,ApproachingIntentionT2= I2.prob,ApproachingIntentionT3= I3.prob,ApproachingIntentionT4= I4.prob,ApproachingIntentionT5= I5.prob,ApproachingIntentionT6= I6.prob,ApproachingIntentionT7= I7.prob,ApproachingIntentionT8= I8.prob,ApproachingIntentionT9= I9.prob,ApproachingIntentionT10= I10.prob,
              RelativeVelocityT1=V1.prob, RelativeVelocityT2=V2.prob,RelativeVelocityT3=V3.prob,RelativeVelocityT4=V4.prob, RelativeVelocityT5=V5.prob,RelativeVelocityT6=V6.prob,RelativeVelocityT7=V7.prob,RelativeVelocityT8=V8.prob,RelativeVelocityT9=V9.prob,RelativeVelocityT10=V10.prob,
              LocationT1=L1.prob,LocationT2=L2.prob,LocationT3=L3.prob,LocationT4=L4.prob,LocationT5=L5.prob,LocationT6=L6.prob,LocationT7=L7.prob,LocationT8=L8.prob,LocationT9=L9.prob,LocationT10=L10.prob,
              ManeuverT1=M1.prob,ManeuverT2=M2.prob,ManeuverT3=M3.prob,ManeuverT4=M4.prob,ManeuverT5=M5.prob,ManeuverT6=M6.prob,ManeuverT7=M7.prob,ManeuverT8=M8.prob,ManeuverT9=M9.prob,ManeuverT10=M10.prob,
              HeadingT1=H1.prob, HeadingT2=H2.prob, HeadingT3=H3.prob, HeadingT4=H4.prob,HeadingT5=H5.prob,HeadingT6=H6.prob,HeadingT7=H7.prob,HeadingT8=H8.prob,HeadingT9=H9.prob,HeadingT10=H10.prob,
              RelativeDistanceT1=D1.prob,RelativeDistanceT2=D2.prob,RelativeDistanceT3=D3.prob,RelativeDistanceT4=D4.prob, RelativeDistanceT5=D5.prob,RelativeDistanceT6=D6.prob,RelativeDistanceT7=D7.prob,RelativeDistanceT8=D8.prob,RelativeDistanceT9=D9.prob,RelativeDistanceT10=D10.prob
)

orbital <- custom.fit(orbital.dag,probs)

usethis::use_data(orbital, overwrite = TRUE)

