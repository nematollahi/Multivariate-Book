library(MASS)
setwd("E:/Multivariate II/Data")
Data=read.table("fars.isfahan-code.txt")
Data=read.table("E:\\Multivariate II\\Data\\fars.isfahan-code.txt")
Data<- read.delim("E:/Multivariate II/Data/fars.isfahan-code.txt", header=FALSE)
names(Data)=c("X1","X2","X3","G")
View(Data)
fit <- lda(G ~ X1 + X2 + X3, data=Data)
fit$scaling
predict(fit)$posterior
predict(fit)$x
predict(fit)$class
ct <- table(Data$G, predict(fit)$class)
diag(prop.table(ct, 1))
sum(diag(prop.table(ct)))
dis.score <- with(Data, X1 * -4.2438783 +X2 * -2.2496301 + X3 * 0.5814477)
cbind(predict(fit)$posterior, dis.score)
preds <- predict(fit, method = "plug-in")$class
table(preds, Data$G )
21/30
