# Qazi A, Quigley J, Dickson A, Kirytopoulos K. Project complexity and risk management (ProCRiM): Towards modelling project complexity driven risk paths in construction projects. Int J Proj Manag 2016;34(7):1183–98.
#Eybpoosh M, Dikmen I, Talat Birgonul M. Identification of risk paths in international construction projects using structural equation modeling. J Constr Eng Manag 2011;137(12):1164–75.

library(bnlearn)
projectmanagement <- read.bif("/Users/manueleleonelli/Downloads/project_management.bif")
usethis::use_data(projectmanagement, overwrite = TRUE)
