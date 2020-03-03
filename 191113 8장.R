black=6
green=4
orange=8
blue=13
red=7
yellow=8

y=c(6,4,8,13,7,8)
pr=rep(1/6,6)
chisq.test(y,p=pr)

6+4+8+13+7+8

46/6

sum((y-46/6)^2/(46/6))


#연습문제 3
x=matrix(c(40,20,30,30,35,45,20,40),nc=4)
chisq.test(x)
Oi=apply(x,1,sum)
Oj=apply(x,2,sum)
(60*125)/260
(80*125)/260
(60*135)/260
(80*135)/260

(60*125)/260*3+(80*125)/260+(60*135)/260*3+(80*135)/260

xe=matrix(c(28.84615,31.15385,28.84615,31.15385,38.46154,41.53846,28.84615,31.15385),nc=4)
(x-xe)^2/xe
sum((x-xe)^2/xe)


#연습문제
#7
PF=read.csv("C:/RR/PF.csv",header=T)
tPF=table(PF)
chisq.test(tPF)
#8
x8=c(20,55,30)
pr8=rep(1/3,3)
chisq.test(x8,p=pr8)