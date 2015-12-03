library('cluster')

# exercise data
d <- rbind(
  c(0,5), c(2,4), c(1,4), c(1,3), c(5,2),
  c(3,2), c(3,1), c(4,1), c(6,5)
)

# plot the data
plot(d)

# Agglomerative Hierarchical Clustering, Manhattan distance, Single-Link
single <- agnes(d, metric = "manhattan", method="single")
plot(single)

# Agglomerative Hierarchical Clustering, Manhattan distance, Complete-Link
complete <- agnes(d, metric = "manhattan", method="complete")
plot(complete)

# Agglomerative Hierarchical Clustering, Manhattan distance, Average-Link
average <- agnes(d, metric = "manhattan", method="average")
plot(average)