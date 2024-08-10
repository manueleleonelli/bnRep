#library(MXM)
#library(Rfast)
#library(bnlearn)
#library(pcalg)
#library(AER)
#library(Ecdat)
#library(bayesm)
#library(wooldridge)
#library(Rgraphviz)
#library(robustbase)
#library(arules)
#library(pchc)

data(IncomeESL)
IncomeESL[1:3, ]

## remove incomplete cases
IncomeESL <- IncomeESL[complete.cases(IncomeESL), ]

## preparing the data set
IncomeESL[["income"]] <- factor((as.numeric(IncomeESL[["income"]]) > 6) +1,
                                levels = 1 : 2 , labels = c("$0-$40,000", "$40,000+"))

IncomeESL[["age"]] <- factor((as.numeric(IncomeESL[["age"]]) > 3) +1,
                             levels = 1 : 2 , labels = c("14-34", "35+"))

IncomeESL[["education"]] <- factor((as.numeric(IncomeESL[["education"]]) > 4) +1,
                                   levels = 1 : 2 , labels = c("no college graduate", "college graduate"))

IncomeESL[["years in bay area"]] <- factor(
  (as.numeric(IncomeESL[["years in bay area"]]) > 4) +1,
  levels = 1 : 2 , labels = c("1-9", "10+"))

IncomeESL[["number in household"]] <- factor(
  (as.numeric(IncomeESL[["number in household"]]) > 3) +1,
  levels = 1 : 2 , labels = c("1", "2+"))

IncomeESL[["number of children"]] <- factor(
  (as.numeric(IncomeESL[["number of children"]]) > 1) +0,
  levels = 0 : 1 , labels = c("0", "1+"))


x <- IncomeESL
x <- x[, -8]
nam <- colnames(x)
nam[3] <- "marriage"   ;  nam[7] <- "bay"
nam[8] <- "No of people"  ;  nam[9] <- "children"   ;   nam[10] <- "rent"
nam[11] <- "type"   ;  nam[12] <- "ethnicity"  ;  nam[13] <- "language"
colnames(x) <- nam
colnames(x) <- c( "Income", "Sex", "Marriage", "Age", "Education", "Occupation", "Bay",
                  "No of people", "Children", "Rent", "Type", "Ethnicity", "Language" )
nam <- colnames(x)
black <- NULL

black <- matrix(nrow = 26, ncol = 2)
black <- as.data.frame(black)
for (i in 1:13)  black[i, ] <- c(nam[i], nam[2])
for (i in 1:13)  black[13 + i, ] <- c(nam[i], nam[4])
black <- black[-c(2, 17), ]
black <- rbind( black, c(nam[9], nam[3]) )
black <- rbind( black, c(nam[3], nam[6]) )
black <- rbind( black, c(nam[9], nam[6]) )
black <- rbind( black, c(nam[6], nam[5]) )
black <- rbind( black, c(nam[10], nam[1]) )
black <- rbind( black, c(nam[3], nam[1]) )
black <- rbind( black, c(nam[1], nam[5]) )
black <- rbind( black, c(nam[13], nam[12]) )
black <- rbind( black, c(nam[10], nam[5]) )
black <- rbind( black, c(nam[10], nam[6]) )
colnames(black) <- c("from", "to")

b1 <- bnlearn::mmhc( x, blacklist = black, restrict.args = list(alpha = 0.05, test = "mi") )

income<- bn.fit(b1,as.data.frame(x))

usethis::use_data(income, overwrite = TRUE)
