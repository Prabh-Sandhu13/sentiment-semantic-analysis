data = read.csv('/Users/prabhjotkaur/Documents/createdAtdata.csv')
print(data)

print(is.data.frame(data))

print(ncol(data))
print(nrow(data))

set.seed(42)
rows <- sample(nrow(data))
data <- data[rows, ]
print(is.data.frame(data))

data <- data.frame(matrix(unlist(data), nrow=length(data), byrow=T))

print(data)

#------------for K=2-----------------------------
kmeans(data, 2, iter.max = 10, nstart = 1)

cls <- kmeans(data, 2, iter.max = 10, nstart = 1)
data$cluster <- as.character(cls$cluster)
print(cls$centers)
print(cls$size)
head(data)

library(ggplot2)

ggplot(data = data, 
            mapping = aes(x=rows, y =timestamp, colour = cluster), 
       centers=2)+ 
  geom_point()+
  labs(x = "Index")

#------------for K=3-----------------------------
kmeans(data, 3, iter.max = 10, nstart = 1)

cls <- kmeans(data, 3, iter.max = 5, nstart = 1)
data$cluster <- as.character(cls$cluster)
head(timestamp_cluster)
print(cls$centers)
print(cls$size)

library(ggplot2)

ggplot(data = data, 
       mapping = aes(x=rows, y =timestamp, colour = cluster))+ 
  geom_point()+
  labs(x = "Index")

#------------for K=4-----------------------------

kmeans(data, 4, iter.max = 10, nstart = 1)

cls <- kmeans(data, 4, iter.max = 5, nstart = 1)
data$cluster <- as.character(cls$cluster)
head(timestamp_cluster)
print(cls$centers)
print(cls$size)
library(ggplot2)

ggplot(data = data, 
       mapping = aes(x=rows, y =timestamp, colour = cluster))+ 
  geom_point()+
  labs(x = "Index")

#------------for K=5-----------------------------
kmeans(data, 5, iter.max = 10, nstart = 1)

cls <- kmeans(data, 5, iter.max = 5, nstart = 1)
data$cluster <- as.character(cls$cluster)
head(timestamp_cluster)

library(ggplot2)

ggplot(data = data, 
       mapping = aes(x=rows, y =timestamp, colour = cluster))+ 
  geom_point()+
  labs(x = "Index")

print(cls$centers)
print(cls$size)

#------------for K=6-----------------------------
kmeans(data, 6, iter.max = 10, nstart = 1)

cls <- kmeans(data, 6, iter.max = 5, nstart = 1)
data$cluster <- as.character(cls$cluster)
head(timestamp_cluster)

library(ggplot2)

ggplot(data = data, 
       mapping = aes(x=rows, y =timestamp, colour = cluster))+ 
  geom_point()+
  labs(x = "Index")

print(cls$centers)
print(cls$size)
#------------for K=7-----------------------------
kmeans(data, 7, iter.max = 10, nstart = 1)

cls <- kmeans(data, 7, iter.max = 5, nstart = 1)
data$cluster <- as.character(cls$cluster)
head(timestamp_cluster)

library(ggplot2)

ggplot(data = data, 
       mapping = aes(x=rows, y =timestamp, colour = cluster))+ 
  geom_point()+
  labs(x = "Index")

print(cls$centers)
print(cls$size)

#------------for K=8-----------------------------
kmeans(data, 8, iter.max = 10, nstart = 1)

cls <- kmeans(data, 8, iter.max = 5, nstart = 1)
data$cluster <- as.character(cls$cluster)
head(timestamp_cluster)

library(ggplot2)

ggplot(data = data, 
       mapping = aes(x=rows, y =timestamp, colour = cluster))+ 
  geom_point()+
  labs(x = "Index")

print(cls$centers)
print(cls$size)


       