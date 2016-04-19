# Reference: https://github.com/trevorstephens/titanic/blob/master/Tutorial1.R

# Trevor Stephens
# Titanic: Getting Started With R - Part 1: Booting up in R
# Full guide available at http://trevorstephens.com/

# Set working directory and import datafiles
setwd("/Users/donghochoi/Documents/Work/TA/PS_16S/github/PSwithData_2016S/titanic_example/data")
train <- read.csv("train.csv")
test <- read.csv("test.csv")

# Examine structure of dataframe
str(train)

# Look at number of people who survived
table(train$Survived)
prop.table(table(train$Survived))

# Create new column in test set with our prediction that everyone dies
test$Survived <- rep(0, 418)

# Create submission dataframe and output to file
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "theyallperish.csv", row.names = FALSE)