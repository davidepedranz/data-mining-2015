# test some code from the myKmeans.R file

source('myKmeans.R')

compare <- function(a, b) {
  stopifnot(abs(a-b) < 0.000001)
}

# test distance (2D)
a2 <- c(-7, -4)
b2 <- c(4, 5)
exp2 <- 14.21267
cur2 <- distance(a2, b2)
compare(exp2, cur2)

# test distance (3D)
a3 <- c(-7, -4, 3)
b3 <- c(17, 6, 2.5)
exp3 <- 26.004807247892
cur3 <- distance(a3, b3)
compare(exp3, cur3)

data <- read.csv('data.csv', header = FALSE)

c3 <- kmeans(data, center = 3)
plot(data, col=c3$cluster)

d3 <- myKmeans(as.matrix(data), 3, 10)
plot(data, col=d3[[1]])


c5 <- kmeans(data, center = 5)
plot(data, col=c5$cluster)

d5 <- myKmeans(as.matrix(data), 5, 10)
plot(data, col=d5[[1]])
