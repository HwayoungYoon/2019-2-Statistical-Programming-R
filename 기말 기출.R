#1
x11=c(177,179,157,186,170,158,150)
x12=c(140,133,134,156,140,135,120)
#1.1
mean(x11); var(x11); sd(x11)
mean(x12); var(x12); sd(x12)
#1.2, 1.3
var.test(x11,x12)
#1.4, 1.7
t.test(x11, x12, var.equal=T)
#1.5, 1.6
t.test(x12,mu=140)
#1.8
bx11=mean(x11); bx12=mean(x12)
n11=7; n12=7
(sum((x11-bx11)^2)+sum((x12-bx12)^2))/(n11+n12-2)

#2
x21=c(0.43,0.26,0.56,0.53,0.70,0.71,0.65,0.58,0.46,0.72)
x22=c(0.41,0.23,0.39,0.401,0.65,0.69,0.63,0.52,0.41,0.62)
t.test(x21, x22, paired=T, alt="greater")

#3
data(Puromycin)
attach(Puromycin)
head(Puromycin)
#3.1
cor(conc,rate)
#3.2
cor.test(conc,rate)
#3.3, 3.4, 3.8
x31=lm(rate ~ conc)
summary(x31)
#3.5
predict(x31,newdata=data.frame(conc=c(0.07,0.9)))
#3.6
sum((conc-mean(conc))*(rate-mean(rate)))/(length(conc)-1)
#3.7, 3.8
ly=log(rate)
x32=lm(ly ~ conc)
summary(x32)
#3.9
x33=lm(rate ~ 0 + conc)
summary(x33)
#3.10
predict(x33,newdata=data.frame(conc=1.5))
#3.11
xP1=Puromycin[(state=="treated"),]
x34=lm(rate ~ conc, data=xP1)
summary(x34)
#3.12
xP2=Puromycin[(state=="untreated"),]
x35=lm(rate ~ conc, data=xP2)
summary(x35)
#3.13
aggregate(rate,list(state),FUN="mean")
aggregate(rate,list(state),FUN="var")
aggregate(rate,list(state),FUN="sd")
length(xP1[(xP1$rate >= 150),]$rate)/length(xP1$rate)
length(xP2[(xP2$rate >= 150),]$rate)/length(xP2$rate)

#4
x41=c(440,260,200,100)
x42=c(0.4,0.2,0.2,0.2)
#4.1
x41/sum(x41)
#4.2
x4=x42*sum(x41)
x4
chisq.test(x41,p=x42)$expected
#4.3
(x41-x4)/sqrt(x4)
chisq.test(x41,p=x42)$residuals
#4.4
chisq.test(x41,p=x42)

#5
x5=matrix(c(138,64,83,67,64,84),nc=3)
x5
#5.1
chi5=chisq.test(x5)
chi5
#5.2
chi5$expected #±â´ëµµ¼ö
#5.3
x5-chi5$expected #ÀÜÂ÷
#5.4, 5.5
chi5$residuals #Ç¥ÁØÈ­ÀÜÂ÷
#5.6
prop.test(x=138, n=285, p=0.6, alt="greater")
#5.7
prop.test(x=64, n=215, p=0.5, alt="less")
#5.8
prop.test(x5[,1],rowSums(x5))

#6
#6.1
teach=read.csv("C:/RR/teach.csv", header=T)
head(teach,3)
attach(teach)
#6.2
var.test(score~method)
#6.3
t.test(score~method,var.equal=T)
#6.4
group=as.numeric(method=="B")+1
cbind(teach,group)
#6.5
table(method)

#7
x=c(60,90,100,200,500)
px=c(1/3,1/6,1/6,2/9,1/9)
#7.1
ex=sum(x*px)
ex
#7.2
sum((x-ex)^2*px)
#7.3
sum(x^2*px)


#8
root=function(a,b,c){
if (b^2-4*a*c>=0){
x1=(-b+sqrt(b^2-4*a*c))/(2*a)
x2=(-b-sqrt(b^2-4*a*c))/(2*a)
x=c(x1,x2)
}
if (b^2-4*a*c<0) {
x=c("no real root")
}
return(list(x))
}
a=2; b=3; c=1
root(a,b,c)

#9.1
biv=function(x,y){
mx=mean(x) ; vx=var(x) ; sx=sd(x)
my=mean(y) ; vy=var(y) ; sy=sd(y)
coxy=cor(x,y)
absxy=abs(mx-my)
prov=vx/vy
cv=sx/mx
out=lm(y ~ x) ; beta=out$coef
maxres=max(out$residuals)
return(list(mx,vx,sx,my,vy,sy,coxy,absxy,prov,cv,beta,maxres))
}
#9.2
data(Puromycin)
attach(Puromycin)
head(Puromycin)
x=Puromycin$conc
y=Puromycin$rate
biv(x,y)



##ÇÇ¾î½¼ÀÜÂ÷: $residuals
##