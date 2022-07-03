function biseccion
clc;clear all;
% Extremo a del intervalo
a = input("extremo del intervalo izquierdo")

% Extremo b del intervalo
b = input("extremo del intervalo derecho")

% Maximo error soportado
tol_error = input("error de tolerancio")

% Maximo de iteraciones
max_iter = input("numero maximo de iteraciones")

% Valores en los extremos
f_a = example_function(a);
f_b = example_function(b);

%Error para iniciar while
function_error = 9999999999;

%Iteracion inicial
iter = 0;

while (f_a * f_b) < 0 && (function_error > tol_error) && (iter < max_iter)
    iter += 1;
    rk = (a + b)/2;
    f_rk = example_function(rk);
    function_error = abs(f_rk);
    % Display results
    D(iter, :) = [iter a b f_a f_b rk f_rk function_error];
    if f_a * f_rk < 0
        b = rk;

    elseif f_b * f_rk
        a = rk;
    else
        break
    endif
    f_a = example_function(a);
    f_b = example_function(b);
    
endwhile
    
disp("     iteracion     a     b     f(a)     f(b)     rk     f(rk)     Error     ")
disp(D)
endfunction