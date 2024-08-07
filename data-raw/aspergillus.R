# Using staged tree models for health data: Investigating invasive fungal infections by aspergillus and other filamentous fungi

# library(bnlearn)
d <- readRDS("/Users/manueleleonelli/Documents/GitHub/CHIL_paper/d.rds")
colnames(d)[4] <- "DTH"
d <- d[,-8]
dag <- model2network("[GR][RP][MN|RP][DT][DTH][IM|GR][SC|GR][CMV|IM][SOT|IM][VP|SOT:SC][ICU|SC]")

aspergillus <- bn.fit(dag,d)

usethis::use_data(aspergillus, overwrite = TRUE)
