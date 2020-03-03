#191002 ล๋วมR

#p.110
m=50
mx<-rep(0,m)
for(k in 1:length(n.value)) {
n<-n.value[k]
for(i in 1:m) {
mx[i] <- mean(runif(n,0,1))
} #i
} #k

#p.95 ex4.1
pnorm(-1,0,1,lower.tail=T)

x<-seq(-5,5,length=200)
y=dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")
x=seq(-5,-1,length=100)
y=dnorm(x,0,1)
polygon(c(-5,x,-1),c(0,y,0),col="gray")

#p.96 ex4.2
pnorm(-1,0,1,lower.tail=F)

x=seq(-5,5,length=200)
y=dnorm(x,0,1)
plot(x,y,type="l",lwd=2,col="red")
x=seq(-1,5,length=100)
y=dnorm(x,0,1)
polygon(c(-1,x,5),c(0,y,0),col="lightgray")

#p.96 ex4.3
rnorm(1,100,16)

#p.96 ex4.4
rnorm(5,280,10)
pnorm(270,280,10)
qnorm(0.10,280,10,lower.tail=T)
qnorm(0.10,280,10,lower.tail=F)
qnorm(0.90,280,10,lower.tail=T)

#p.97 ex4.5
qnorm(0.05,0,1)
qnorm(0.95,0,1)
dnorm(0,0,1)
x=rnorm(100)
hist(x,probability=T,col=gray(.9),main="normal mu=0,sigma=1")
curve(dnorm(x), add=T)

#p.100 ex4.6
par(mfrow=c(2,2))
x=rt(1000,df=5)
y=dt(x,df=5)
plot(x,y,sub="t-dist")
x=rnorm(1000,0,1)
y=dnorm(x,0,1)
plot(x,y,sub="standard normal dist")
x=rexp(1000,rate=1)
y=dexp(x,rate=1)
plot(x,y,sub="exponential dist")
x=rpois(1000,lambda=3)
y=dpois(x,lambda=3)
plot(x,y,sub="Poisson dist")

#p.102 ex4.7
bin=dbinom(0:5,10,0.3)
bin
names(bin)=0:5
bin

x=c(1,6,8)
pbinom(x,10,0.3)

cump=c(0.2,0.5,0.8)
qbinom(cump,10,0.3)

rbinom(5,10,0.3)

#p.103 ex4.8
ppois(1:4,3)
qpois(0.2,3)
rpois(10,3)
ppois(3,3)
ppois(3,3,lower.tail=T)
1-ppois(3,3)
ppois(3,3,lower.tail=F)
ppois(5,3)-ppois(2,3)
1-ppois(5,3,lower.tail=T)
ppois(5,3,lower.tail=F)
plot(table(rpois(100,3)),type="h",col="red",lwd=10,main="rpois(100,3)")




#p.110
m=50
mx<-rep(0,m)
n.value=c(5,10,15,30,50)

plot(0,0,type="n",xlim=c(0,1),ylim=c(0,10),ylab="density",xlab="mx",main="uniform mean to normal")

for(k in 1:length(n.value)) {
n<-n.value[k]
for(i in 1:m) {
mx[i] <- mean(runif(n,0,1))
}
}
