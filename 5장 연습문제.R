#5장 연습문제

#1
data(InsectSprays)
attach(InsectSprays)
InsectSprays
#1.a
table(spray)
pie(table(spray))
#1.b
mean(count)
#1.c
s.count=aggregate(count,list(spray),FUN="sum")
names(s.count)=c("spray","Sum of count")
s.count

xtabs(count~spray)
pie(xtabs(count~spray))

#2.a
rl=c(735,320,325,392,524,450,1459,135,465,600,330,336,280,315,870,
906,202,329,290,1000,600,505,1450,840,1243,890,350,407,286,280)
mean(rl)
median(rl)
#2.b
var(rl)
sd(rl)
IQR(rl)
#2.c
quantile(rl,c(0.15,0.45,0.8))
#2.d
hist(rl)
#2.e
boxplot(rl)

#4.a
n=20
for(i in 1:10){
 y=runif(n,0,1)
 m=mean(y)
 s=sd(y)
 cat("\n",m,s)
}
#4.b
n=20
sn=sqrt(n)
for(i in 1:10){
 y=runif(n,0,1)
 m=mean(y)
 s=sd(y)
 lower=m-2*s/sn
 upper=m+2*s/sn
 cat("\n",lower,upper)
}

#10.a
80/200
#10.b
120/200










#for문 값 저장
n=20
sn=sqrt(n)
my=rep(NA,10)
sy=rep(NA,10)
lo=rep(NA,10)
up=rep(NA,10)
for(i in 1:10){
 y=runif(n,0,1)
 m=mean(y) ; my[i]=m
 s=sd(y) ; sy[i]=s
 lower=m-2*s/sn ; lo[i]=lower
 upper=m+2*s/sn ; up[i]=upper
}








#
lower=mean(x)-1.96*sd(x)/sqrt(n)
upper=mean(x)+1.96*sd(x)/sqrt(n)
print(lower)
print(upper)
cat("\n","C:/",lower,upper)