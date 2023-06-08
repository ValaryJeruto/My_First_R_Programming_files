mydata<-read.csv("C:\\Users\\val\\Documents\\Datasets-master\\opsd_germany_daily.txt",header=TRUE,row.names="Date")
mydata
head(mydata)
tail(mydata)
View(mydata)
dim(mydata)
str(mydata)
head(mydata$Date)
row.names(mydata)
mydata["2006-01-01",]
summary(mydata)
mydata2<-read.csv("C:\\Users\\val\\Documents\\Datasets-master\\opsd_germany_daily.txt",header=TRUE)
mydata2
str(mydata2)
x<-as.Date(mydata2$Date)
head(x)
class(x)
str(x)
# create year,month,day columns
year<-as.numeric(format(x,'%Y'))
head(year)
month<-as.numeric(format(x,'%m'))
head(month)
day<-as.numeric(format(x,'%d'))
head(day)
mydata2<-cbind(mydata2,year,month,day)
head(mydata2)
mydata2[1:3,]
head(sample(mydata2,8))
plot(mydata2$year,mydata2$Consumption,type="l",xlab="year",ylab="consumption",lty=1,
     ylim=c(800,1700),xlim = c(2006,2008))
par(mfrow=c(1,1))
plot(mydata2[,2])
plot(mydata2[,2],xlab = "year",ylab="Consumption",type="l",lwd=2,xlim=c(2006,2018),ylim=c(900,2000),
     main="Consumption Graph")
plot(10*diff(log(mydata2[,2])),xlab = "year",ylab="Consumption",type="l",lwd=2,ylim=c(-5,5),
     main="Consumption Graph",col="orange")
library(ggplot2)
ggplot(mydata2,type="o",geom_line(aes(x=year,y=Consumption)))
#solar column
min(mydata2[,4],na.rm=T)
max(mydata2[,4],na.rm=T)
#wind column
min(mydata2[,3],na.rm=T)
max(mydata2[,3],na.rm=T)
#Consumption column
min(mydata2[,2],na.rm=T)
max(mydata2[,2],na.rm=T)
#wind+solar
min(mydata2[,5],na.rm=T)
max(mydata2[,5],na.rm=T)
par(mfrow=c(3,1))
library(zoo)
