# Aproximacion lineal por minimos cuadrados:
> Metodos usados para aproximar funciones de forma lineal

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado

------------------------------------------------------------

### Minimos cuadrados:
* Datos                      
    - Una serie de puntos y sus imagenes
    - Un conjunto de transformaciones que conforman una base $B$ de $\theta$


* Formula de minimos cuadrados
    - $ \theta^{T} . \theta . \overline{a} = \theta^{T} . \overline{y}$

* Procedimiento
    - Armar la matriz $\theta$ aplicando las transformaciones sobre los puntos dato de x
    - Luego trasponerla para obtener $\theta^{T}$
    - Resolver usando la `formula de minimos cuadrados` para los valores del vector $\overline{a}$
    - Finalmente nos queda una ecuacion conformada por la suma de las componentes de  $a_{k}$ multiplicadas por la componente $b_{k}$ de la base de $\theta$




------------------------------------------

