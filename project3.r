library(readxl)
View(Scooby)
library(tidyverse)
data()
View(mpg)
?mpg
glimpse(mpg)
filter(mpg,cty>=20)
mpg_efficient<-filter(mpg,cty>=20)
View(mpg_efficient)
mpg_metric<-mutate(mpg,cty_metric=0.425144*cty)
glimpse(mpg_metric)
mpg_metric<-mpg %>% 
  mutate(cty_metric=0.425144*cty)
mpg %>% 
  group_by(class) %>% 
  summarise(mean(cty),
            median(cty))
ggplot(mpg,aes(x=cty))+
  geom_histogram()+
  geom_freqpoly()+
  labs(x="City mileage")
