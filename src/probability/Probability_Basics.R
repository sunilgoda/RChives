rm(list=ls(all=T))

#-----1 answer-----------------------
#--a = 0.19, Joint probability
prob.male.grad = 19/100
prob.male.grad


#--b = 0.6, Marginal probability
prob.male = 60/100
prob.male

#--c = 0.31,  Marginal probability
prob.grad = 31/100
prob.grad

#--d = 0.405, Conditional probability
prob.female.pg = 28/69
prob.female.pg

#----2 answer in spreadsheet---------

#----3 answer in spreadsheet---------

#----4 answer------------------------
#HH-1 ,HT-1 ,TH-1,TT-1
#2H -1 time,1H- 2 times, 0H - 1 time

prob.0h = 1/4
prob.1h = 2/4
prob.2h = 1/4

exp.head = (0 * prob.0h) + (1 * prob.1h) + (2 * prob.2h) 
exp.head

var.head = (0 - exp.head)^2 * prob.0h + (1 - exp.head) ^ 2 * prob.1h + (2 - exp.head) ^ 2 * prob.2h
var.head

#-----5 answer-----------------------
#TODO commented below
#install.packages("caret") 
#install.packages("MLmetrics")
#library(caret)
#library(MLmetrics)
#conf <- matrix(c(8000,900,100,1000),nrow=2,byrow=T)
#row.names(conf) <- c("positive","negative")
#colnames(conf) <- c("positive","negative")
#confusionMatrix(conf,reference = "positive")

true.positive = 8000
false.negative = 900
false.positive = 100
true.negative = 1000

total = sum(true.positive,false.negative,false.positive,true.negative)
predicted.positive = true.positive + false.positive

actual.positive = true.positive + false.negative
actual.negative = false.positive + true.negative

recall.val = true.positive /actual.positive
specificity.val = true.negative / actual.negative
precision.val = true.positive/predicted.positive

accuracy.val = (true.positive + true.negative) /total

f1.score = 2 * precision.val * recall.val / (precision.val + recall.val)
#False Positives is major concern as the bank will do better if it doesn't give bad loans


#-----6 answer-----------------------

#_____Predicted___
#   | A    |   A' |
#---|------|------|
# A |  80  |  14  |
#---|------|------|
# A'|  11  |  250 |
#---|------|------|

#_____Predicted___
#   | B    |   B' |
#---|------|------|
# B |  120 |  40  |
#---|------|------|
# B'|  9   |  186 |
#---|------|------|


#_____Predicted___
#   | C    |   C' |
#---|------|------|
# C |  100 |  1   |
#---|------|------|
# C'|  35  |  219 |
#---|------|------|

# i) --
accuracy.a = (80 + 250) / 355
accuracy.b = (120 + 186) / 355
accuracy.c = (100 + 219) / 355

overall.accuracy = accuracy.a + accuracy.b + accuracy.c

# ii)--
# True +ve for C = 100
# False -ve for C = 1
# False +ve for C = 35

# iii)--
recall.b = 120 / (120 + 40)

#  iv)--
precision.a = 80 / (80 + 11)



#-----7 answer-----------------------

#scenario-1
exp.gain.stocka = ((80/100) * 4000) + (0.2 * 0)
exp.gain.stockb = (100/100 * 3000)
exp.gain.stocka
exp.gain.stockb
#StockA gives 3200 while StockB gives only 3000. Choose StockA for more gains

#scenario-2
exp.loss.stocka = ((80/100) * 4000) + (0.2 * 0)
exp.loss.stockb = (100/100 * 3000)
exp.loss.stocka
exp.loss.stockb
#StockA loses 3200 while StockB loses only 3000. Choose StockB for less losses

#Expectation gives the total probability of a result as a measure of desired result



#-----8 answer-----------------------

exp.val = 67.4 / 20
exp.val

#  (1 *a + 2* 110 + 3*95 + 4 * 70 + 5 * 75 + 6 * b)/500 = 3.37
#  (a + 6b + 1160)/500 = 3.37
#  a + 6b = 3.37 * 500 -1160

a.plus.6b = (3.37 * 500) - (2* 110 + 3 * 95 + 4 * 70 + 5 * 75)
a.plus.6b

# a + 110 + 95 + 70 + 75 + b = 500
a.plus.b = 500 - (110 + 95 + 70 + 75)
a.plus.b

val.5b = a.plus.6b - a.plus.b
b = val.5b/5
a = a.plus.b - b
a
b


#-----9 answer-----------------------


#-----10 answer----------------------


