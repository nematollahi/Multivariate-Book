setwd("G:/Multivariate II/Data")
x=read.table("Varzaneh_Esfahan_full.txt")
x<- read.delim("G:/Multivariate II/Data/Varzaneh_Esfahan_full.txt", header=FALSE)
x=read.table("G:\\Multivariate II\\Data\\Varzaneh_Esfahan_full.txt")
colnames(x)=c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10","X11","X12","X13","X14",
              "X15","X16","X17","X18","X19","X20","X21","X22","X23")
cor(x)
fit=princomp(x, cor=T)
L=cbind(4.4152590*fit$loading[,1],0.92131416*fit$loading[,2])
LLT = L%*%t(L)
Ps=cor(x)-LLT
Psi=diag(cor(x))-diag(LLT)
summary(fit)
plot(fit,type="barplot",col='2')
plot(fit,type="lines")
biplot(fit)
library(psych)
fit1=principal(x,nfactors=2)
fit1
