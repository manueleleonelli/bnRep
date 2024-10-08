% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emergency.R
\docType{data}
\name{emergency}
\alias{emergency}
\title{emergency Bayesian Network}
\format{
A discrete Bayesian network to evaluate risk in human-machine interaction in emergencies. The probabilities were given within the referenced paper. The vertices are:
\describe{
\item{TS}{Trim state (normal, abnormal);}
\item{FP}{Flap position (retracted, extended);}
\item{CPMS}{Cabin pressurization mode setting (automatic, manual);}
\item{ECFS}{Equipment cooling fan state (normal, failure);}
\item{TC}{Takeoff configuration (correct, wrong);}
\item{CP}{Cabine pressure (normal, low);}
\item{ECA}{Equipment cooling airflow (normal, low);}
\item{OMD}{Oxygen mask deployment (yes, no);}
\item{TSI}{Trim state indication (normal, abnormal);}
\item{FPI}{Flap position indication (retracted, extended);}
\item{CPMSI}{Cabin pressurization mode setting indication (automatic, manual);}
\item{ECFCBI}{Equipment cooling fan circuit break indication (on, off);}
\item{CAW}{Cabine altitued warning (yes, no);}
\item{CLPL}{Cabin low pressure light (illuminated, extinguished);}
\item{OMDL}{Oxygen mask deployment light (illuminated, extinguished);}
\item{ECOL}{Equipment cooling OFF light (illuminated, extinguished);}
\item{ECFOL}{Equipment cooling fan OFF light (illuminated, extinguished);}
}
}
\value{
An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
}
\description{
A risk evaluation method for human-machine interaction in emergencies based on multiple mental models-driven situation assessment.
}
\references{
Guo, J., Ma, S., Zeng, S., Che, H., & Pan, X. (2024). A risk evaluation method for human-machine interaction in emergencies based on multiple mental models-driven situation assessment. Reliability Engineering & System Safety, 110444.
}
