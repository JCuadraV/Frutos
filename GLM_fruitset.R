#GLM for pollinator theft by Euycalyptus

#Load data_fset.txt file
data<-read.table("./Data/data_fset.txt", header= T)
attach(data)
names(data)

#editando
#hola

library(mgcv)
library(lme4)
library(MASS)
library(AER)
library(ggplot2)

##Quick Descriptive analysis
boxplot(fruitset~habitat,data=data, xlab="Habitat", ylab="Fruit set")

#GLM with poisson distribution
fset<-glm(fruitset~habitat, data=data)
summary(fset)

qplot(habitat, fruitset, data=data, geom=c("boxplot"), main="",
   xlab="Habitat", ylab="Promedio de frutos formados")


detach(data)
