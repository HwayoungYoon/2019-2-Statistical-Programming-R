#6.5
dia=read.csv("C:/RR/c6no5.csv",header=T)
dia
attach(dia)
#6.5.a
cor(y1,y2)
#6.5.b
cor(x1,y2)
#6.5.c
cor.test(x1,y2)
#6.5.d
tdia=table(dia$y2>=90)
names(tdia)=c("y2>=90","y2<90")
pie(tdia)
#6.5.e
plot(y1,y2)
#6.5.f
plot(x1,y2)
#6.5.g
cor(dia)

#7.2
li=c(25,16,44,62,36,58,38)
#7.2.a
mean(li)
#7.2.b
var(li)
#7.2.c
sd(li)
#7.2.d
boxplot(li)

#7.5
x1=c(51,27,37,42,27,43,41,38,36,26,29,35)
x2=c(36,20,22,36,18,32,22,21,23,31,20,30)
#7.5.a
mean(x1); var(x1); sd(x1)
mean(x2); var(x2); sd(x2)
#7.5.b
t.test(x1,mu=30)
#7.5.c
t.test(x2,mu=25)

#7.8
prop.test(x=50,n=200,p=0.2)

#7.9
xx=c(3000,2000)
xn=c(5500,3000)
prop.test(xx,xn,alt="less")

#7.10
ph1=c(14,15,16,13,12,17,15,13,16,13)
ph2=c(8,11,9,8,10,11,7,9,6,8,7,10)
#7.10.a
mean(ph1); sd(ph1)
#7.10.b
mean(ph2); sd(ph2)
#7.10.c
var.test(ph1,ph2)
t.test(ph1,ph2,var.equal=T)

#7.11
h1=c(67,79,57,66,71,78)
h2=c(42,61,64,76,45,58)
var.test(h1,h2)
t.test(h1,h2,var.equal=T)

#7.12
b1=c(2.1,5.0,1.4,4.6,3.0,4.3,3.2)
b2=c(1.9,0.5,2.8,3.1,2.7,1.8)
var.test(b1,b2)
t.test(b1,b2,var.equal=T)

#7.14
E=c(90,88,78,65,78,60,89,73)
F=c(80,78,75,69,73,62,79,70)
t.test(E,F,paired=T)

#8.1
Bg=matrix(c(30,30,10,10), nr=2)
#8.1.b
chisq.test(Bg)

#8.2
Cg=matrix(c(30,30,20,10),nc=2)
#8.2.b
chisq.test(Cg)

#8.5
day=c(53,42,51,45,36,37,65)
pd=rep(1/7,7)
chisq.test(day,p=pd)

#8.6
sb=matrix(c(60,5,10,20),nc=2)
#8.6.a
chisq.test(sb)
#8.6.b
chisq.test(sb)$expected

#8.9
h=matrix(c(27,7,18,10),nc=2)
#8.9.a
h*100/sum(h)
#8.9.b
chisq.test(h)$expected
#8.9.c
chisq.test(h)

#8.10
pre=matrix(c(115,169,225,395,221,125),nc=2)
chisq.test(pre)

#8.11
co=matrix(c(24,32,54,20,30,60,50,20,15),nc=3)
chisq.test(co)