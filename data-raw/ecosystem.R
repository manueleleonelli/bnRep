# Evaluating the supply-demand balance of cultural ecosystem services with budget expectation in Shenzhen, China

library(bnlearn)

ecosystem.dag = model2network("[Bus][Road][Lot][Traffic|Bus:Road:Lot][Park][Green][Water][Opportunity|Traffic:Park][Potential|Green:Water][People][Supply|Opportunity:Potential][Demand|People][Budget|Demand:Supply]")

lv = c("Low","High")
lv1 = c("Low","Medium","High")
lv2 = c("Deficit","Balance","Surplus")
lv3 = c("No","Yes")

Bus.prob <- array(c(0.211,0.789), dim = 2, dimnames = list(Bus=lv))
Road.prob <- array(c(0.20,0.80), dim = 2, dimnames = list(Road=lv))
Lot.prob <- array(c(0.317,0.683), dim = 2, dimnames = list(Lot=lv))
Traffic.prob <- array(c(1,0,0,0.8,0.2,0,0.8,0.2,0,0,0.2,0.8,0.8,0.2,0,0,0.2,0.8,0,0.2,0.8,0,0,1), dim = c(3,2,2,2), dimnames = list(Traffic=lv1,Lot = lv, Road = lv, Bus = lv))
Park.prob <- array(c(0.336,0.292,0.371), dim = 3, dimnames = list(Park=lv1))
Green.prob <- array(c(0.623,0.09,0.288), dim = 3, dimnames = list(Green=lv1))
Water.prob <- array(c(0.622,0.378), dim = 2, dimnames = list(Water=lv3))
People.prob <- array(c(0.482,0.327,0.191), dim = 3, dimnames = list(People=lv1))
Opportunity.prob <- array(c(1,0,0,0.8,0.2,0,0.2,0.8,0,0.8,0.2,0,0,1,0,0,0.8,0.2,0.2,0.8,0,0,0.8,0.2,0,0,1), dim = c(3,3,3), dimnames = list(Opportunity=lv1, Traffic = lv1, Park = lv1))
Potential.prob <- array(c(1,0,0,0.2,0.8,0,0,1,0,0,0.2,0.8,0,0,1,0,0,1), dim = c(3,2,3), dimnames = list(Potential=lv1, Water = lv3, Green = lv1))
Supply.prob <- array(c(1,0,0,0.8,0.2,0,0.2,0.8,0,1,0,0,0,1,0,0,0.2,0.8,1,0,0,0,0.8,0.2,0,0,1), dim = c(3,3,3), dimnames = list(Supply=lv1, Opportunity = lv1, Potential = lv1))
Demand.prob <- array(c(1,0,0,0,1,0,0,0,1), dim = c(3,3), dimnames = list(Demand = lv1, People = lv1))
Budget.prob <- array(c(0,1,0,1,0,0,1,0,0,0,0,1,0,1,0,1,0,0,0,0,1,0,0,1,0,1,0), dim = c(3,3,3), dimnames = list(Budget = lv2, Demand = lv1, Supply = lv1))

ecosystem.cpt <- list(Bus = Bus.prob, Road = Road.prob, Lot = Lot.prob, Traffic = Traffic.prob,
                      Park = Park.prob, Green = Green.prob, Water = Water.prob,
                      People = People.prob, Opportunity = Opportunity.prob,
                      Potential = Potential.prob,
                      Supply = Supply.prob,
                      Demand = Demand.prob,
                      Budget = Budget.prob)

ecosystem <- custom.fit(ecosystem.dag,ecosystem.cpt)

usethis::use_data(ecosystem, overwrite = TRUE)
