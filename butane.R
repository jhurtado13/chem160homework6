V=3.0
n=1.0
Vbar=V/n
T=370.0
a=16.44
B=0.07245
R=0.081345
p=R*T/(Vbar-B)
y=Vbar*(Vbar+B)
c=B*(Vbar-B)
thing=a/(y+c)
P=p-thing
cat("Peng-Robinson equation of state=",P,"\n")

