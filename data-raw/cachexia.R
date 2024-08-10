# Model-Preserving Sensitivity Analysis for Families of Gaussian Distributions

#library(bnlearn)
#library(bnmonitor)
#cachexia_data

cachexia <- data.frame(subset(cachexia_data,MC=="cachexic"))[,-7]
control <- data.frame(subset(cachexia_data, MC=="control"))[,-7]

cachexia.dag <- model2network("[F][GM|F][B|GM:GC][A|GM][GC|A][V|GM:B:GC]")
control.dag <- model2network("[F][GM|F][B|GM:F][A][GC|A:GM][V|GM:A:GC]")

cachexia1 <- bn.fit(cachexia.dag,cachexia)
cachexia2 <- bn.fit(control.dag,control)

#usethis::use_data(cachexia1, overwrite = TRUE)

#usethis::use_data(cachexia2, overwrite = TRUE)


