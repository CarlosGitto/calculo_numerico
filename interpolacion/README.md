# Interpolacion:
> Metodos usados para encontrar los polimomios que dan como resultado una funcion a partir de una serie de datos

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado


------------------------------------------------------------

### Metodo directo:
* Datos                      
    - Una base $B$ conformada por multiples transformaciones
    - Las transformaciones de la base son del modo:
        $$\displaystyle [1, x, x^{1}, x^{2},...,x^{n}]$$
    - Una serie de puntos y sus imagenes

* Formula del metodo directo
    $$\theta . \overline{a} = \overline{y}$$

* Procedimiento
    - Armar la matriz $\theta$ aplicando las transformaciones sobre los puntos dato de x
    - Resolver usando la `formula del metodo directo` para los valores del vector $\overline{a}$
    - Finalmente nos queda una ecuacion conformada por la suma de las componentes de  $a_{k}$ multiplicadas por la componente $b_{k}$ de la base de $\theta$



* Polinomio resultante:
 
    $$P(x) = \sum a_{k}b_{k}$$   
    - Siendo $b_{k}$ una componente perteneciente a la Base de $\theta$


------------------------------------------

### Metodo de Lagrange:
* Datos                      
    - Una serie de puntos y sus imagenes

* Formula de los polinomios de Lagrange
    $$l_{i}(x) = \prod_{k = 0, k \neq i}^{n} \frac{(x - x_{k})}{x_{i} - x_{k}}$$
    
    >Al resultado de cada polinomio no se le debe aplicar distributiva ya que dejaria de ser un polinomio de lagrange
* Procedimiento
    - Para cada punto dato armar un `polinomio de lagrange`
    - Luego se debe multiplicar cada polinomio formado por la imagen asociada al punto respecto al cual se armo
    - Finalmente la suma de todos estos terminos nos da el `Polinomio resultante`

* Polinomio resultante:
 
    $$P(x) = \sum_{k = 0}^{n} [y_{k}l_{k}(x)]$$   
    - Siendo $l_{k}$ un polinomio de Lagrange en funcion de `x`

------------------------------------------

### Metodo de Newton:
* Datos                      
    - Una serie de puntos y sus imagenes
* Formula de los polinomios de Newton
    - De forma general se tiene que:
        $$\theta_{n}(x) = n_{n}(x) = 1(x-x_{0})(x-x_{2})(x-x_{3})...(x-x_{n-1})$$
    
    >Al resultado de cada polinomio no se le debe aplicar distributiva ya que dejaria de ser un polinomio Newton
* Procedimiento
    - Armar la matriz $\theta$ que tendra como fila los valores calculados a partir de los `polinomios de Newton` evaluados en x
        >Aclaracion: `x` ira tomando diferentes valores para cada `fila`, mientras que para cada `columna` se usara una `formula de polinomio de Newton diferente`
    - Haciendo uso de la formula $\theta . \overline{a} = \overline{y}$ buscamos los valores de $\overline{a}$
    - Para esto tenemos que $\overline{a} = \theta^{-1} . \overline{y}$
    - Luego nos queda el `Polinomio resultante` como la suma de las componentes $a_{k}$ multiplicadas por el `polinomio de Newton` correspondiente

* Polinomio resultante:
 
    $$P(x) = \sum_{k = 0}^{n} [{a}_{k} . n_{k}(x)]$$   
    - Siendo $n_{k}$ un polinomio de Newton en funcion de `x`

---------------------------------------------------------


