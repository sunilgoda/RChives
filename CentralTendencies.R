rm(list=ls(all=T))

#ctrl + shift + h
#set working dir
setwd("~/Desktop/INSOFE/R/Piazza/20180812_Central Tendencies_Batch48_CSE7315c_Lab01")

group <- read.csv("group.csv",header=T)

#ans for 1.1,1.2-------------------------
summary(group)

#alt method
mean1 <- mean(group$Group.1)
median1 <- median(group$Group.1)

#ans for 1.3 -5.788333-------------------------
allcols <- c(group$Group.1,group$Group.2,group$Group.3,group$Group.4,group$Group.5,group$Group.6)
str(allcols)

grand_mean <- mean(allcols)
grand_mean

#ans for 1.4 - no-------------------------


#---- 2 ans-------------------------  
# distance(continous),traffic(continous),number of passengers(discrete), demand(continuous),car type(nominal)
#-----


#----3 ans-------------------------
# Mean gets impacted
#----


#---4 ans-------------------------
# Philip : Mean = 20.8, Median =21 , Range = 2
# Mathew: Mean = 24.2, Median =28, Range = 24
# Philip -is more consistent
philip <- c(20 , 20 , 21 , 21 , 22)
p_mean <- mean(philip)
p_mean
p_median <- median(philip)
p_median
p_range <- max(philip) -min(philip)
p_range
p_stddev <- sd(philip)
p_stddev

matthew <- c(30,15,12,36,28)
m_mean <- mean(matthew)
m_mean
m_median <- median(matthew)
m_median
m_range <- max(matthew) - min(matthew)
m_range
m_stddev <- sd(matthew)
m_stddev

#----

#---5 ans-------------------------
# Median
#---

#custom function for mode
getmode <-function(x){
  ux <-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}

#---6 ans-------------------------
#Range = 11
#IQR =3
#Variance = 8.005833
#Std Deviation = 2.829458
#25 percentile = 6.5
#50 percentile = 8.5
#75 percentile = 9.5
#mode = 10 
# 0 is the outlier
scores <- c(11, 7.5, 8.5, 10, 10, 10.5, 5.5, 10, 9, 9.5, 5.25, 8, 6.5, 10.5, 8.75,
           0, 6, 6, 6.75,8.75, 0, 9.5, 7.5, 8.5, 7)
s_range <- max(scores) - min(scores)
s_range

s_variance <- var(scores)
s_variance

s_stddev <- sd(scores)
s_stddev

quarter1 <- quantile(scores,probs = 0.25)
quarter1

quarter2 <- quantile(scores,probs = 0.50)
quarter2

quarter3 <- quantile(scores,probs <- 0.75)
quarter3

s_iqr <- quarter3 - quarter1
s_iqr

s_mode <- getmode(scores)  
s_mode

hist(scores)
boxplot(scores)
#---


#---7 ans-------------------------
#supplier1 range = 10 ,supplier2 range = 10
#supplier1 mean wt = 22  ,supplier2 mean wt = 22
#No
#standard deviation is right measure for consistency

supp1 <- c(17,22,22,22,27)
supp2 <- c(17,19,20,27,27)

df <- data.frame(supp1,supp2)
df

supp1_range <- max(df$supp1) - min(df$supp1)
supp1_range

supp2_range <- max(df$supp2) - min(df$supp2)
supp2_range

supp1_meanwt <- mean(df$supp1)
supp1_meanwt

supp2_meanwt <- mean(df$supp2)
supp2_meanwt

#---

#---8 ans-------------------------
#eagle boys : mean = 27.9, median=30.5,mode = , q1-20.8 , q2 = 30.5,q3 =35, iqr =14.25,sd = 8.391
#food panda : mean = 27.9, median=30.5,mode = , q1-20.5 , q2 = 30.5,q3 =35, iqr =14.5,sd = 9.888
#Swiggy,PizzaHut deliver earlier than others but had outliers

deliveries <- read.csv("deliveryserivces.csv",header=T)
head(deliveries)
str(deliveries)

eagle_mean <- mean(deliveries$EagleBoys)
eagle_median <- median(deliveries$EagleBoys)
eagle_mode <- getmode(deliveries$EagleBoys) 
eagle_q1 <- quantile(deliveries$EagleBoys,probs = 0.25) 
eagle_q2 <- quantile(deliveries$EagleBoys,probs = 0.50) 
eagle_q3 <- quantile(deliveries$EagleBoys,probs = 0.75) 
eagle_iqr <- eagle_q3 - eagle_q1
eagle_stddev <- sd(deliveries$EagleBoys)

