function[xopt,lambda]=Func(vec)
f=@(lambda)sum(max(vec-lambda,0))-1;
n=length(vec);
lb=min(vec-2/n);
ub=max(vec);
eps=1e-10;   %definimos cualquier epsilon
lambda=biseccion1(f,lb,ub,eps); %usamos el metodo de biseccion para encontrar el xoptimal
xopt=max(vec-lambda,0); %con esto tomamos en cuenta que x no puede ser negativo