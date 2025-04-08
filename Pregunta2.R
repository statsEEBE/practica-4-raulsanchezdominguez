#pregunta 2
#a
lambda=1/10000
1-pexp(13000,lambda)
x<-0:50
Fx<- pexp(x,lambda)
plot(x,Fx)

#b
qexp(0.8,lambda)

#c
set.seed(85)
simul<- rexp(100,lambda)
hist(simul)
mean(simul)

#d
median(simul)

#e
var(simul)