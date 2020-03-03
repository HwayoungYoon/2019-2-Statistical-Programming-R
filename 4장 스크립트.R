#1.a
rand=rnorm(20,3,5)
rand
#1.b
mean(rand)
sd(rand)
#1.c
hist(rand)

#2.a
rand_p=rpois(10,3)
rand_p
#2.b
mean(rand_p)
sd(rand_p)
#2.c
hist(rand_p)

  

#1,2번 제외

 

#3.a
qnorm(0.4,10,3,lower.tail=F)
#3.b
pnorm(12,10,3,lower.tail=F)
#3.c
pnorm(11.5,10,3)-pnorm(-11.5,10,3)

#4.a
#P(Z<=-b)=(1-0.9)/2=0.05
#P(Z<=b)=1-0.05=0.95
qnorm(0.95,0,1)
#4.b
#P(Z<=-c)=(1-0.95)/2=0.025
#P(Z<=c)=1-0.025=0.975
qnorm(0.975,0,1)

#5
#B(5,1/6)
sum(dbinom(3:5,5,1/6))

#6
pbinom(5020,10000,0.5)-pbinom(4979,10000,0.5)

#7.a
1-pt(2.5,10)
#7.b
pt(-2.5,10)
#7.c
2*pt(-1.8,10)
#7.d
1-pt(2.5,10)
#7.e
pt(-2.5,10)
#7.f
pt(1.5,10)-pt(-1,10)

#8.a
1-ppois(2,3)
#8.b
ppois(3,3)
#8.c
ppois(7,3)-ppois(1,3)
#8.d
ppois(4,3)

#9.a
x=c(1.5, 2.2, 0.9, 1.3, 2.0, 1.2, 2.5, 2.7, 1.8, 2.3)
hist(x)
#정규분포이다.
#9.b
qqnorm(x)
qqline(x)
#찍힌 점들이 직선에서 많이 벗어나지 않으므로 데이터가 정규성에서 벗어나지 않는다.
#9.c
shapiro.test(x)
#p-value=0.8336>0.05이므로 유의수준 5%에서 귀무가설을 기각하지 못한다. 따라서 데이터 x는 정규분포를 따른다고 할 수 있다.
#9.d
mean(x)
var(x)
sd(x)

#10.a
x=c(182, 167, 166, 159, 178, 176, 169, 163, 166, 181,
171, 182, 172, 186, 171, 166, 170, 168, 154, 173,
174, 166, 160, 162, 161, 179, 147, 162, 170, 166,
165, 178, 171, 169, 183, 149, 168, 177, 170, 163)
mean(x)
var(x)
sd(x)
range(x)
sum(x)
max(x)
min(x)
median(x)
rank(x)
length(x)
#10.b
hist(x,probability=T)
y=seq(140,190,0.01)
lines(y,dnorm(y,mean(x),sd(x)))
#정규분포이다.
#10.c
qqnorm(x)
qqline(x)
#찍힌 점들이 직선에서 많이 벗어나지 않으므로 데이터가 정규성에서 벗어나지 않는다. 따라서 주어진 데이터는 정규분포를 따른다고 할 수 있다.

#11.a
uniform_1=rnorm(30,0,2)
#11.b
for(i in 1:50) {
 assign(paste0('uniform.',i),rnorm(30,0,2))
}
m.uniform <- c()
for(i in 1:50) {
m.uniform[i] <- mean(get(paste0("uniform.",i)))
}
m.uniform
hist(m.uniform)
#11.c
qqnorm(m.uniform)
qqline(m.uniform)
#11.d
y=rpois(30,3)
y
#11.e
for(i in 1:50) {
 assign(paste0('y.',i),rpois(30,3))
}
m.y <- c()
for(i in 1:50) {
m.y[i] <- mean(get(paste0("y.",i)))
}
m.y
hist(m.y)
#11.f
qqnorm(m.y)
qqline(m.y)
#찍힌 점들이 직선에서 많이 벗어나지 않으므로 데이터가 정규성에서 벗어나지 않는다고 볼 수 있다.