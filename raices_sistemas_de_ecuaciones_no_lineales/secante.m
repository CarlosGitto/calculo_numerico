function secante
clc;clear all;
% Extremo a del intervalo
rk_0 = input("raiz conocida r")

% Extremo b del intervalo
rk_1 = input("raiz conocida r+1")

% Maximo error soportado
tol_error = input("error de tolerancio")

% Maximo de iteraciones
max_iter = input("numero maximo de iteraciones")

% Valores en los extremos
f_rk0 = example_function(rk_0);
f_rk1 = example_function(rk_1);

%Valores iniciales Matriz resultado
m = (f_rk1 - f_rk0)/(rk_1-rk_0)
D(1 , :) = [1 rk_0 f_rk0 0 0]
D(2 , :) = [2 rk_1 f_rk1 m abs(f_rk1)]

%Error para iniciar while
function_error = 1;

%Iteracion inicial
iter = 0;

while ((function_error > tol_error) && (iter < max_iter))
    iter += 1;

    %Pendiente
    m = (f_rk1 - f_rk0)/(rk_1-rk_0);

    %Formula de recurrencia
    rk_0 = rk_1
    rk_1 = rk_1 - (f_rk1/m)


    function_error = abs(f_rk1);

    % Matriz que guarda resultados resultados
    D(iter+2, :) = [iter rk_1 f_rk1 m function_error];

    %Actualizacion de Variables
    f_rk0 = example_function(rk_0);
    f_rk1 = example_function(rk_1);
endwhile
disp("     iteracion     rk     f(rk)     Error     ")
disp(D)
endfunction