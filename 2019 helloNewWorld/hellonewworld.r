wd="C:/Users/jjo01/Desktop/2019 helloNewWorld"
setwd(wd)
library(ggplot2)
dat=read.csv("home by money and type.csv",nrow=17,header=TRUE)
gg<-ggplot(data=dat,aes(x=dat$�⵵, y=dat$�ټ�������)) 
gg<-gg+ geom_line(color='red')+geom_line(data=dat, aes(x=dat$�⵵, y=dat$����ֿ�.�ǹ���.����),color="green") 
gg<-gg+geom_line(data=dat, aes(x=dat$�⵵, y=dat$�����̿��ǰ�ó))
ggsave("gg.png")
