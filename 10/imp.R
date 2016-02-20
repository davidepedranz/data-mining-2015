imp <- function(t) {
  m = mean(t)
  return( sqrt((sum((t - m)^2)) / length(t) )) 
}

split <- function(t1, t2) {
  t = c(t1, t2)
  sum <- ((imp(t1) + imp(t2)))
  
  return(c(imp(t1), imp(t2), sum))
  
  # to compute stopping criteria
  #return((imp(t1) + imp(t2))/imp(t))
}

# 1 vs rest
a <- split(c(13), c(14,14,12,10))

# 1,2 vs 3,4,5
b <- split(c(13, 14), c(14,12,10))

# 1,2,3 vs 4,5
c <- split(c(13,14,14), c(12,10))

# 5 vs rest
d <- split(c(13,14,14,12), c(10))
