x<-c(132,129,120,113.2,105,92,84,83.2,88.4,59,80,81.5,71,69.2)
y<-c(46,48,51,52.1,54,52,59,58.7,61.6,64,61.4,54.6,58.8,58)
medx<-mean(x)
medy<-mean(y)
sxy<-cov(x,y)
vx<-var(x)
pend<-sxy/vx
ordo<-medy-(pend*medx)
datoss<-data.frame(x,y)
require(ggplot2)
ggplot(datoss,aes(x=x,y=y))+geom_point()+geom_smooth(method = "lm")
az<-c(0:150)
recta<-pend*az+ordo

