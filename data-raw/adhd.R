# Development of a computerized adaptive testing for ADHD using Bayesian networks: An attempt at classification

library(bnlearn)

adhd.dag <- model2network("[ADHD][Carelessness|ADHD][DifficultySustainingAttention|ADHD][DoesntListen|ADHD][NoFollowThrough|ADHD][CantOrganize|ADHD][AvoidsTasks|ADHD][LosesItems|ADHD][EasilyDistractible|ADHD][Forgetful|ADHD][SquirmsAndFidgets|ADHD][CantStaySeated|ADHD][RunsExcessively|ADHD][CantPlayQuietly|ADHD][OnTheGo|ADHD][TalksExcessively|ADHD][BlurtsOutAnswers|ADHD][CantWaitForTurn|ADHD][IntrudesOthers|ADHD]")

lv <- c("No","Few","Moderate","Risk")
lv1 <- c("Never","Sometimes","Often","Very Often")

ADHD <- array(c(0.091,0.212,0.343,0.354),4,list(ADHD=lv))
x1.prob <- array(c(0.554,0.417,0.027,0.003,0.161,0.722,0.110,0.008,0.036,0.307,0.473,0.184,0.018,0.283,0.333,0.366),c(4,4),list(Carelessness =lv1, ADHD=lv))
x2.prob <- array(c(0.684/1.036,0.234/1.036,0.084/1.036,0.034/1.036,0.204,0.405,0.285,0.106,0.184,0.333,0.289,0.193,0.117,0.217,0.233,0.433),c(4,4),list( DifficultySustainingAttention=lv1, ADHD=lv))
x3.prob <- array(c(0.778,0.178,0.043,0,0.354,0.471,0.139,0.037,0.123,0.368,0.464,0.044,0.034,0.150,0.267,0.549),c(4,4),list(DoesntListen =lv1, ADHD=lv))
x4.prob <- array(c(0.694,0.231,0.058,0.017,0.277,0.423,0.223,0.077,0.123,0.377,0.316,0.184,0.084,0.101,0.233,0.582),c(4,4),list(NoFollowThrough =lv1, ADHD=lv))
x5.prob <- array(c(0.867,0.125,0.007,0,0.398,0.463,0.102,0.037,0.062,0.307,0.482,0.149,0.051,0.150,0.034,0.765),c(4,4),list(CantOrganize =lv1, ADHD=lv))
x6.prob <- array(c(0.925,0.068,0.007,0,0.565,0.383,0.044,0.008,0.272,0.219,0.482,0.027,0.134,0.217,0.233,0.416),c(4,4),list(AvoidsTasks =lv1, ADHD=lv))
x7.prob <- array(c(0.619,0.325,0.053,0.003,0.029,0.551,0.332,0.088,0.009,0.062,0.534,0.394,0.001,0.001,0.117,0.881),c(4,4),list(LosesItems =lv1, ADHD=lv))
x8.prob <- array(c(0.930,0.065,0.005,0,0.536,0.398,0.066,0,0.141,0.403,0.351,0.106,0.034,0.25,0.217,0.499),c(4,4),list(EasilyDistractible =lv1, ADHD=lv))
x9.prob <- array(c(0.795,0.183,0.017,0.005,0.245,0.584,0.135,0.037,0.027,0.377,0.447,0.149,0.018,0.051,0.267,0.665),c(4,4),list( Forgetful=lv1, ADHD=lv))
x10.prob <- array(c(0.882,0.113,0.003,0.003,0.474,0.467,0.051,0.008,0.237,0.386,0.333,0.044,0.034,0.233,0.383,0.350),c(4,4),list(SquirmsAndFidgets =lv1, ADHD=lv))
x11.prob <- array(c(0.499,0.347,0.118,0.036,0.080,0.387,0.372,0.161,0.044,0.106,0.447,0.403,0.018,0.067,0.267,0.648),c(4,4),list(CantStaySeated =lv1, ADHD=lv))
x12.prob <- array(c(0.817,0.178,0.003,0.003,0.296,0.580,0.124,0,0.044,0.246,0.526,0.184,0.084,0.117,0.333,0.466),c(4,4),list(RunsExcessively =lv1, ADHD=lv))
x13.prob <- array(c(0.985,0.015,0,0,0.828,0.164,0.008,0,0.438,0.359,0.202,0.001,0.383,0.316,0.150,0.150),c(4,4),list(CantPlayQuietly =lv1, ADHD=lv))
x14.prob <- array(c(0.874,0.121,0.005,0,0.558,0.416,0.026,0,0.246,0.386,0.307,0.062,0.101,0.250,0.366,0.283),c(4,4),list(OnTheGo =lv1, ADHD=lv))
x15.prob <- array(c(0.530,0.410,0.056,0.005,0.124,0.540,0.303,0.033,0.036,0.281,0.403,0.281,0.018,0.101,0.516,0.366),c(4,4),list(TalksExcessively =lv1, ADHD=lv))
x16.prob <- array(c(0.927,0.070,0.003,0,0.649,0.347,0.004,0,0.272,0.421,0.272,0.036,0.150,0.217,0.366,0.267),c(4,4),list( BlurtsOutAnswers=lv1, ADHD=lv))
x17.prob <- array(c(0.968,0.027,0.003,0.003,0.635,0.317,0.048,0,0.298,0.412,0.237,0.053,0.150,0.283,0.316,0.250),c(4,4),list(CantWaitForTurn =lv1, ADHD=lv))
x18.prob <- array(c(0.918,0.075,0.007,0,0.489,0.427,0.080,0.004,0.263,0.342,0.342,0.053,0.034,0.217,0.2333,0.516),c(4,4),list(IntrudesOthers =lv1, ADHD=lv))

adhd <- custom.fit(adhd.dag,list(
  ADHD=ADHD,
  Carelessness=x1.prob,
  DifficultySustainingAttention=x2.prob,
  DoesntListen=x3.prob,
  NoFollowThrough=x4.prob,
  CantOrganize=x5.prob,
  AvoidsTasks=x6.prob,
  LosesItems=x7.prob,
  EasilyDistractible=x8.prob,
  Forgetful=x9.prob,
  SquirmsAndFidgets=x10.prob,
  CantStaySeated=x11.prob,
  RunsExcessively=x12.prob,
  CantPlayQuietly=x13.prob,
  OnTheGo=x14.prob,
  TalksExcessively=x15.prob,
  BlurtsOutAnswers=x16.prob,
  CantWaitForTurn=x17.prob,
  IntrudesOthers=x18.prob
))


usethis::use_data(adhd, overwrite = TRUE)
