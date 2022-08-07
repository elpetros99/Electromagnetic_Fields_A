[x,y]=meshgrid(-5:0.5:5);
miden = zeros(11:11);
k0=1;

a=10;

rt=sqrt(x^2+y^2);
phi=atan2(y,x);

Jx=k0/a*exp(-rt/a)*(-sin(phi));
Jy=k0/a*exp(-rt/a)*(cos(phi));
%K=k0*exp(abs(x)/a);

%[DX,DY] = (J,.5,.5);

quiver(x,y,Jx,Jy);
%quiver(x,y,K,miden);