function punto_fijo
% Cálculo de la raiz cuadrada de 3
clc;clear all;
x0 = input("punto inicial conocido")
% Maximo error soportado
tol_error = input("error de tolerancio")

% Maximo de iteraciones
max_iter = input("numero maximo de iteraciones")

%Error para iniciar while
function_error = 1;

while (function_error>tol && iter<max_iter)
iter=iter+1;
x=example_function(x0);
function_error=abs((x0-x));
x0=x;
end
n='x0=';
str=[n,num2str(x0)];
disp(str)
n='iteraciones='; str=[n,num2str(iter)];
disp(str)
end