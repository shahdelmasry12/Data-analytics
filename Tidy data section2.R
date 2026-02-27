#Statistics 
vector<-1:11
vector
mean(vector)
median(vector)
var(vector)
sd(vector)
summary(vector) #Show Quartiles of data(min,Q1,mean,Q3(median),max)
#Tidy data
library("tidyverse")
table1
#Each variable must have it's own column
table2
table2 %>% spread(key=type,value=count)
#Each observation must have it's own row
table4a
table4a %>% gather("1999","2000",key=year,value=cases)
table3
table3 %>% separate(rate,into=c("cases","population"),sep="/")
#unite tow columns into one column 
table5
table5 %>% unite(Years,century,year,sep="") %>% separate(rate,into=c("cases","population"),sep="/")
