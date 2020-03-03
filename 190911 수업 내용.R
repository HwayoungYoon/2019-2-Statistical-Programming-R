# p.21 2.4 
k_score=c(96,80,76,96,88,75,78,89,92,70)
k_score
k_score_2=c(67,83,96,90,85,75,82,89,92,75)
k_score_2
score=c(k_score,k_score_2)
score

# p.22 2.4.1
y=c(1,5,7) #숫자형
y
family=c("kim","lee","chulsu","sunhee") #문자형
names(family)=c("father","mother","son","daughter")
family
x=c("kim",2,3)
x
c(T,F,F,F,T,T,F) #논리값
x=-3:3
x
w=x<2
w
sum(w)

# p.23 2.4.2   (주석 추가 필요함)
fact=c(1,2,3)
fact
fact1=as.factor(fact)
fact1
f.log=as.logical(fact)
f.log
exp.fact=factor(c("exp1","exp2"))
fact2=as.numeric(exp.fact)
fact2

# p.24 2.5.1
a=c(-2.456,3.6789,5.23445676)
ceiling(a) #올림
floor(a) #내림
trunc(a) #버림
round(a) #반올림
aa=round(a, digits=2) #소수 2째 자리까지 반올림
aa

# p.25 2.5.2
k_score=c(96,80,76,96,88,75,78,89,92,70)
sum(k_score)
mean(k_score)
max(k_score)
min(k_score)
range(k_score) #범위
var(k_score)
sd(k_score)
median(k_score)
rank(k_score) #순위
length(k_score) #벡터의 길이

# p.25 2.5.3
x=cbind(x1=3,x2=c(4:1,2:8))
dimnames(x)[[1]]=letters[1:11]
x
apply(x,2,mean)
row.sums=apply(x,1,sum)
col.sums=apply(x,2,sum)
row.sums
col.sums

# p.26 2.5.4
library(MASS)
data(cabbages)
attach(cabbages)
cabbages

mean(cabbages$HeadWt) #attach 안했을 때
attach(cabbages) #attach 했을 때
mean(HeadWt)

cabbages.mean=aggregate(HeadWt,list(Cult,Date),FUN="mean")
names(cabbages.mean)=c("Cult","Date","Mean of HeadWt")
cabbages.mean

# p.27 2.5.5
cabbages1=cabbages[(cabbages$Date=="d16"),]
cabbages1
cabbages2=cabbages[(cabbages$VitC>=50),]
cabbages2
cabbages3=cabbages[(cabbages$Date=="d16")&(cabbages$VitC>=60),]
cabbages3

# p.28 2.5.6
id=c(1,2,3,4,5)
a=c(4,9,7,2,8)
da=cbind(id,a)
da

a_s=sort(a)
a_s

da_s=da[order(a),]
da_s

x=c(11,24,24,30,30,30)
rank(x)
order(x)

# c.f. cabbages 재배열
recabbages1=cabbages[order(cabbages$HeadWt),]
recabbages1
recabbages2=cabbages[order(cabbages$HeadWt,decreasing=TRUE),]
recabbages2

sort(HeadWt)
sort(HeadWt,decreasing=TRUE)

# p.29 2.6
1:10
seq(1,10)
rev(1:10)
10:1
seq(1,10,by=2)
seq(from=5,to=22,by=2)
rep(1,10)
rep(1:3,3)
rep(c(2,3,5),4)
a=rep(0,12)
a

# p.31 2.7
x=c(100,120,130,124,150,167,170,163,160,155,145,157)
x[1]
x[9]
x[1:3]
x[c(6,7,9)]
names(x)=seq(1,12)
x
xm1=x[-1]
xm1
xm2=x[-c(1,12)]
xm2
xx=x[x!=150]
xx
xp=x[x>=150]
xp

# 홀수달 매출의 평균
mean(x[seq(1,12,2)])
mean(x[c(1,3,5,7,9,11)])

# p.33 2.8
a=c(1,3,5)
a
b=matrix(1:6,nrow=2)
b
d=matrix(1:6,ncol=2)
d

# p.34 2.8.1
x=c(1,2,3,4,5)
y=c(-1,-2,-3,-4,-5)
x+y
t(x)%*%y
x%*%t(x)
x*y
x*x
temp=c(x,y)
temp
temp1=cbind(x,y)
temp1
temp2=rbind(x,y)
temp2
temp1*temp1
t(temp1)
t(temp1)%*%temp1
dim(temp1)

# p.36 2.8.2
a1=c(34.74,15.66)
a2=c(15.66,378.6)
s=rbind(a1,a2)
s
library(MASS)
solve(s)

# p.38 2.9
g=array(1:24,c(4,3,2))
g
g[1,,]
g[,,1]
g[,1,]
x=array(1:120,c(5,4,3,2))
x

# p.39 2.10.1
for(i in 1:4)print(i)

start=100
end=200
isum=0
for(i in start:end) isum=isum+i
print(isum)

x=c(5,6,7,8)
n=length(x)
xx=rep(0,n)
for(j in 1:n) {xx[j]=x[j]^2
print(xx[j])}

x=c(5,6,7,8)
n=length(x)
xx=rep(0,n)
for(j in 1:n) {xx[j]=x[j]^2}
print(xx[j])

# p.41 2.11
x=c(1,-2,-3,4,5)
pos=rep(0,5)
for(i in 1:5) {if(x[i]>0) pos[i]=1 else pos[i]=0}
print(pos)