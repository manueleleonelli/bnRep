% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/income.R
\docType{data}
\name{income}
\alias{income}
\title{income Bayesian Network}
\format{
A discrete Bayesian network modeling the factors affecting the income of individuals. The code to learn the Bayesian network was given within the referenced paper (Figure 13.c) The vertices are:
\describe{
\item{Income}{(0-40'000, 40'000+);}
\item{Sex}{(male, female);}
\item{Marriage}{(married, cohabitation, divorced, widowed, single);}
\item{Age}{(14-34, 35+);}
\item{Education}{(college graduate, no college graduate);}
\item{Occupation}{(professional/managerial, sales, laborer, clerical/service, homemaker, student, military, retired, unemployed);}
\item{Bay}{Number of years in bay area (1-9, 10+);}
\item{No of people}{Number of people living in the house (1, 2+);}
\item{Children}{(0, 1+);}
\item{Rent}{(own, rent, live with parents/family);}
\item{Type}{(house, condominuim, apartment, mobile home, other);}
\item{Ethnicity}{(American Indian, Asian, black, east Indian, hispanic, white, pacific islander, other);}
\item{Language}{(english, spanish, other);}
}
}
\value{
An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
}
\description{
The FEDHC Bayesian network learning algorithm.
}
\references{
Tsagris, M. (2022). The FEDHC Bayesian network learning algorithm. Mathematics, 10(15), 2604.
}
