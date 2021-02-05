clear all
close all
A=[-1 2 3 5 1;3 6 0 2 -2];     %La primera coordenada corresponde a la coordenada de x y la segunda de y                  
[x r]=chebyshev(A)                  
hold on
plot(A(1,:),A(2,:),'r*');
plot(x(1),x(2),'k*')
t=0:0.001:2*pi;
x1=x(1)+r*cos(t);    %se grafica una circunferencia usando la parametrizacion
y=x(2)+r*sin(t);
plot(x1,y)
title('Comprobacion')
xlabel('Eje x')
ylabel('Eje y')
hold off;