# The R Package stagedtrees for Structural Learning of Stratified Staged Trees

library(stagedtrees)
library(bnlearn)
titanic.df <- as.data.frame(Titanic)
titanic.df <- titanic.df[rep(row.names(titanic.df), titanic.df$Freq), 1:4]
titanic.dag <- bnlearn::hc(titanic.df)
titanic <- bn.fit(titanic.dag,titanic.df)

usethis::use_data(titanic, overwrite = TRUE)
