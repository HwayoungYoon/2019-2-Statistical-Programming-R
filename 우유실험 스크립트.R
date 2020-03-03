#우유실험 과제
milk=read.csv("C:/RR/mm.csv", header=T)
attach(milk)
milk
#분할표
tm=table(Milk,Grade)
tm
#막대그래프
barplot(tm,beside=T)
#파이그림
par(mfrow=c(1,3))
pie(tm[,1],main="grade2")
pie(tm[,2],main="grade3")
pie(tm[,3],main="grade4")

#학년이 우유선택에 영향을 주는지에 대한 카이제곱검정
#H_{0}``:``
#H_{1}``:``
chisq.test(Milk,Grade)