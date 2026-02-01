set.seed(1)
m=kmeans(x,4, algorithm = "MacQueen")
names(m)
m$cluster
print(m$centers,digits=3)
m$size
m$withinss
d1=dist(m$centers,method="euclidean")
print(d1,digits=3)
