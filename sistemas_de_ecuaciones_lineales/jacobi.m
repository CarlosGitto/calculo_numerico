% SEL JACOBI despejando con uso de while
clear all;clc;
A=[-3 1 -2;4 -5 0;1 -3 6]; b=[-2;5;6];
x=[1;1;1];
B=[x(1) x(2) x(3)];
imax=5; e=100; iter=0;
while e>1e-5 && iter<imax
iter=iter+1;
x1=(1/3)*x(2)-(2/3)*x(3)+(2/3); x2=(4/5)*x(1)-1;
x3=-(1/6)*x(1)+(3/6)*x(2)+1;
B(iter+1,:)=[x1 x2 x3];
x(1)=x1;
x(2)=x2;
x(3)=x3;
e=max(abs(B(iter+1,:)-B(iter,:)));
C(iter,:)=[iter B(iter+1,:) e];
end
disp('iter
solución
error')
D=[0 B(1,:) 0; C];
disp(D)