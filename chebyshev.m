%%%Este programa hace uso de la funcion de proyeccion en un 1-simplex
%%Notese que tiene un gran parecido con el codigo de la proyeccion en un 1-simplex
%%%Se tomo de referencia
function[x,r]=chebyshev(A)
d=size(A);
m=d(2);
V=2.*max(eig(A'*A)); %maximizamos valores propios de A(Es la constante de  Lipschitz del gradiente)                          
b=sum(A.^2);                                               
lambda1=1/m*ones(m,1);                %lambada inicial y anterior                         
lambda0=zeros(m,1);                                            
while(norm(lambda1-lambda0)>1*10^(-9))    %se comienza a iterar 
    lambda0=lambda1;                                            
    lambda1=Func(lambda1+1/V*(-2*A'*A*lambda1+b));    %se hace uso del programa de proyeccion en 1-simplex para encontrar los lambdas admisibles
end
lambda1=lambda1(:,3);                                             
x=A*lambda1;         %pues x optimal es A*lambda                                        
r=0;
for i=1:m
    r=max(r,norm(x-A(:,i)));   %r debe ser positivo y su funcion es ||x-a||           
end                                                         
end
