library(rpart)
library(partykit)

# data
data <- read.csv("8.3.csv")

# parameters
formula <- liked ~ gender + useful + beautiful + selfmade + eatable
control <- rpart.control(minsplit=2, minbucket=1, cp=0.001)

# gini index
gini <- rpart(formula, data, method="class",parms=list(split="gini"), control=control)
gini <- as.party(gini)
print(gini)
plot(gini)

# inromation gain
gain <- rpart(formula, data, method="class",parms=list(split="information"), control=control)
gain <- as.party(gain)
print(gain)
plot(gain)