rm(list=ls(all=T))

setwd("~/Desktop/INSOFE/R/Piazza/20180812_Central Tendencies_Batch48_CSE7315c_Lab01")

marks <- read.csv("batch_marks.csv")

#---1 ans-------------------------
head(marks)
str(marks)
tail(marks)
summary(marks)

#---2 ans-------------------------
#custom function for mode
getmode <-function(x){
  ux <-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
apply(marks,2,mean)
apply(marks,2,median)
apply(marks,2,getmode)


#---3 ans-------------------------
# Range, IQR,Variance, Standard Deviation are measures of Variability/Spread


#---4 ans-------------------------
#batch1: range = 78, IQR = 22.2,Variance=361.08, Std Dev = 19.00
#batch2: range = 122, IQR = 21,Variance=688.67, Std Dev = 26.24
batch1.range <- max(marks$Batch1) - min(marks$Batch1)
batch1.iqr <- quantile(marks$Batch1,0.75) - quantile(marks$Batch1,0.25)
batch1.var <- var(marks$Batch1)
batch1.sd <- sd(marks$Batch1)

batch2.range <- max(marks$Batch2) - min(marks$Batch2)
batch2.iqr <- quantile(marks$Batch2,0.75) - quantile(marks$Batch2,0.25)
batch2.var <- var(marks$Batch2)
batch2.sd <- sd(marks$Batch2)


#---5 ans-------------------------
#Batch1 marks - Negatively Skewed/Left Skewed distribution with Center at 64
#Batch2 marks - Positevely Skewed/Right Skewed distribution with Center at 55
hist(marks$Batch1)
median(marks$Batch1)

hist(marks$Batch2)
median(marks$Batch2)

#---6 ans-------------------------
#Batch1 has an outlier below the lower fence at 2
#Batch2 has an outlier above th upper fence at 156
boxplot(marks)
