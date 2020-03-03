#프린트

x1=c(10,5,7,19,11,18)
x2=c(2,3,3,6,7,9)
y=c(15,9,3,25,7,13)

lm1=lm(y~x1)
summary(lm1)

yhat=lm1$fitted.values
ehat=lm1$residuals
plot(yhat,ehat)
abline(lm1)
par(mfrow=c(2,2))
plot(lm1)

lm2=lm(y~x1+x2)
summary(lm2)
lm3=lm(y~0+x1+x2)
summary(lm3)

#연습문제
#8
data(cars)
cars
attach(cars)
lmcars1=lm(dist~speed)
summary(lmcars1)
lmcars2=lm(dist~speed+I(speed^2))
summary(lmcars2)
lmcars3=lm(dist~0+speed)
summary(lmcars3)

#7
xy=read.csv("C:/RR/ex9.7.csv",header=T)
attach(xy)

library(lattice)
splom(~all)

plot(X,Y)

lmxy=lm(Y~X)
summary(lmxy)

lmxy$fitted.values
lmxy$residuals

par(mfrow=c(2,2))
plot(lmxy)