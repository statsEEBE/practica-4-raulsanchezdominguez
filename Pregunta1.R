#pregunta 1

#P(X=10) probabilidad de recibir 10 llamadas en una hora
dpois(10,25)
x<- 0:50
fx<- dpois(x,25)
plot(x,fx)
lines(x,fx,type="h")

#probabilidad de 30 llamadas
dpois(30,25)

#probailidad de recibir como mucho 30 llamadas (P(X<=30)=F(30))
ppois(30,25)
Fx<-ppois(x,25)
plot(x,Fx,type="s")

#probailidad de recibir como minimo 30 llamadas (P(X>=30)=F(30))
1-ppois(29,25)

#primer cuartil
qpois(0.25,25)

#probabilidad de que pase 0.033 horas entre dos llamadas
fx<-dexp(x,25)
x<- seq(0,0.2,0.001)
plot(x,fx, type="l")
t<-0.033
dexp(t,25)
#deberia de ser 0 P(X=0.033)=0

#probailidad de que pase al menos 0.052 horas entre dos llamadas
#P(T>0.052) = 1-P(T<0.052)= 1-F(0.052)
1-pexp(0.052,25)
Fx<- pexp(x,25)
plot(x,Fx,type="l")

#tercer cuartil
#qexp(0.025) = F^-1(0.025)
qexp(0.75,25)

#simular un tiempo de espera entre dos llamadas
set.seed(123)
simul<- rexp(500000,25)
hist(simul)
mean(simul)
