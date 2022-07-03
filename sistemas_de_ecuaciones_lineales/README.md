# Sistemas de ecuaciones lineales:
> Metodos usados para encontrar raices de ecuaciones lineales

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado

### Formula de un sistema de ecuaciones lineales
 Considerando  $A . x = b$, con la condición de que $a_{ii} \neq 0,i=1,...,n$.
+ Donde:
    - A es una matriz de coeficientes
    - x un vector columna de incognitas
    - b un vector columna resultante

------------------------------------------------------------

### Jacobi:
* Datos                      
    - Matriz de coeficientes `A`
    - Vector semilla $x_{0}$
    - Vector columna resultante `b`


* Procedimiento
    - Despejar para cada ecuación del sistema una variable diferente del vector de incognitas
    - Reemplazar las incognitas no despejadas con las nuevas aproximaciones(componentes del vector semilla)
    - Obtener un nuevo vector semilla $x_{k}$
    - Repetir el procesos hasta llegar al error o numero de iteraciones que se desea

* Formula de recurrencia
    $$x_{i}^{\left(k+1\right)}=\frac {1}{a_{ii}}\left(b_{i}-\sum \limits_{j\neq i}{a_{ij}x_{j}^{\left(k\right)}}\right),i=1,2,3,...$$
* Calculo del error
    - Es la mayor diferencia que hay entre dos componentes de dos vectores semilla continuos
    - $\varepsilon = max(abs(x_{k+1} - x_{k}))$

------------------------------------------

### Gauss - seidel:
* Datos                      
    - Matriz de coeficientes `A`
    - Vector semilla $x_{0}$
    - Vector columna resultante `b`

* Procedimiento
    - Despejar para cada ecuación del sistema una variable diferente del vector de incognitas
    - A medida que se van calculando nuevas aproximaciones(nuevas componentes del vector semilla), se van utilizando para calcular las componentes restantes
    - Obtener un nuevo vector semilla $x_{k}$
    - Repetir el procesos hasta llegar al error o numero de iteraciones que se desea

* Formula de recurrencia
    $$ x_{i}^{(k+1)}=\frac{-\sum _{1\leq j\leq i-1}a_{ij}x_{j}^{(k+1)}-\sum _{i+1\leq j\leq n}a_{ij}x_{j}^{(k)}+b_{i}}{a_{ii}},i=1,...,n\$$
* Calculo del error
    - Es la mayor diferencia que hay entre dos componentes de dos vectores semilla continuos
    - $\varepsilon = max(abs(x_{k+1} - x_{k}))$

---------------------------------------------------------