apply(deliveries,2,mean)
apply(deliveries,2,median)
apply(deliveries,2,getmode)
apply(deliveries,2,quantile)
apply(deliveries,2,sd) 

boxplot(deliveries)

#---

#---9 ans-------------------------
#rear passengers had less deaths than front passengers
#they are symmetric
#boxplot for rear had outliers as there are pts outside the outer whisker
#front median =828.5
#rear median= 401.5
seat_df <- data.frame(Seatbelts)
head(seat_df)
str(seat_df)

boxplot(seat_df$front)
boxplot(seat_df$rear)

median(seat_df$front)
median(seat_df$rear)
class(seat_df$front)

medians <- c(apply(seat_df,2,median))
medians[3]

boxplot(seat_df$front,seat_df$rear)
#---


#---10 ans-------------------------
# 272 observations are present
#column names- eruptions,waiting 
#2 prominent groups of scatter found between 25-65 and 75-90
#There is Weak Positive Linear relationship between waiting and eruption as waiting increased eruption increased
#no outliers
df.faith <- data.frame(faithful)
head(df.faith)
str(df.faith)
colnames(df.faith)

plot(df.faith$waiting,df.faith$eruptions)
#---


#---11 ans-------------------------
#Eruption durations - Roughly Symmetric Distribution
#Waiting times -Roughly Symmetric Distribution
#Center of data for Eruption durations, Mean = 3.48 , Median=4
#Center of data for Waiting Times,Mean =70.89, Median = 76
#Spread of Eruption durations, range =3.5, IQR = 2.29, Std Dev = 1.14
#Spread of Waiting Times, range =53, IQR = 24, Std Dev =13.59
#Eruption duration - Bimodal
#Waiting Times - Bimodal
#Waiting Times distribution had higher center and more spread
#No outliers for both variables

hist(df.faith$eruptions)
hist(df.faith$eruptions,breaks = 100)

hist(df.faith$waiting)
hist(df.faith$waiting,breaks = 100)

apply(df.faith,2,mean)
apply(df.faith,2,median)

eruption.range <- max(df.faith$eruptions) - min(df.faith$eruptions)
eruption.range
eruption.q1 <- quantile(df.faith$eruptions,probs = 0.25) 
eruption.q3 <- quantile(df.faith$eruptions,probs = 0.75) 
eruption.iqr <- eruption.q3 - eruption.q1
eruption.iqr
sd(df.faith$eruptions)

waiting.range <- max(df.faith$waiting) - min(df.faith$waiting)
waiting.range
waiting.q1 <- quantile(df.faith$waiting,probs = 0.25) 
waiting.q3 <- quantile(df.faith$waiting,probs = 0.75) 
waiting.iqr <- waiting.q3 - waiting.q1
waiting.iqr
sd(df.faith$waiting)
#---


#---12 ans-------------------------
#a) mean = 50.5,median =50.5
natural.nums <- c(1:100)
natural.nums
mean(natural.nums)
median(natural.nums)

#b)mean = 40.33, median=32
myvec <- c(12,13,15,32,24,53,45,78,91)
mean(myvec)
median(myvec)

#c)mean=33.1,median=33.5
randvec <- sample(20:40,10)
randvec
mean(randvec)
median(randvec)

#d) mean=2.33,median=2.5
dupvec <- c(rep(1,10),rep(2,20),rep(3,30))
dupvec
mean(dupvec)
median(dupvec)
#---


#---13 ans-------------------------
# 6 cyclinder cars = 7
#mean of mpg of 6 cyclinder cars = 19.74286
cars.df <- data.frame(mtcars)
head(cars.df)
str(cars.df)

summary(cars.df)
names(cars.df)
colnames(cars.df)
nrow(cars.df)

num_data <- data.frame(mtcars$mpg,mtcars$cyl,mtcars$disp,mtcars$hp,mtcars$drat,
                       mtcars$wt,mtcars$qsec,mtcars $vs,mtcars$am,mtcars$gear,mtcars$carb)

unique(num_data$mtcars.cyl)
unique(num_data$mtcars.vs)
unique(num_data$mtcars.am)

cat_data <- data.frame(num_data$mtcars.cyl,num_data$mtcars.vs,num_data$mtcars.am)

apply(num_data,2,mean)
boxplot(num_data)

length(num_data$mtcars.cyl[num_data$mtcars.cyl == 6])

mean(num_data$mtcars.mpg[num_data$mtcars.cyl == 6])
