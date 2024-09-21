#' nanomaterial Bayesian Networks
#'
#'
#' Probabilistic model for assessing occupational risk during the handling of nanomaterials.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network for the assessment of the occupational risk associated with the handling of nanomaterials in research laboratories (before expert opinion). Probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{Risk}{(High, Medium, Low);}
#' \item{Hazard}{(High, Medium, Low);}
#' \item{ClassificationGHS}{(1, 2, 3, 4, 5);}
#' \item{VariablesPhysicoChemical}{(High, Medium, Low);}
#' \item{RiskControl}{(High, Medium, Low);}
#' \item{Exposure}{(High, Medium, Low);}
#' \item{PersonalProtectiveEquipment}{(High, Medium, Low);}
#' \item{AdministrativeMeasures}{(High, Medium, Low);}
#' \item{ProtectionByUsingCollectiveProtectiveEquipment}{(Full containment/isolation, Enclosed ventilation, Local ventilation, General mechanical ventilation);}
#' \item{BodyProtection}{(No use, Cotton lab coats, Synthetic material lab coats, Chemical protection coveralls);}
#' \item{HandProtection}{(No use, Rubber gloves, Nitrile gloves - 1 pair, Nitrile gloves - 2 pairs);}
#' \item{EyesProtection}{(No use, Safety glasses, Safety goggles, Face shields);}
#' \item{RespiratoryProtection}{(No use, Safety mask without selection criteria, Respiratory mask according to the respiratory protection program);}
#' \item{FootProtection}{(Open shoes, Work shoes, Safety shoes for chemical agents);}
#' \item{OccupationalEnvironmentRiskProgram}{(No, Yes, Yes - consider NMs);}
#' \item{MedicalSurveillance}{(No, Yes, Yes - consider NMs);}
#' \item{RespiratoryProtectionProgram}{(No, Yes, Yes - consider NMs);}
#' \item{PeriodicMaintenanceOfCPE}{(No, Yes - less than 12 months, Yes - more than 12 months);}
#' \item{StandardOperatingProcedureOfTask}{(No, Yes);}
#' \item{RiskTrainingInvolvingNMs}{(No, Yes);}
#' \item{Frequency}{(Daily, Weekly, Monthly, Semiannual, Yearly);}
#' \item{DustFormation}{(With, Without);}
#' \item{AerosolFormation}{(With, Without);}
#' \item{Amount}{(<10mg, 10-100mg, >100mg);}
#' \item{Duration}{(<30min, 30-240min, >240min);}
#' \item{SurfaceArea}{(< 10 m2g, 10-49 m2g, >50 m2g);}
#' \item{Agglomeration}{(With, Without);}
#' \item{Morphology}{(Spherical, Plates, Rods);}
#' \item{CrystallineStructure}{(With, Without);}
#' \item{SolubilityInWater}{(Dissolution pH 5 to 9, Insoluble);}
#' \item{SizeOfAtLeastOneDimension }{(Less than 100, More than 100);}
#' \item{SuspensionStability}{(Less than 30, More than 30);}
#' \item{SurfaceChargeInSolution}{(Charged, Neutral);}
#' \item{SurfaceModificationWithHydrophilicGroups}{(Without, With);}
#' \item{AcuteToxicityDermalExposure}{(Less than 50, 50-200, 200-1000, 1000-2000, 2000-5000, No effect);}
#' \item{ChronicToxicityExposureByDustInhalation}{(Less than 0.02, 0.02-0.2, No effect);}
#' \item{AcuteToxicityExposureByGasInhalation}{(Less than 100, 100-500, 500-2500, 2500-20000, No effect);}
#' \item{ChronicToxicityByTheExposureRouteInhalationGas}{(Less than 50, 50-200, No effect);}
#' \item{PotentiallyCarcinogenic}{(Confirmed for humans, Possibly toxic to humans, No effect);}
#' \item{AcuteToxicityExposureByDustInhalation}{(Less than 0.5, 0.5-2, 2-10, 10-20, No effect);}
#' \item{ChronicToxicityByTheExposureRouteInhalationDust}{(Less than 0.5, 0.5-2, 2-10, 10-20, No effect);}
#' \item{RespiratorySensitization}{(There is evidence for humans, There are positive tests for animal testing, No effect);}
#' \item{ChronicToxicityInTheAquaticEnvironment}{(Less than 0.01, 0.01-0.1, 0.1-1, No effect);}
#' \item{SkinIrritation}{(Skin corrosion, Skin irritation, ILskin irritation, No effect);}
#' \item{ChronicToxicityDermalExposure}{(Less than 20, 20-200, No effect);}
#' \item{EyeIrritation}{(No effect, Reversible irritation, Irreversible damage);}
#' \item{AcuteToxicityInTheAquaticEnvironment}{(Less than 1, 1-10, 10-100, No effect);}
#' \item{AcuteToxicityByTheExposureRouteOral}{(Less than 5, 5-50, 50-300, 300-2000, 2000-5000, No effect);}
#' \item{ChronicToxicityExposureOral}{(Less than 10, 10-100, No effect);}
#'  }
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords Tree
#' @importClassesFrom bnlearn bn.fit
#' @references Schmidt, J. R. A., Nogueira, D. J., Nassar, S. M., Vaz, V. P., da Silva, M. L. N., Vicentini, D. S., & Matias, W. G. (2020). Probabilistic model for assessing occupational risk during the handling of nanomaterials. Nanotoxicology, 14(9), 1258-1270.
"nanomaterials1"
