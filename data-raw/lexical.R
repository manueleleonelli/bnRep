## Accounting for the relationship between lexical prevalence and acquisition with Bayesian networks and population dynamics

library(bnlearn)

lexical.dag <- model2network("[aoa][prev_heard|aoa][prev_used|prev_heard][log_freq|prev_heard:prev_used][area|prev_heard:prev_used][log_range|log_freq:prev_used][social_disp|aoa:area][genre_disp|aoa:log_freq:log_range:prev_heard]")

distaoa = list(coef = c("(Intercept)" = 1.116867e-16), sd = 1)
distlog_freq = list(coef = c("(Intercept)" = 2.165844e-16,"prev_heard"=-2.389613e-01, "prev_used" = 6.522685e-01 ), sd = 0.8963667 )
distlog_range = list(coef = c("(Intercept)" = -1.000049e-16, "log_freq"=4.535010e-01, "prev_used"=2.927989e-01 ), sd = 0.771584 )
distprev_heard = list(coef = c("(Intercept)" = 2.507937e-17, "aoa"=-4.226080e-01 ), sd = 0.907222 )
distprev_used = list(coef = c("(Intercept)" = -1.115367e-17, "prev_heard" = 9.072148e-01 ), sd = 0.4210899 )
distarea = list(coef = c("(Intercept)" = -9.049293e-17 , "prev_heard" = 1.279619e+00, "prev_used"= -5.456541e-01), sd = 0.5771133)
distsocial_disp = list(coef = c("(Intercept)" = -2.368133e-16, "aoa" = -1.212857e-01, "area" = 6.045430e-01), sd =  0.7595807 )
distgenre_disp = list(coef = c("(Intercept)" = -1.072147e-16, "aoa" = 1.493371e-01, "log_freq" = 1.369712e-01, "log_range"=2.290909e-01, "prev_heard"=4.137189e-01 ), sd = 0.8129137 )

lexical <- custom.fit(lexical.dag, dist = list(
  aoa=distaoa, log_freq = distlog_freq, log_range=distlog_range, prev_heard = distprev_heard, prev_used = distprev_used, area=distarea, social_disp=distsocial_disp, genre_disp=distgenre_disp
))

usethis::use_data(lexical, overwrite = TRUE)
