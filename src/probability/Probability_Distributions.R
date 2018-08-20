rm(list=ls(all=T))

#Probability Distributions


#-----1 answer-----------------------------------
#when p(x=3)
dbinom(3,size=12,prob = 0.5)

#when p(p<=3) to get cumulative binomial prob
#pbinom()


#-----2 answer-----------------------------------
dbinom(4,size = 10,0.6)

#another way
pbinom(4,10,0.6) - pbinom(3,10,0.6)


#-----3 answer-----------------------------------
#geo = p(1-p)**x , x = 0,1,2.. failures
probs = dgeom(0:9,0.15)
barplot(probs,names.arg = 1:10)

# E(X) = 1/p
expectation = 1/0.15
expectation


#-----4 answer-----------------------------------
 dpois(3,lambda = 5)


#-----5 answer-----------------------------------
dpois(5,lambda = (1.8*2))


#-----6 answer-----------------------------------
prob2 = 1 - pexp(2,0.5)
prob2

pexp(2,0.5,lower.tail = FALSE)


#-----7 answer----------------------------------
#find lambda first
lambda.val = 1/2

prob3 = pexp(3,lambda.val)
prob2 = pexp(2,lambda.val)

prob3 - prob2


#-----8 answer----------------------------------
expected.val =5
lambda.val = 1/expected.val
1- pexp(3,lambda.val)


#-----9 answer------
vec = c(82, 72, 85, 14, 66, 15, 23, 78, 16, 38, 92, 17)
mean(vec)
sd(vec)

zscore = (vec - mean(vec))/sd(vec)
zscore 

#for standard normal distribution, mean=0, sd=1
mean(zscore)
sd(zscore)

scale(vec,center = T,scale = T)


#-----10 answer------
playera.zscore = (75 - 70)/20

playerb.zscore = (55-40)/10

playera.zscore
playerb.zscore


#-----11 answer------
avg = 67.2
variance = 29.34
stddev = sqrt(variance)

1- pnorm(72,mean = avg,sd = stddev)



#-----12 answer------
avg = 500
stddev = 100

#atleast 700 hrs
1 - pnorm(750,mean=avg,sd= stddev)

#less than 500 hrs
pnorm(500,mean=avg,sd= stddev)

#between 350 and 550 hrs
pnorm(550,mean=avg,sd= stddev) - pnorm(350,mean=avg,sd= stddev)

#-----13 answer------
qnorm(0.5,0,1)

qnorm(0.95,0,1)

qnorm(0.995,0,1)


#-----14 answer------
#standard normal variation - mean=0, sd=1
round(pnorm(1,0,1) - pnorm(-1,0,1),3)

#probability for 2sigma process
round(pnorm(2,0,1) - pnorm(-2,0,1),3)

round(pnorm(3,0,1) - pnorm(-3,0,1),3)

round(pnorm(1.96,0,1) - pnorm(-1.96,0,1),3)


#-----15 answer------
avg = 170
stddev = 7

sampledistr.stddev = stddev/sqrt(30)
pnorm(171,avg, sampledistr.stddev) - pnorm(169,avg,sampledistr.stddev)
