################################################
# Exercise 7.2.a - 9th december 2015
#
# Davide Pedranz (362504)
# Jakub Amanowicz (362594)
# Hongmei Liang (292520)
################################################

# library for Naïve-Bayes classifiers
library("caret")

# load data
data <- read.csv("m-fold_cross_validation_data.csv", header = FALSE)
data[,11] <- factor(data[,11])

# define cross validation
m_fold_3 <- trainControl(method="cv", number=3)
m_fold_5 <- trainControl(method="cv", number=5)
m_fold_7 <- trainControl(method="cv", number=7)

# train the model (m-fold cross validation with m = 3, 5, 7)
model_3 <- train(data[,-11], data[,11], method="nb", trControl = m_fold_3)
model_5 <- train(data[,-11], data[,11], method="nb", trControl = m_fold_5)
model_7 <- train(data[,-11], data[,11], method="nb", trControl = m_fold_7)

# accuracy info are contained in the models
print(model_3)
print(model_5)
print(model_7)
