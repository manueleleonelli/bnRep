#' windturbine Bayesian Network
#'
#'
#' Reliability analysis of a floating offshore wind turbine using Bayesian Networks.
#' @usage NULL
#'
#' @format
#' A discrete Bayesian network to model and analyze the reliability of a floating offshore wind turbine. The probabilities were given within the referenced paper. The vertices are:
#' \describe{
#' \item{B01}{Human error (Yes, No);}
#' \item{B02}{Resonance (Yes, No);}
#' \item{B03}{Faulty welding (Yes, No);}
#' \item{B04}{Material fatigue (Yes, No);}
#' \item{B05}{Pillar damage (Yes, No);}
#' \item{B06}{Capsize (Yes, No);}
#' \item{B07}{Anchor failure (Yes, No);}
#' \item{B08}{Poor operation environment (Yes, No);}
#' \item{B09}{Insufficient emergency measurement (Yes, No);}
#' \item{B10}{Strong wave (Yes, No);}
#' \item{B11}{Lightning strike (Yes, No);}
#' \item{B12}{Storm (Yes, No);}
#' \item{B13}{Typhoon (Yes, No);}
#' \item{B14}{Planes crash (Yes, No);}
#' \item{B15}{Biological collision (Yes, No);}
#' \item{B16}{Inefficient detection (Yes, No);}
#' \item{B17}{Pipe joint corrosion (Yes, No);}
#' \item{B18}{Pipe joint weld defect (Yes, No);}
#' \item{B19}{Pipe joint fatigue (Yes, No);}
#' \item{B20}{Fairlead corrosion (Yes, No);}
#' \item{B21}{Fairlead fatigue (Yes, No);}
#' \item{B22}{Transitional chain wear (Yes, No);}
#' \item{B23}{Friction chain wear (Yes, No);}
#' \item{B24}{Mooring winch failure (Yes, No);}
#' \item{B25}{Buoys friction chain wear (Yes, No);}
#' \item{B26}{Anchor pickup device damage (Yes, No);}
#' \item{B27}{Abnormal stress (Yes, No);}
#' \item{B28}{Invalid maintenance (Yes, No);}
#' \item{B29}{Mooring lines wear (Yes, No);}
#' \item{B30}{Mooring lines fatigue (Yes, No);}
#' \item{B31}{Mooring lines corrosion (Yes, No);}
#' \item{B32}{Hydraulic motor failure (Yes, No);}
#' \item{B33}{Over pressure (Yes, No);}
#' \item{B34}{Accumulation failure (Yes, No);}
#' \item{B35}{Lighting protection failure (Yes, No);}
#' \item{B36}{Limit switch fails (Yes, No);}
#' \item{B37}{Abnormal vibration (Yes, No);}
#' \item{B38}{Oil leakage (Yes, No);}
#' \item{B39}{Filters failure (Yes, No);}
#' \item{B40}{Power 1 failure (Yes, No);}
#' \item{B41}{Power 2 failure (Yes, No);}
#' \item{B42}{Vane damage (Yes, No);}
#' \item{B43}{Anemometer damage (Yes, No);}
#' \item{B44}{Abnormal filter (Yes, No);}
#' \item{B45}{Poor quality lubrication oil (Yes, No);}
#' \item{B46}{Dirt lubrication oil (Yes, No);}
#' \item{B47}{Abnormal vibration (Yes, No);}
#' \item{B48}{Glued (Yes, No);}
#' \item{B49}{Pitting (Yes, No);}
#' \item{B50}{Corrosion of pins (Yes, No);}
#' \item{B51}{Abrasive wear (Yes, No);}
#' \item{B52}{Pitting - gear bearing (Yes, No);}
#' \item{B53}{Gear tooth deterioration (Yes, No);}
#' \item{B54}{Excessive pressure (Yes, No);}
#' \item{B55}{Excess temperature (Yes, No);}
#' \item{B56}{Fatigue - gear (Yes, No);}
#' \item{B57}{Poor design of teeth gears (Yes, No);}
#' \item{B58}{Tooth surface defects (Yes, No);}
#' \item{B59}{Measurement facilities failure (Yes, No);}
#' \item{B60}{Wire fault (Yes, No);}
#' \item{B61}{Leak (Yes, No);}
#' \item{B62}{Asymmetry (Yes, No);}
#' \item{B63}{Structural deficiency (Yes, No);}
#' \item{B64}{Abnormal vibration (Yes, No);}
#' \item{B65}{Abnormal instrument reading (Yes, No);}
#' \item{B66}{Fail to synchronize (Yes, No);}
#' \item{B67}{Broken bars (Yes, No);}
#' \item{B68}{Fail to start on demands (Yes, No);}
#' \item{B69}{Sensor failure (Yes, No);}
#' \item{B70}{Temperature abovel limitation (Yes, No);}
#' \item{B71}{Yaw subsytem failure (Yes, No);}
#' \item{B72}{Drive train failure (Yes, No);}
#' \item{B73}{Brake failure (Yes, No);}
#' \item{B74}{Controller failure (Yes, No);}
#' \item{B75}{Transformer failure (Yes, No);}
#' \item{B76}{Sensors failure (Yes, No);}
#' \item{B77}{Converter failure (Yes, No);}
#' \item{B78}{Blades structure failure (Yes, No);}
#' \item{B79}{Hub failure (Yes, No);}
#' \item{B80}{Bearings failure (Yes, No);}
#' \item{A01}{Mooring subsystem failure (Yes, No);}
#' \item{A02}{Tower failure (Yes, No);}
#' \item{A03}{Floating fundation failure (Yes, No);}
#' \item{A04}{Devices failure (Yes, No);}
#' \item{A05}{Extreme sea condition (Yes, No);}
#' \item{A06}{Collapse due to environment (Yes, No);}
#' \item{A07}{Hit by dropped objects (Yes, No);}
#' \item{A08}{Watertight fault (Yes, No);}
#' \item{A09}{Other devise failure (Yes, No);}
#' \item{A10}{Pipe joint failure (Yes, No);}
#' \item{A11}{Fairlead failure (Yes, No);}
#' \item{A12}{Mooring lines broken (Yes, No);}
#' \item{A13}{Mooring line breakage (Yes, No);}
#' \item{A14}{Mooring lines wear (Yes, No);}
#' \item{A15}{Accumulating wear (Yes, No);}
#' \item{A16}{Hydraulic system failure (Yes, No);}
#' \item{A17}{Alarm facilities failure (Yes, No);}
#' \item{A18}{Wrong pitch angle (Yes, No);}
#' \item{A19}{Hydraulic oil failure (Yes, No);}
#' \item{A20}{Power failure (Yes, No);}
#' \item{A21}{Meteorological unit failure (Yes, No);}
#' \item{A22}{Lubrication failure (Yes, No);}
#' \item{A23}{Abnormal gear (Yes, No);}
#' \item{A24}{Bearings fault (Yes, No);}
#' \item{A25}{Tooth wear - gears (Yes, No);}
#' \item{A26}{Cracks in gears (Yes, No);}
#' \item{A27}{Offset of teeth gears (Yes, No);}
#' \item{A28}{Rotor and stator failure (Yes, No);}
#' \item{A29}{Bearing failure (Yes, No);}
#' \item{A30}{Abnormal signals (Yes, No);}
#' \item{A31}{No centricity generation (Yes, No);}
#' \item{A32}{Overheating (Yes, No);}
#' \item{A33}{Speed train failure (Yes, No);}
#' \item{A34}{Electric component failure (Yes, No);}
#' \item{A35}{Blades failure (Yes, No);}
#' \item{A36}{Rotor failure (Yes, No);}
#' \item{S1}{Support structure failure (Yes, No);}
#' \item{S2}{Pitch system failure (Yes, No);}
#' \item{S3}{Gearbox failure (Yes, No);}
#' \item{S4}{Generator failure (Yes, No);}
#' \item{S5}{Auxiliary system failure (Yes, No);}
#' \item{FOWTMalfunctions}{Flowing offshore wind turbine malfunctions (Yes, No);}
#'}
#'
#' @return An object of class \code{bn.fit}. Refer to the documentation of \code{bnlearn} for details.
#' @keywords NULL
#' @importClassesFrom bnlearn bn.fit
#' @references Li, H., Soares, C. G., & Huang, H. Z. (2020). Reliability analysis of a floating offshore wind turbine using Bayesian Networks. Ocean Engineering, 217, 107827.
"windturbine"
