# The R Package stagedtrees for Structural Learning of Stratified Staged Trees

library(stagedtrees)
library(bnlearn)

dag <- hc(PhDArticles)
phdarticles <- bn.fit(dag,PhDArticles)

usethis::use_data(phdarticles, overwrite = TRUE)
