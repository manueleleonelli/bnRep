library(stagedtrees)
library(bnlearn)

dag <- model2network("[SEX][ICU][AGE|ICU:SEX][RSP|AGE:SEX:ICU][OUT|SEX:AGE:RSP:ICU]")

trajectories <- bn.fit(dag,trajectories)

usethis::use_data(trajectories, overwrite = TRUE)

