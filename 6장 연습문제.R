#6.1
matrix(c(54,3,7,12),nc=2)
rbind(c(54,7),c(3,12))
cbind(c(54,3),c(7,12))




##연습문제
#1
bb=read.csv("C:/RR/break.csv", header=TRUE)
#1.a
table(bb[,c(1,2)])
#1.b
aggregate(blood,list(gender),FUN="mean")
#1.c
aggregate(blood,list(fracture),FUN="mean")
#1.d
cor(age,blood)
#1.e
cor(age,blood,method="spearman")
#1.f
boxplot(blood~fracture)
#1.g
boxplot(blood~gender)
#1.h
plot(age,blood,pch=" ")
text(x=age,y=blood,labels=fracture)
#1.i
plot(age,blood,pch=" ")
text(x=age,y=blood,labels=gender)


#2
x=cbind(c(115,169,225),c(395,221,125))
rownames(x)=c("진보","중도","보수")
colnames(x)=c("이회창","노무현")
x
#2.a
table(x)
#2.b
prop.table(x)
#2.c
addmargins(x)
#2.d
barplot(x,legend.text=T,beside=TRUE)


#3
y=read.csv("C:/RR/yyy.csv", header=TRUE)
#3.a
attach(y)
cor(Husband,Wife)
#3.b
cor(Husband,Wife,method="spearman")
#3.c
boxplot(Husband,Wife)


#4
zz=rbind(c(40,30,35,20),c(20,30,45,40))
rownames(zz)=c("O","X")
colnames(zz)=c(1:4)
zz
#4.a
z1=prop.table(zz,margin=2)
barplot(z1,legend.text=T,beside=TRUE)
#4.b
z2=prop.table(zz)
barplot(z2,legend.text=T,beside=TRUE)