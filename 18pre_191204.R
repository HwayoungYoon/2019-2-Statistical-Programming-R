# 기출 code
#1
x<-c(177,179,157,186,170,158,150)
y<-c(140,133,134,156,140,135,120)
mean(x)
mean(y)
sd(x)
sd(y)
var(x)
var(y)
v<-var.test(x,y,conf.level=0.95)
v$conf.int

t.test(x,y,var.equal=T)

tt<-t.test(y,mu=140)
tt

yy<-t.test(y,mu=mean(y))
yy
yy$conf.int

t.test(x,y,var.equal=T)$conf.int

n1=7;n2=7
S=(sum((x-mean(x))^2) + sum((y-mean(y))^2))/(n1+n2-2)
S


#2번
bottom<-c(0.43,0.26,0.56,0.53,0.71,0.71,0.65,0.58,0.46,0.72)
bottom<-c(.43,.26)
bottom

surface<-c(.41,.23,.39,.401,.65,.69,.63,.52,.41,.62)
t.test(bottom,surface,paired=T,alt="greater")


#3번
data(Puromycin)
head(Puromycin)
attach(Puromycin)

cor(conc,rate)

cor.test(conc,rate)

p<-lm(rate~conc)
summary(p)

pred_rate<-predict(p,newdata=data.frame(conc=c(0.07,0.9)))
pred_rate

n<-nrow(Puromycin)
n
Sxy<-sum((x-mean(x))*(y-mean(y)))/(n-1)
Sxy

ly<-lm(log(rate)~log(conc))
summary(ly)

y0<-lm(rate~0+conc)
summary(y0)

pred_r<-predict(y0,newdata=data.frame(conc=1.5))
pred_r


tr<- Puromycin[(Puromycin[,3]=="treated"),]
tr<- Puromycin[(Puromycin$state=="treated"),]
tr
t1<-lm(rate~conc,data=tr)
summary(t1)

untr<-Puromycin[(Puromycin$state=="untreated"),]
untr
t2<-lm(rate~conc,data=untr)
summary(t2)

mean(tr$rate)
mean(untr$rate)
var(tr$rate)
var(untr$rate)
sd(tr$rate)
sd(untr$rate)

rate1<-nrow(tr[(tr$rate>=150),])/length(tr$rate)
rate1
tr

nrow(tr[(tr$rate>=150),])
length(tr$rate)

rate2<-nrow(untr[untr$rate>=150,])/length(untr$rate)
rate2
untr

#4번
observed<-c(440,260,200,100)
ss<-observed/sum(observed)
ss
p<-c(0.4,0.2,0.2,0.2)
expected<-sum(observed)*p
expected

cc<-chisq.test(observed,p=p)
cc
attributes(cc)
cc$expected
cc$residuals
pear<-(observed-expected)/sqrt(expected)
pear

#5번
m<-c(138,83,64)
b<-c(64,67,84)
tex<-rbind(m,b)
tex
chisq.test(tex)

t<-matrix(c(138,64,83,67,64,84),nr=2)
t
chi<-chisq.test(t)
chi$expected
t-chi$expected
chi$residuals

prop.test(x=138,n=285,p=0.6,alt="greater")
prop.test(x=64,n=215,p=0.5,alt="less")

f<-c(138,64)
n<-c(285,215)
prop.test(f,n)
