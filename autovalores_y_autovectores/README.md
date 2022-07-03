# Sistemas de ecuaciones lineales:
> Metodos usados para encontrar los autovectores y autovalores de una matriz

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado


------------------------------------------------------------

### Metodo de la potencia :
- ### Sin escalamiento:

    * Ecuación
        + $y_{k+1} = A . y_{k}$
- ### Con escalamiento:
    * Ecuaciónes
        + $y_{k+1} = A . x_{k}$

        + $\displaystyle x_{k} = \frac{y_{k}}{||y_{k}||}$

        + $\displaystyle \alpha_{k} = \frac{y_{k+1}}{x_{k}}$

        + $\lambda = \alpha$

-------------------------------------------------------------

### Metodo de la potencia inversa :
* Ecuaciónes
    + $y_{k+1} = A^{-1} . x_{k}$
    
    + $\displaystyle x_{k} = \frac{y_{k}}{||y_{k}||}$

    + $\displaystyle \alpha_{k} = \frac{y_{k+1}}{x_{k}}$

    + $\displaystyle \lambda = \frac{1}{\alpha}$


---------------------------------------------------------
