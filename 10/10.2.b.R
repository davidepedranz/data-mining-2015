data <- read.csv('10.csv')

imp <- function(t, b0, b1) {
  return( sum((t$y - b0 - b1 * t$x)^2) / length(t) )
}

# imp (t)
c0 <- lm(y~x, data=data)$coefficients
imp_t = imp(data, c0[1], c0[2])

# 1 vs 2,3,4,5
t1 <- data[1:1,]
f1 <- lm(y ~ x, data=t1)

t2 <- data[2:5,]
f2 <- lm(y ~ x, data=t2)
c2 <- f2$coefficients
imp_t2 = imp(t2, c2[1], c2[2])

# 1,2 vs 3,4,5
t3 <- data[1:2,]
f3 <- lm(y ~ x, data=t3)
c3 <- f3$coefficients
imp_t3 = imp(t3, c3[1], c3[2])

t4 <- data[3:5,]
c4 <- lm(y~x, data=t4)$coefficients
imp_t4 = imp(t4, c4[1], c4[2])


# 1,2,3 vs 4,5
t5 <- data[1:3,]
c5 <- lm(y~x, data=t5)$coefficients
imp_t5 = imp(t5, c5[1], c5[2])

t6 <- data[4:5,]
c6 <- lm(y~x, data=t6)$coefficients
imp_t6 = imp(t6, c6[1], c6[2])

# 1,2,3,4 vs 5
t7 <- data[1:4,]
c7 <- lm(y~x, data=t7)$coefficients
imp_t7 = imp(t7, c7[1], c7[2])

t8 <- data[5:5,]
c8 <- lm(y~x, data=t8)$coefficients
imp_t8 = imp(t8, c8[1], c8[2])
