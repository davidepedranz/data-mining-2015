pp <- rbind(c(1,4),c(1,6),c(2,6),c(3,8),c(4,3),c(5,2))

d <- function(i,j) {
  p1 <- pp[i,]
  p2 <- pp[j,]
  return(sqrt(sum((p2 - p1) ^ 2)))
}

dd <- function(c1, el1) {
  sum <- 0
  for(i in 1:length(el1)) {
    sum <- sum + d(c1, el1[i])
  }
  return(sum)
}

ee <- function(c1,el1,c2,el2) {
  return(dd(c1,el1) + dd(c2,el2))
}

q <- function(c1, c2) {
  tot <- 0
  
  cl1 <- c()
  cl2 <- c()
  
  for(i in 1:dim(pp)[1]) {
    d1 <- d(i, c1)
    d2 <- d(i, c2)
    
    tot <- tot + min(d1,d2)
    if(d1 < d2) {
      cl1 <- append(cl1, i)
    } else {
      cl2 <- append(cl2, i)
    }
    
    print(paste("x", i, " --> cluster ", ifelse(d1 < d2, c1, c2),
                " -- dist=", formatC(min(d1,d2),digits=5, format="f"),
                " [ ", formatC(d1,digits=5, format="f") , ", ",
                formatC(d2,digits=5, format="f"), " ]", sep = ""));
  }
  
  print("")
  print(paste("cluster", c1, "--->", paste(cl1,collapse=" ")))
  print(paste("cluster", c2, "--->", paste(cl2,collapse=" ")))
  print("")
  print(paste("total distance =", formatC(tot,digits=4, format="f")))
}