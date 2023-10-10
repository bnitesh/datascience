# Read German credit csv fie in
germanCredit <- read.csv("GermanCredit.csv")

# Extract a sample of 500 rows at random
sampleGermanCredit <- germanCredit[sample(nrow(germanCredit),500),]

# Look at summary of data set
summary(germanCredit)

# Use scatter plot to understand correlation 
library(car)
#scatterplotMatrix(.~Duration+Amount+InstallmentRatePercentage+ResidenceDuration+Age+NumberExistingCredits,main=germanCredit)

# Plot bar graphs for categorical variables such as class, employment status, foreign worker
class.freq <- table(germanCredit$Class)
barplot(class.freq)
unemployed.freq <- table(germanCredit$EmploymentDuration.Unemployed)
barplot(unemployed.freq)
class.foreign <- table(germanCredit$ForeignWorker)
barplot(class.foreign)

# linear regression model to predict Amount based on Duration
germanCredit.lm <- lm(Amount~Duration, data=germanCredit)
summary(germanCredit.lm)
cor(germanCredit$Amount, germanCredit$Duration)