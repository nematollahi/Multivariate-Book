setwd("G:/Multivariate II/Data")
x=read.table("Varzaneh_Esfahan_full.txt")
x<- read.delim("G:/Multivariate II/Data/Varzaneh_Esfahan_full.txt", header=FALSE)
x=read.table("G:\\Multivariate II\\Data\\Varzaneh_Esfahan_full.txt")
colnames(x)=c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10","X11","X12","X13","X14",
              "X15","X16","X17","X18","X19","X20","X21","X22","X23")
m1=princomp(x)
summary(m1)
m1$loadings[,1:2]
