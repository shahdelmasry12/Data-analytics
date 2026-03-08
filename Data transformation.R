#Data transformation
library(nycflights13)
library(tidyverse)
#Flights data set
df_flight<-flights
flights
#used function
#filter--> allows you to subset observation based on them values(return subset data based on conditions)
#filter(data set,first condition,second condition) we can write at least one condition
filter(df_flight,month==1,day==1)#Return all flights that complete on 1/1
filter(df_flight,month==12,day==25)#Return all flights that complete on 25/12
#Using logical operator with filter function
#Using OR (|)
filter(df_flight,month==11|month==12)#Return all flights that complete on month 12 or(|) month 11
#Another way to using OR
filter(df_flight,month %in% c(11,12))#Return all flights that complete in month 12 or(|) month 11
#Using NOT(!)
filter(df_flight,!(arr_delay>120 | dep_delay>120))#Return all flights that it's arr_delay not greater than 120 |  dep_delay not greater than 120
#Missing values#
NA>5 #Return NA ---> any operation on NA return NA
is.na(df_flight) #Return False or True
#Using Arrange function
arrange(df_flight,year,month,day)#sort data by defult(asc) based on Variables (year,month,day)
arrange(df_flight,desc(month))#sort data desc based on Variables (month)
#Using Select Function
select(df_flight,year,month,day) #return Variables(columns) year and month and day
select(df_flight,year:day)#Return all columns between year and day(inclusive) 
select(df_flight,-(year:day))#Return all columns except those from  year to day(inclusive)
select(df_flight,contains("time"))#Return all columns  that contain the time word 
rename(df_flight,Dep_time=dep_time)#To change name of column (,New name=old name)
select(df_flight,air_time,time_hour,everything())#To appear a specific columns at start always (when assigned to variable )
mutate(df_flight,gain=dep_delay-arr_time,speed=distance/air_time*60)#To create new columns with operations
data5<-transmute(df_flight,gain=dep_delay-arr_time,speed=distance/air_time*60)#To create new columns at data set by operations on another data set
summarise(df_flight,dalay=mean(dep_delay,na.rm=TRUE))#Return the mean of dep_delay at column delay and if in dep_delay  NA values delete them 
by_day<-group_by(df_flight,year,month,day)#grouped data by columns(year,month,day) group_py automatics remove NA values
summarise(by_day,dalay=mean(dep_delay,na.rm=TRUE))
