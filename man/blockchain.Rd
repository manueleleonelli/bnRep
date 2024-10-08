% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blockchain.R
\docType{data}
\name{blockchain}
\alias{blockchain}
\title{blockchain Bayesian Network}
\format{
A discrete Bayesian network to predict the probability of blockchain adoption in an organization. Probabilities were given within the referenced paper. The vertices are:
\describe{
\item{BA}{Blockchain adoption (Low, High);}
\item{COMPB}{Compatibility (Low, High);}
\item{COMPX}{Complexity (Low, High);}
\item{CP}{Competitive pressure (Low, High);;}
\item{PEOU}{Perceived ease of use (Low, High);}
\item{PFB}{Perceived financial benefits (Low, High);}
\item{PR}{Partner readiness (Low, High);}
\item{PU}{Perceived usefulness (Low, High);}
\item{RA}{Relative advantage (Low, High);}
\item{TE}{Training and education (Low, High);}
\item{TKH}{Technical know-how (Low, High);}
\item{TMS}{Top management support (Low, High);}
}

@return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
}
\description{
A machine learning based approach for predicting blockchain adoption in supply chain.
}
\references{
Kamble, S. S., Gunasekaran, A., Kumar, V., Belhadi, A., & Foropon, C. (2021). A machine learning based approach for predicting blockchain adoption in supply chain. Technological Forecasting and Social Change, 163, 120465.
}
