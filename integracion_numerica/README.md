# INtegracion numerica:
> Metodos usados para encontrar el valor de la integral de una funcion

> Este directorio contiene un archivo para cada metodo correspondiente con su respectivo codigo y ademas hay un archivo llamado `example_function` donde se declara la funcion para la cual se estan buscando raices, si se desea cambiar la funcion que se evalua, este archivo debe ser modificado


------------------------------------------------------------

### Integracion por Trapecios:

* Datos                      
    - Una funcion `f`
    - Una serie de valores de `x` y sus respectivos valores de `y`
    - El paso llamado `h`
    > El valor de `h` puede ser calculado como la distancia entr los valores `x`(siempre debe ser el mismo paso para todos los puntos)

* Casos
    - ### Trapecio Simple
        + Formula
            $$\displaystyle I_{ts} = \frac{h}{2}[y_{0}-y_{1}]$$
        + Orden de error `3`

    - ### Trapecio Compuesto
        + Formula
            $$\displaystyle I_{tc} = \frac{h}{2}[y_{0}+ 2 \sum_{i=1}^{n-1}y_{i}+y_{n}]$$
        + Orden de error `2`



------------------------------------------

### Integracion por Simpson:

* Datos                      
    - Una funcion `f`
    - Una serie de valores de `x` y sus respectivos valores de `y`
    - El paso llamado `h`
    > El valor de `h` puede ser calculado como la distancia entr los valores `x`(siempre debe ser el mismo paso para todos los puntos)

* Casos
    - ### Simpson Simple
        + Formula
            $$\displaystyle I_{ss} = \frac{h}{3}[y_{0}+4y_{1}+y_{2}]$$
        + Orden de error `5`

    - ### Simpson Compuesto
        + Formula
            $$\displaystyle I_{sc} = \frac{h}{2}[y_{0}+ 4 \sum_{impares}y_{i}+2 \sum_{pares}y_{i}+y_{n}]$$
        + Orden de error `4`



------------------------------------------





