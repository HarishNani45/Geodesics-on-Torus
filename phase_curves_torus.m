%/
n=3;
%/
k=2;
phi = linspace(-k*pi,k*pi,500);
y = linspace(-9,9,500);
[X,Y] = meshgrid(phi,y);

F = ((Y.*Y)+((n+cos(X)).*(n+cos(X))))./((n+cos(X)).*(n+cos(X)).*(n+cos(X)).*(n+cos(X)));
v1 =[0.25,0.25];
v2 =[0.1,0.1];
v3 =[0.08,0.08];
v4 =[0.15,0.15];

figure
contour(X,Y,F,v1,'r')
xlabel('\phi')
ylabel('d\phi/d\theta')
title('Phase plot of geodesic curves')
colorbar
grid on

hold on
contour(X,Y,F,17)
contour(X,Y,F,v2,'b')
contour(X,Y,F,v3,'b')
contour(X,Y,F,v4,'b')