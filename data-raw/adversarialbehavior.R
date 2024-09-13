# Inferring adversarial behaviour in cyber‐physical power systems using a Bayesian attack graph approach

library(bnlearn)

dag <- model2network("[RemoteAdversary][FTPBasedBufferOverflow|RemoteAdversary][RemoteBufferOverflowOnSSHDaemon|RemoteAdversary][RootAccessFTPServer|FTPBasedBufferOverflow:RemoteBufferOverflowOnSSHDaemon]")

lv <- c("TRUE","FALSE")

RemoteAdversary <- array(c(0.7,0.3),2,list(RemoteAdversary=lv))
FTPBasedBufferOverflow <- array(c(0.85,0.15,0,1),c(2,2),list(FTPBasedBufferOverflow=lv, RemoteAdversary=lv))
RemoteBufferOverflowOnSSHDaemon <- array(c(0.7,0.3,0,1),c(2,2),list(RemoteBufferOverflowOnSSHDaemon=lv, RemoteAdversary=lv))
RootAccessFTPServer <- array(c(0,1,1,0,0.65,0.35,1,0),c(2,2,2),list(RootAccessFTPServer=lv,RemoteBufferOverflowOnSSHDaemon=lv,FTPBasedBufferOverflow=lv))

adversarialbehavior <- custom.fit(dag,list(
  RemoteAdversary=RemoteAdversary,
  RootAccessFTPServer=RootAccessFTPServer,
  FTPBasedBufferOverflow=FTPBasedBufferOverflow,
  RemoteBufferOverflowOnSSHDaemon=RemoteBufferOverflowOnSSHDaemon
))


usethis::use_data(adversarialbehavior, overwrite = TRUE)
