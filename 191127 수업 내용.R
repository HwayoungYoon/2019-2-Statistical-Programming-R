
#프린트
root=function(a,b,c){
	if(b^2-4*a*c>=0){
		x1=(-b+sqrt(b^2-4*a*c))/(2*a)
		x2=(-b-sqrt(b^2-4*a*c))/(2*a)
		x=c(x1,x2)
	}
	if(b^2-4*a*c<0){ x=c("no real root")
	}
return(list(x))
}
a=2 ; b=3 ; c=1
root(a,b,c)
temp=root(a,b,c)
new=temp[[1]][1]*temp[[1]][2]
new

#연습문제1
my_t_test=function(x,mu0,side,alpha){
	n=length(x)
	dfn=n-1
	muhat=mean(x)
	shat=sd(x)
	t=(muhat-mu0)/(shat/sqrt(n))
  if(side==1){ p_value=2*(1-pt(abs(t),df=dfn)) }
  if(side==2){ p_value=1-pt(t,df=dfn) }
  if(side==3){ p_value=pt(t,df=dfn) }
 cl_upper=muhat+qt(1-alpha/2,df=n-1)*(shat/sqrt(n))
 cl_lower=muhat-qt(1-alpha/2,df=n-1)*(shat/sqrt(n))
return(list(t,p_value,cl_upper,cl_lower))
}
y=c(1,2.3,3.5,4.3,2.1,2.2,3.1)
a=my_t_test(y,2,1,0.05)
cat("  t stat  pvalue  ci_lower  ci_upper ","\n",
a[[1]],a[[2]],a[[3]],a[[4]],"\n")

#연습문제2
x2=c(159,280,101,121,224,222,379,179,250,170)
a2=my_t_test(x2,225,1,0.05)
cat("  t stat  pvalue  ci_lower  ci_upper ","\n",
a2[[1]],a2[[2]],a2[[3]],a2[[4]],"\n")
a21=my_t_test(x2,225,1,0.1)
cat("  t stat  pvalue  ci_lower  ci_upper ","\n",
a21[[1]],a21[[2]],a21[[3]],a21[[4]],"\n")

#연습문제3
my.cor=function(x,y){
	xbar=mean(x)
	ybar=mean(y)
 r=sum((x-xbar)*(y-ybar))/(sqrt(sum((x-xbar)^2))*sqrt(sum((y-ybar)^2)))
return(r)
}
ax=c(1,43,15,22,64,37,96,32,5,24,8)
ay=c(23,75,43,67,45,97,43,12,54,94,2)
cor(ax,ay)
my.cor(ax,ay)

#연습문제6
#6.a
my.moment=function(x){
 n=length(x)
	mean=mean(x)
	var=sum((x-mean)^2)/(n-1))
	skew=(sum(((x-mean)^3)/n))/(sum((x-mean)^2)/n)^(3/2)
	kurt=(sum((x-mean)^4)/n))/(sum((x-mean)^2)/n)^2-3
return(list(mean,var,skew,kurt))
}
#6.b
my.moment.for=function(x){
 n=length(x)
 xx=rep(0,n)
	for(i in 1:n){
		mean=(xx[i]+x)/n
		var=(xx[i]-mean)^2)/(n-1)
		skew=(((xx[i]-mean)^3)/n)/(((xx[i]-mean)^2)/n^(3/2))
		kurt=

	}
}
#6.c
my.moment(ax)
my.moment.for(ax)