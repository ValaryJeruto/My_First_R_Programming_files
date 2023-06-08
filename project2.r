x=30L
typeof(x)
if(is.integer(x)){print("x is an integer")}
if(is.character(x)){print("x is an integer")} else{"x is not a character"}
v<-c("hello world")
v
typeof(v)
count<-2
while (count<5){
  print(v)
  count=count+1}
names<-c("vj","aj","dj","sj")
names
for (i in names){
  print(i)
}
df<-mtcars
df
#functions
normalDist<-rnorm(1000,0,1)
mean(normalDist)
hist(normalDist)
hist(normalDist,breaks=50)
expoValue(normalDist)
#dplyr
library(dplyr)
library(nycflights13)
View(flights)
f1=filter(flights,month==07,day==2)
f1
head(flights[flights$month==09 & flights$day==2 & flights$origin=='LGA',])
slice(flights,1:5)
over_delay<-mutate(flights, overral_delay=arr_delay-dep_delay)
over_delay
View(over_delay)
summarise(flights,avg_air_time=mean(air_time,na.rm=T))
sample_n(flights,15)
result<-arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))
result
df_mpg_hp_cyl<-df %>% select(mpg,hp,cyl)
head(df_mpg_hp_cyl)
#tidyr
library(tidyr)
n=10
wide=data.frame(
  ID=(1:n),
  Face.1=c(411,723,325,456,579,612,709,513,527,379),
  Face.2=c(123,300,400,500,600,654,789,906,567,413),
  Face.3=c(1457,1000,569,896,956,2345,780,599,1023,678)
)
View(wide)
long<-wide %>% gather(Face,ResponseTime,Face.1:Face.3)
View(long)
long_separate<-long %>% separate(Face,c("Target","Number"))
View(long_separate)
long_unite<-long_separate %>% unite(Face,Target,Number,sep=".")
View(long_unite)
back_to_wide=(long_unite %>% spread(Face,ResponseTime))
View(back_to_wide)
library(datasets)
plot(ChickWeight)
library(MASS)
plot(UScereal$sugars,UScereal$calories)
x=c(33,45,70,110)
labels=c("soap","Detergent","oil","shampoo")
pie(x,labels)
pie(x,labels,main="City pie chart",col=rainbow(length(x)))
library(plotrix)
x=c(33,45,70,110)
labels=c("soap","Detergent","oil","shampoo")
pie3D(x,labels=lbl,explode=0.1,main="Pie chart of Countries")
data("airquality")
View(airquality)
plot(airquality)
library(ggplot2)
attach(mtcars)
p1<-ggplot(mtcars,aes(factor(cyl),mpg))
p1+geom_boxplot()
p1+geom_boxplot()+coord_flip()
p1+geom_boxplot(aes(fill=factor(cyl)))
library(plotly)
p<-plot_ly(data=mtcars,x=~hp,y=~wt,marker=list(size=10,color='rgba(255.182,193,.9)',line=list()

                                               