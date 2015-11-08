################################################
# Exercise 1.1 - 26th october 2015
#
# Davide Pedranz (362504)
# Jakub Amanowicz (362594)
# Hongmei Liang (292520)
################################################

# a - create a vector
v1 <- c(4, 9, 10)

# b - create a vector with sequentials numbers
v2 <- seq(12, 0, -3)

# c - create a matrix
M <- rbind(c(4,5,6,9,4), c(2,91,15,8,6), c(3,42,9,6,2), c(4,17,2,7,7))

# d - extract a submatrix
M1 <- M[2:4, 2:4]

# e - compute matrix-vector multiplication M1 * v1
M1 %*% v1

# f - compute x in the equation: M1 * x = v1
x <- solve(M1, v1)

# g - create the shopping data frame
items <- c("bread", "milk", "sugar", "bread", "sugar", "rice")
prices <- c(2.99, 0.99, 0.99, 1.99, 0.99, 1.79)
amouts <- c(1, 2, 1, 1, 3, 2)
shopping <- data.frame(items, prices, amouts)
names(shopping) <- c("item", "price", "amount")

# h - extract subdata "item" and "price"
shopping[c("item", "price")]

# i - extract the vector "amouts"
v <- shopping[["price"]]
