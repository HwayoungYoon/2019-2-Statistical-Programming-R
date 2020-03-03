 #7장 연습문제
##########10. 이집단 t검정
##########11. 이집단 t검정


#1. 일집단 t검정
x1=c(159,280,101,121,224,222,379,179,250,170)
#1.a : H0:mu=225, H1:mu>225
#1.b
mean(x1)
median(x1)
var(x1)
sd(x1)
#1.c

#1.d
t.test(x1,mu=225,alt="greater")
##p-value=0.7301>alpha=0.05이므로 H0를 기각하지 못한다. 따라서 유의수준 5%에서 평균수리시간이 225시간을 넘는다고 할 수 없다.
#1.e
t.test(x1,mu=225,alt="greater",conf.level=0.90)
#1.f
y=log(x)
#1.g
mean(y)
var(y)

#3. 이집단 분산검정, t검정
x31=c(501,502,495,498,499,506)
x32=c(508,510,503,504,500,504,505)
#3.a
var.test(x31,x32)
#3.b
#H_{0}:mu1=mu2, H_{1}:mu1!=mu2
t.test(x31,x32)
#3.c
mean(x31); median(x31); var(x31); sd(x31)
mean(x32); median(x32); var(x32); sd(x32)

#4. 짝지어진 t검정
x41=c(55,60,70,75,66,78,80,83,88,73)
x42=c(54,55,64,73,61,70,76,65,78,72)
#4.a
x4=x41-x42
x4
mean(x41); var(x41); sd(x41)
mean(x42); var(x42); sd(x42)
mean(x4); var(x4); sd(x4)
#4.b
#H_{0}:mu1=mu2, H_{1}:mu1>mu2
t.test(x41,x42,paired=T,alt="greater")

#6 일집단 비율검정
#6.a
#H_{0}:p=0.5, H_{1}:p!=0.5
prop.test(x=120,n=300,p=0.5,alt="two.sided")
#6.b
#H_{0}:p=0.5, H_{1}:p<0.5
prop.test(x=120,n=300,p=0.5,alt="less")

#7. 이집단 비율검정
x71=c(3500,2800)
x72=c(500,200)
#H_{0}:p_{1}=p_{2}, H_{1}:p_{1}!=p_{2}
prop.test(x72,x71,alt="two.sided")

#12
x121=c(2.1,5.0,1.4,4.6,3.0,4.3,3.2)
x122=c(1.9,0.5,2.8,3.1,2.7,1.8)
var.test(x121,x122)
#H_{0}:mu1=mu2, H_{1}:mu1!=mu2
t.test(x121,x122)

#13. 짝지어진 t검정
x131=c(90,88,78,65,78,60,89,73)
x132=c(80,78,75,69,73,62,79,70)
#H_{0}:mu1=mu2, H_{1}:mu1!=mu2
t.test(x131,x132,paired=T,alt="two.sided")