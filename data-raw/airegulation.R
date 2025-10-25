library(bnlearn)
airegulation1 <- read.net("fullAI.net")
airegulation2 <- read.net("riskAI.net")
airegulation3 <- read.net("opportunityAI.net")

usethis::use_data(airegulation1, overwrite = TRUE)
usethis::use_data(airegulation2, overwrite = TRUE)
usethis::use_data(airegulation3, overwrite = TRUE)
