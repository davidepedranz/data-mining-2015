################################################
# Exercise 7.1.b - 9th december 2015
#
# Davide Pedranz (362504)
# Jakub Amanowicz (362594)
# Hongmei Liang (292520)
################################################


# X is the test set. w is the normal vector. w0 is the constant term.
LDCClassify <- function(X, w, w0){

  # compute the classification
  result <- sign(w %*% t(X) + w0)
  
  # restore back original classes
  result = replace(result, result == -1, 2)
  
  # result is the corresponding classification label vector of X
  return(result)
}