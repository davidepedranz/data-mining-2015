################################################
# Exercise 7.1.a - 9th december 2015
#
# Davide Pedranz (362504)
# Jakub Amanowicz (362594)
# Hongmei Liang (292520)
################################################

# X is the training data set, the first two columns are the coordinates for each
# points. The third column is the class label.
LDCTraining <- function(X){
  
  # loading data to a matrix and adding column of ones as the first column
  mtr = matrix(c(rep(1,length(X[,1])),X[,1],X[,2]),ncol = 3, nrow = length(X[,1]))
  
  # loading classes vector
  classes = X[,3]
  
  # since we want to use sign-based classifer
  # we need to change classes 1, 2 to 1, -1
  classes = replace(classes, classes == 2, -1)
  
  # computing the model parameter
  W = solve (t(mtr) %*% mtr) %*% t(mtr) %*% classes
  
  # extracting normal vector from model parameter
  w = c(W[2,],W[3,])
  
  # extracting constant term from model parameter
  w0 = W[1,]
  
  # w is the normal vector
  # w0 is the constant term
  result <- list(w, w0);
  return(result);
}


