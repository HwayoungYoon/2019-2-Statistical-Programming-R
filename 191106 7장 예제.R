 #191106

#ex7.1(p.150)
x=c(8.30,9.50,9.60,8.75,8.40,9.10,8.15,8.80)
t.test(x, mu=8.5)
t.test(x, mu=8.5, alt="greater")
t.test(x, mu=8.5, alt="less")

#ex7.2(p.152)
z=(mean(x)-8.5)/(1/sqrt(8))
pz=pnorm(z,0,1)
pvalue=2*pnorm(-abs(z))
pvalue





#ex7.3(p.155)
x1=c(1.1,2.3,4.3,2.2,5.3)
x2=c(2.3,4.3,3.5)
t.test(x1,x2,var.equal=T,alt="two.sided")
t.test(x1,x2,var.equal=F,conf.level=0.95)
t.test(x1,x2,var.equal=T,alt="greater")
t.test(x1,x2,var.equal=T,alt="less")

#ex7.4(p.157)
dd=read.csv("C:/RR/method.csv",header=T)
attach(dd)
t.test(x~method,var.equal=T)
t.test(x~method,var.equal=F)
var.test(x~method)

#ex7.5(p.159)
x1=c(1.1,2.3,4.3,2.2,5.3)
x2=c(2.3,4.3,3.5)
var.test(x1,x2)

#ex7.6(p.161)
pre=c(77,56,64,60,58,72,67,78,67,79)
post=c(99,80,78,65,59,67,65,85,74,80)
t.test(post,pre,paired=T)

#ex7.7(p.163)
prop.test(x=110,n=150,p=0.85) #alt="two.sided"가 디폴트
prop.test(x=110,n=150,p=0.85,alt="less")

#ex7.8(p.165)
phat=c(100/300,170/400)
n=c(300,400)
prop.test(n*phat,n,alt="two.sided")