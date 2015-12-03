m <- rbind(
  c(0, 0),
  c(2, 0),
  c(3, 0),
  c(4, 0),
  c(4.1, 0)
)


cl = kmeans(m, 2)
plot(m, col=cl$cluster)


# library(cluster)
# si <- silhouette(cl$cluster, daisy(m))
# summary(si)
# plot(si)