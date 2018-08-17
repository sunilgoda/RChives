#-------basics
1+2
(1+2)^3/4
sqrt(121)
log(16)

#-------
x <-10
print(x)
y =11
print(x)
z = x+y
print(z)

#objects -                                         datatypes
#   vectors                                           character  
#   matrices                                          numeric
#   dataframe                                         logical  
#   list


#numeric vector
experience <- c(2,4,5,8)     #c -concatenate
length(experience)

#char vector
city <- c('Hyd','Vij','Hyd','Chn')
print(city)

#logical vector
exp =c(TRUE,FALSE,T,F)
exp

#numeric matrix
1:15 
marks = matrix(1:15,nrow=3)
marks  #populated column-wise data

marks = matrix(1:15,nrow=3,byrow=T)  #populated row wise
marks

dim(marks)   #find dimension of matrix
ncol(marks) #find columns of matrix
nrow(marks) #find rows of matrix


#combine vectors
age = c(10,20,30,40,50)
exp3 = c(1,2,3,4,5)  #goes circular if lengths of vectors are not equal
cbind(age,exp3)   #column binding
rbind(age,exp3)   #row binding

names =c('sun','moon','sun','moon','sun')
matrix(cbind(age,exp3,names),ncol=3) #all values get converted to character type


#dataframes - can have diff types of datatypes
df1 = data.frame(cbind(age,exp3,names))
maritalStatus = c(T,F,T,T,F)
df2 = data.frame(age,exp3,names,maritalStatus)

dim(df1)
dim(df2)

#lists - can conttain diff types of datatypes
print('list starts here')
list1 = list(age,df2,marks,4)
list1
list1[[2]]  #access 2nd element
list1[[2]][2,3]

list2 = list(list1,5)
list2


#vector manipulation
age1 = c(10,20,30,40,50)
age1>30
sum(age1>30)  #find count of elements > 40

age2 = age[age>30] #applying the filter and create new vector
age2


#create numbers 1 to 95
#create another vector from above with each value > 56
vec1 =c(1:95)
vec2=vec1[vec1 >56]
vec2

#what is size of new vector
length(vec2)

#matrix operations---
#get 2nd col
marks[,2]

#get 3rd row
marks[3,]

# 2nd row,4th eleement
marks[2,4]

#get elements with values  > 10
marks[marks > 10]

#dataframe operations---
df2

#access columns of dataframe
df2$names
df2$maritalStatus
df2[2]
df2[,2]

#summary of dataframe
summary(df2)

#top 3 records
head(df2,3)

#bottom 3 records
tail(df2,3)

#structure of dataframe
str(df2)

#find elements with age > 32 and from names=sun
df2[df2$age > 32 & df2$names=='sun',]
df2[df2$names=='sun',]

df2[age > 32 & names=='sun',]

#find maritalstatus of record with age > 32 and from names=sun 
df2[df2$age > 32 & df2$names=='sun',][4]


#create data frame of 5 students  - age,gender,passed/failed -logical vector,city
#filter thr rows where students are from a city ='A'
age2=c(20,21,23,25,20,21)
gender=c('Male','Female','Male','Female','Male','Female')list
passed=c(T,F,T,T,F,T)
city1=c('A','B','A','C','D','B')
students=data.frame(age2,gender,passed,city1)
filter_students = students[students$city1=='A',]

head(students,3)
tail(students,2)

dim(students)
dim(filter_students)

# rm(list=ls(all=T)) #--------------list out all elements in global env and remove them

objects()
