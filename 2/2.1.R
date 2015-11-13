################################################
# Exercise 2.1 - 4th november 2015
#
# Davide Pedranz - (362504)
# Jakub Amanowicz (362594)
# Hongmei Liang (292520)
################################################

# a - load data and convert class to an integer
iris <- read.csv("original_iris.csv", header = FALSE)
names(iris) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "class")
iris$class <- as.integer(iris$class)

# b - plot the graph
library("MASS")
parcoord(iris[1:4], col = iris$class)