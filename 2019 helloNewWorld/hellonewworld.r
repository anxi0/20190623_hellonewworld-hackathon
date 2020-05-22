wd="C:/Users/jjo01/Desktop/2019 helloNewWorld"
setwd(wd)
library(ggplot2)
dat=read.csv("home by money and type.csv",nrow=17,header=TRUE)
gg<-ggplot(data=dat,aes(x=dat$년도, y=dat$다세대주택)) 
gg<-gg+ geom_line(color='red')+geom_line(data=dat, aes(x=dat$년도, y=dat$비거주용.건물내.주택),color="green") 
gg<-gg+geom_line(data=dat, aes(x=dat$년도, y=dat$주택이외의거처))
ggsave("gg.png")
