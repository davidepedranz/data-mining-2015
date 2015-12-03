library('dbscan')

# exercise data
d <- rbind(
  c(0,4), c(0,4), c(0,5), c(0,5), c(1,4), c(1,4), c(1,5), c(1,5), c(1,5), c(2,4),
  c(3,4), c(3,4), c(3,5), c(3,5), c(3,5), c(4,4), c(4,4), c(4,5), c(4,5), c(4,5),
  c(2,0), c(2,0), c(3,0), c(3,0), c(3,0), c(3,0), c(4,0), c(4,0), c(3,1), c(3,1),
  c(3,1), c(4,1), c(4,1), c(4,1)
)

# run OPTICS
res <- optics(d, eps=2, minPts=6)

# visualize clusters
res <- optics_cut(res, eps = 1)

# replace Inf with 4 for better visualization
res$reachdist[res$reachdist == Inf] <- 4

# reachability plot
plot(res)

# core distances plot
# plot(res$coredist)