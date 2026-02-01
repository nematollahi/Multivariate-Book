#New Package CCA

setwd("E:/Multivariate II/Data")
z=read.table("varzaneh_new.txt")
z<- read.delim("E:/Multivariate II/Data/varzaneh_new.txt", header=FALSE)
z=read.table("E:\\Multivariate II\\Data\\varzaneh_new.txt")
colnames(z)=c("X1","X2","X3","X4","X5"); dim(z)
x=z[,1:2]; y=z[,3:5]
library("CCA")
correl <- matcor(x, y )
img.matcor(correl, type = 2)
cc1 <- cc(x, y)  ### function for the R package 'CCA'
cc1$cor
par(mfrow = c(1,2))
barplot(cc1$cor, main = "Canonical correlations for 'cancor()'", col = "gray")
cc1$xcoef 
cc1$ycoef 

# standardized x canonical coefficients diagonal matrix of x sd's
s1 <- diag(sqrt(diag(cov(x))))
s1 %*% cc1$xcoef

# standardized y canonical coefficients diagonal matrix of y sd's
s2 <- diag(sqrt(diag(cov(y))))
s2 %*% cc1$ycoef
