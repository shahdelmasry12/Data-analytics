#R as a calculator
4+3
5*3
5-2
24/2
#Define and assign a variable 
x<-10
#To print variable's value
x
print(x)
#To show the data type of variable
class(x)
#List the variables in the current work space(ls)
ls()
objects()
#Create Vectors
vector1<-c(1,2,3,5,6) #c-->concatonation
vector1
vector2<-1:4
vector2
vector3<-seq(1,9,by=2)
vector3
recplic_var<-rep(1:4,c(1,2,1,2))
vector1+vector3
#Accessing vectors' values(indexing)
vector1[1]
#Logical Vectors
logic_vector1<-c(TRUE,TRUE,FALSE,FALSE)
logic_vector2<-c(TRUE,FALSE,TRUE,FALSE)
logic_vector1 & logic_vector2
logic_vector1 | logic_vector2
#Subscripts as logical expressions
logic_vector3<-1:6
logic_vector3>2
logic_vector3[logic_vector3>2]
#Factor
vector4<-c("A","B","C","A","B","A")
factor1<-as.factor(vector4)
factor1
summary(factor1) #Display each value with it's No.frequently 
#List
list<-list(husband="Fred",wife="Mary",no.childern=3,child.ages=c(4,7,9))
list
str(list)
# Accessing List's object (by format $)
list$wife
## Accessing List's object (by name)
list["wife"]
## Accessing List's object (by position)
list[1]
#Create Data Frame
col1<-c(4,6,30,50,60)
col2<-c(1,2,3,4,5)
data_set<-data.frame(Age=col1,Order=col2)#create data frame
print(data_set) #print data
data_set[,2] #show next column with all rows
data_set[2,] #show next row with all columns
data_set[,] #show all columns and rows
data_set[,"Age"] #show all rows for age column
head(data_set) #display first 10 or 20 Rows
head(data_set,2)# display First 2 Rows
names(data_set)# display names of Feature or columns in data set
dim(data_set)# display No.Rows and No.Columns
#install packages
install.packages("tidyverse")
#imports library 
library("tidyverse")
#import files
df<-read.csv(file.choose() )
ncol(df) #show no.columns
nrow(df) #show no.rows
str(df)# show each column with it's data type and data form at it
df2<-read.delim(file.choose(),header = T) #to read text file and display the header of data (header default=True)
typeof(df2) #To show type o data
