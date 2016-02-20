data <- read.csv('10c.csv')

plot(data, xlim=c(0, 15), ylim=c(0, 15))

step_1 <- lm(y~x, data[3:13,])

curve(7.75-1.35*x, add = TRUE)

step_2 <- lm(y~x, data[5:13,])

curve(-11.33+1.67*x, add=T)

step_3 <- lm(y~x, data[6:13,])

curve(13-1.81*x, add=T)

step_4a <- lm(y~x, data[1:6,])
step_4b <- lm(y~x, data[7:13,])

curve(-14.81+1.86*x, add=T)
