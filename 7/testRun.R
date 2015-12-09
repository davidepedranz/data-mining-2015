source('LDCTraining.R')
source('LDCClassify.R')

# a)
trainingData <- read.csv("trainingData.csv", header = FALSE)
result <- LDCTraining(trainingData)
result[[1]]
result[[2]]

# b)
newData <- read.csv("newData.csv", header = FALSE)
labels <- LDCClassify(newData, result[[1]], result[[2]])
plot(newData, col = labels)
