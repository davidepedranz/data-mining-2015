################################################
# Exercise 1.2 - 26th october 2015
#
# Davide Pedranz - 362504
################################################

# b - load data from csv files
iris1 <- read.csv("iris1.csv", header = FALSE)
iris2 <- read.csv("iris2.csv", header = FALSE)
iris <- rbind(d1, d2)
names(iris) <- c("sepal_length", "sepal_width", "petal_length", "petal_width", "class")

# c - replace NA with col mean
# for each column
for(name in names(iris)) {
  # select the rows with NA...         ... and replace them with the mean (calculated without NAs)
  iris[[name]][is.na(iris[[name]])] <- mean(iris[[name]], na.rm = TRUE)
}

# d - extract length and petal width
test <- iris[c("petal_length", "petal_width")]

# e - cluster with k in {2, 3, 4}
cluster2 <- kmeans(test, center = 2)
cluster3 <- kmeans(test, center = 3)
cluster4 <- kmeans(test, center = 4)

# f - plot (with different colours for each cluster)
plot(test, col=cluster2$cluster)
plot(test, col=cluster3$cluster)
plot(test, col=cluster4$cluster)

# g - plot (different colous for original classes)
plot(test, col=iris$class)
