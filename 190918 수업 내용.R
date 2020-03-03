#앞쪽 코드 날라감..


#p.60 3.1
x=(0:20)*pi/10
y=cos(x)
plot(x,y)
ysin=sin(x)
plot(x,ysin)

par(mfrow=c(2,1))
x=(0:20)*pi/10
y=cos(x)
ysin=sin(x)
plot(x,y);text(3,1,"cos(x)")
plot(x,ysin);text(5.5,0,"sin(x)")

x=(0:20)*pi/10
y=cos(x);ysin=sin(x);ysin2=sin(x)^2
par(mfrow=c(1,2))
yy=cbind(y,ysin,ysin2)
matplot(x,yy,type="pll",pch="*")
plot(x,y)
lines(x,ysin,type="p",pch="*")
lines(x,ysin2)

#p.62 3.2
par(mfrow=c(2,2))
plot(x,y,type="p")
plot(x,y,type="l")
plot(x,y,type="b")
plot(x,y,type="p",pch=19,col="red")

plot(c(0,7),c(1,7),type="n",ylab=" ",xlab=" ",axes=FALSE,main="line type")
for(i in 1:6){lines(c(0,7),c(i,i),lty=i)
axis(2,at=i,labels=paste("lty=",i),las=1)}

op=par(mfrow=c(2,2))
plot(x,y,type="b",main="cosine graph",sub="type=b")
plot(x,y,type="o",las=1,bty="u",sub="type=o")
plot(x,y,type="h",bty="7",sub="type=h")
plot(x,y,type="s",bty="n",sub="type=s")
par(op)



data(cars)
attach(cars)
mean(speed)
mean(dist)
par(mfrow=c(2,2))
plot(speed,dist,pch=1)
abline(v=15.4)
plot(speed,dist,pch=2)
abline(h=42.98)
plot(speed,dist,pch=3)
abline(-17,4)
plot(speed,dist,pch=8)
abline(v=15.4)
abline(h=42.98)
