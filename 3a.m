[x,y]=meshgrind(0:0.2:2,0:0.2:2);

rt=sqrt(x^2,y^2);
phi=arctan(y/x);

J=k0/a*exp(-rt/a);

quiver(x,y,0,J0);