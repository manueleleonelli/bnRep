#' urinary Bayesian Network
#'
#' Urinary tract infections in children: building a causal model-based decision support tool for diagnosis with domain knowledge and prospective data.
#'
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to describe the causal relationships among variables relevant to paediatric urinary tract infections. Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#'   \item{AbdoPain}{(Yes, Unknown);}
#'   \item{AgeGroup}{(LessThan6Mon, Btw6MonAnd2Yr, Btw2And5Yr, Above5Yr);}
#'   \item{CauseUTI}{(EColi, OtherGramNeg, GramPos, None);}
#'   \item{CollMethod}{(CleanCatch, Catheter, SupraAsp);}
#'   \item{ContaminationRisk}{(High, Low);}
#'   \item{CRPLevel}{(Above70, Btw15And70, Below50, NotDone)}
#'   \item{CurrPhenotype}{(Type1, Type2, Type3);}
#'   \item{Diarrhea}{(Yes, No);}
#'   \item{EColi}{(Positive, Negative);}
#'   \item{EColiPresence}{(High, Low);}
#'   \item{EmpricAbxGroup3}{(Narrow, Broader);}
#'   \item{Epithelials}{(Low, Moderate);}
#'   \item{FeverPR}{(Yes, No);}
#'   \item{GramPos}{(Positive, Negative);}
#'   \item{GramPosPresence}{(High, Low);}
#'   \item{Irritable}{(Yes, No);}
#'   \item{Lethargy}{(Yes, No);}
#'   \item{Microscopy_bacts}{(Many, Moderate, Few, NotSeen);}
#'   \item{NauseaOrVomit}{(Yes, No);}
#'   \item{NeutLevel}{(Above15, Btw8And15, Below8, NotDone);}
#'   \item{OnAbxEDGroup3}{(No, Narrow, Broader);}
#'   \item{OtherGramNeg}{(Positive, Negative);}
#'   \item{OtherGramNegPresence}{(High, Low);}
#'   \item{PoorIntake}{(Yes, No);}
#'   \item{PrevUriKidProbs}{(Reported, Unknown);}
#'   \item{RespSymp}{(Yes, No);}
#'   \item{Sex}{(Female, Male);}
#'   \item{TemperatureLvl2}{(Abv385, Btw375and385, Btw365and375, Below365);}
#'   \item{UltraSound}{(Abnormal, Unknown, NotDone);}
#'   \item{Urin_Leuc}{(High, Moderate, Low);}
#'   \item{Urin_LeucEst}{(High, Moderate, Low, NotDetected);}
#'   \item{Urin_Nitrite}{(Detected, NotDetected);}
#'   \item{UrinSym_haematuria}{(Yes, Unknown);}
#'   \item{UrinSym_PainOrDiscomf}{(Yes, Unknown);}
#'   \item{UrinSym_smelly}{(Yes, Unknown);}
#'   \item{WCCLevel}{(Above18, Btw10And18, Below10, NotDone);}
#'    }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Ramsay, J. A., Mascaro, S., Campbell, A. J., Foley, D. A., Mace, A. O., Ingram, P., ... & Wu, Y. (2022). Urinary tract infections in children: building a causal model-based decision support tool for diagnosis with domain knowledge and prospective data. BMC Medical Research Methodology, 22(1), 218.
"urinary"
