############################################
# case 1: return one object                #
############################################
root<-function(a,b,c){
d= b^2 - 4*a*c 

if(d>=0 ){x1<-(-b+sqrt(d))/(2*a)
          x2<-(-b-sqrt(d))/(2*a) 
          x=c(x1,x2) }
if(d<0 ) x<-"no real root"  
return(x)     
}

temp<-root(2,3,1)
result<-temp[1]* temp[2]

root(1,1,7)

############################################
## case 2: return two objects  with list() #
############################################
root2<-function(a,b,c){
d= b^2 - 4*a*c 

if(d>=0 ){x1<-(-b+sqrt(d))/(2*a)
          x2<-(-b-sqrt(d))/(2*a) 
          x=c(x1,x2) }
if(d<0 ) x1=x2<-"no real root"  
return(list(x1,x2))     
}

root2(2,3,1)

temp2<-root2(2,3,1)
result2<-temp2[[1]]*temp2[[2]] 
result2
