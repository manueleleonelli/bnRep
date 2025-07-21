library(bnlearn)
realestate1 <- read.net("madrid_bnlearn.net")
realestate2 <- read.net("barcelona_bnlearn.net")
realestate3 <- read.net("valencia_bnlearn.net")

usethis::use_data(realestate1, overwrite = TRUE)
usethis::use_data(realestate2, overwrite = TRUE)
usethis::use_data(realestate3, overwrite = TRUE)

