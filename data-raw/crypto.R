library(bnlearn)
dag <- model2network("[Bitcoin][Binance_Coin|Bitcoin][Ethereum][Litecoin|Bitcoin:Ethereum][Ripple|Litecoin][Tether]")

lv <- c("Down","Up")

Bitcoin <- array(c(0.7410951621477938,1-0.7410951621477938),2,list(Bitcoin=lv))
Binance_Coin <- array(c(0.8507890961262554,1-0.8507890961262554,0.02258726899383984 ,1-0.02258726899383984 ),c(2,2),list(Binance_Coin=lv,Bitcoin=lv))
Ethereum <- array(c(0.6932482721956407,1-0.6932482721956407),2,list(Ethereum =lv))
Litecoin <- array(c(0.9995697074010327,1-0.9995697074010327,0.5021459227467812,1-0.5021459227467812,0.6503496503496503,1-0.6503496503496503,0.2005813953488372 ,1-0.2005813953488372 ),c(2,2,2),list(Litecoin=lv,Ethereum=lv, Bitcoin=lv))
Ripple <- array(c(0.8583333333333334,1-0.8583333333333334,0.2630385487528345 ,1-0.2630385487528345 ),c(2,2),list(Ripple=lv,Litecoin=lv))
Tether <- array(c(0.9085592769803297,1-0.9085592769803297),2,list(Tether=lv))

crypto <- custom.fit(dag,list(Bitcoin=Bitcoin,Binance_Coin=Binance_Coin,Ethereum=Ethereum,Litecoin=Litecoin,Ripple=
                                Ripple,Tether=Tether))

usethis::use_data(crypto, overwrite = TRUE)
