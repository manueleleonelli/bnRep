#A Coupled Mathematical Model of the Dissemination Route of Short-Term Fund-Raising Fraud

library(bnlearn)

fundraising.dag = model2network("[PromotionalMessages][LackKnowledge][OverTrust][LackRegulation][LackAwareness][FailureInvest|LackKnowledge:OverTrust][PatsyInvestment|FailureInvest:PromotionalMessages:LackRegulation][FinancialFraud|PatsyInvestment:LackRegulation:LackAwareness]")

lv = c("Yes","No")

PromotionalMessages.prob <- array(c(0.13,0.87),dim = 2, dimnames = list(PromotionalMessages = lv))
OverTrust.prob <- array(c(0.18,0.82),dim = 2, dimnames = list(OverTrust = lv))
LackRegulation.prob <- array(c(0.2,0.8),dim = 2, dimnames = list(LackRegulation = lv))
LackKnowledge.prob <- array(c(0.4,0.6),dim = 2, dimnames = list(LackKnowledge = lv))
LackAwareness.prob <- array(c(0.064,0.936),dim = 2, dimnames = list(LackAwareness= lv))
FailureInvest.prob <- array(c(0.29,0.71,0.18,0.82,0.4,0.6,0,1), dim=c(2,2,2), dimnames = list(FailureInvest=lv, LackKnowledge = lv, OverTrust= lv))
PatsyInvestment.prob <- array(c(0.183,0.817,0.209,0.791,0.173,0.827,0.217,0.783,0.165,0.835,0.2,0.8,0.13,0.87,0,1), dim = c(2,2,2,2), dimnames= list(PatsyInvestment = lv, PromotionalMessages = lv,LackRegulation=lv,FailureInvest= lv))
FinancialFraud.prob <- array(c(0.141,0.859,0.18,0.82,0.112,0.888,0.16,0.84,0.132,0.868,0.2,0.8,0.064,0.936,0,1), dim=c(2,2,2,2), dimnames =list(FinancialFraud=lv,LackRegulation = lv, LackAwareness=lv,PatsyInvestment =lv))

fundraising.cpt <- list(PromotionalMessages= PromotionalMessages.prob,OverTrust=OverTrust.prob,LackRegulation=LackRegulation.prob,LackKnowledge=LackKnowledge.prob,LackAwareness=LackAwareness.prob ,
                        FailureInvest=FailureInvest.prob,PatsyInvestment=PatsyInvestment.prob,FinancialFraud=FinancialFraud.prob)

fundraising <- custom.fit(fundraising.dag,fundraising.cpt)

usethis::use_data(fundraising, overwrite = TRUE)
