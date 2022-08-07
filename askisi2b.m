r0=1;
d=10;
s0=1;
a=5;
h=2;
b=12;
s1=10;

y1=linspace(-100,0,5000);
y2=linspace(0,5,100);
y3=linspace(5,7,100);
y4=linspace(7,12,100);
y5=linspace(12,50,100);

plin=2.*exp(y1/d).*r0*d-(s0+r0*d);
plin1=2.*exp(y1/d).*r0*d-(s1+r0*d);
plin2=2.*exp(y1/d).*r0*d-(2*s1+r0*d);

A= -(1/2e0).*(-r0*d-s0)+0.*y5;
B = -(1/2e0).*(-r0*d+s0)+0.*y4;
C= 0*y3;
D= -(1/2e0).*(-r0*d+s0)+0.*y2;
E= -(1/2e0).*(-plin)+0.*y1;

A1= -(1/2e0).*(-r0*d-s1)+0.*y5;
B1 = -(1/2e0).*(-r0*d+s1)+0.*y4;
C1=0*y3;
D1= -(1/2e0).*(-r0*d+s1)+0.*y2;
E1= -(1/2e0).*(-plin1)+0.*y1;

A2= -(1/2e0).*(-r0*d-2*s1)+0.*y5;
B2 = -(1/2e0).*(-r0*d+2*s1)+0.*y4;
C2=0*y3;
D2= -(1/2e0).*(-r0*d+2*s1)+0.*y2;
E2= -(1/2e0).*(-plin2)+0.*y1;

%func=-(1/2e0).*[(-r0*d-s0).*A+(-r0*d+s0).*B+(-r0*d+s0).*sign(y-a)-(-r0*d+s0).*D+(-plin).*E];
%func2=-(1/2e0).*[(-r0*d-s1).*sign(y-b)-(-r0*d-s1).*sign(y-(a+h))+(-r0*d+s1).*sign(y-(a+h))-(-r0*d+s1).*sign(y-(a))+(-r0*d+s1).*sign(y-a)-(-r0*d+s1).*sign(y)+(plin1).*sign(y)];

%func3=-(1/2e0).*[(-r0*d-2*s1).*sign(y2-b)-(-r0*d-2*s1).*sign(y2-(a+h))+(-r0*d+2*s1).*sign(y2-(a+h))-(-r0*d+2*s1).*sign(y2-(a))+(-r0*d+2*s1).*sign(y2-a)-(-r0*d+2*s1).*sign(y2)+(plin2).*sign(y2)];

figure(1);
plot(y5,A,y4,B,y3,C,y2,D,y1,E);
figure(2);
ylim([-100 5000])
plot(y5,A1,y4,B1,y3,C1,y2,D1,y1,E1);
figure(3);
plot(y5,A2,y4,B2,y3,C2,y2,D2,y1,E2);
