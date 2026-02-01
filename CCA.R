#Function cancor
setwd("E:/Multivariate II/Data")
z=read.table("varzaneh_new.txt")
z<- read.delim("E:/Multivariate II/Data/varzaneh_new.txt", header=FALSE)
z=read.table("E:\\Multivariate II\\Data\\varzaneh_new.txt")
colnames(z)=c("X1","X2","X3","X4","X5"); dim(z)
x=z[,1:2]; y=z[,3:5]
cc=cancor(x,y)
cc$cor
barplot(cc$cor, main = "Canonical correlations for 'cancor()'")
cc$xcoef 
cc$ycoef 
